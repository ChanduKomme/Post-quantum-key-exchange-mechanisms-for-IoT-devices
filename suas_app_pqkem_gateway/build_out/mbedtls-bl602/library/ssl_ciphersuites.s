	.file	"ssl_ciphersuites.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_ciphersuites.c"
	.section	.text.mbedtls_cipher_info_get_key_bitlen,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_key_bitlen, @function
mbedtls_cipher_info_get_key_bitlen:
.LFB21:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.loc 1 486 1
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
	.loc 1 487 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 488 16
	li	a5,0
	j	.L3
.L2:
	.loc 1 490 30
	lw	a5,-20(s0)
	lw	a5,4(a5)
	srli	a5,a5,8
	andi	a5,a5,15
	andi	a5,a5,0xff
	.loc 1 490 44
	slli	a5,a5,6
.L3:
	.loc 1 492 1
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
	.size	mbedtls_cipher_info_get_key_bitlen, .-mbedtls_cipher_info_get_key_bitlen
	.section	.rodata.ciphersuite_preference,"a"
	.align	2
	.type	ciphersuite_preference, @object
	.size	ciphersuite_preference, 744
ciphersuite_preference:
	.word	52392
	.word	52393
	.word	52394
	.word	49196
	.word	49200
	.word	159
	.word	49325
	.word	49311
	.word	49188
	.word	49192
	.word	107
	.word	49162
	.word	49172
	.word	57
	.word	49327
	.word	49315
	.word	49287
	.word	49291
	.word	49277
	.word	49267
	.word	49271
	.word	196
	.word	136
	.word	49245
	.word	49249
	.word	49235
	.word	49225
	.word	49229
	.word	49221
	.word	49195
	.word	49199
	.word	158
	.word	49324
	.word	49310
	.word	49187
	.word	49191
	.word	103
	.word	49161
	.word	49171
	.word	51
	.word	49326
	.word	49314
	.word	49286
	.word	49290
	.word	49276
	.word	49266
	.word	49270
	.word	190
	.word	69
	.word	49244
	.word	49248
	.word	49234
	.word	49224
	.word	49228
	.word	49220
	.word	52396
	.word	52397
	.word	171
	.word	49319
	.word	49208
	.word	179
	.word	49206
	.word	145
	.word	49297
	.word	49307
	.word	49303
	.word	49323
	.word	49261
	.word	49265
	.word	49255
	.word	170
	.word	49318
	.word	49207
	.word	178
	.word	49205
	.word	144
	.word	49296
	.word	49302
	.word	49306
	.word	49322
	.word	49260
	.word	49264
	.word	49254
	.word	49407
	.word	157
	.word	49309
	.word	61
	.word	53
	.word	49202
	.word	49194
	.word	49167
	.word	49198
	.word	49190
	.word	49157
	.word	49313
	.word	49275
	.word	192
	.word	132
	.word	49293
	.word	49273
	.word	49289
	.word	49269
	.word	49247
	.word	49251
	.word	49233
	.word	49227
	.word	49231
	.word	49213
	.word	156
	.word	49308
	.word	60
	.word	47
	.word	49201
	.word	49193
	.word	49166
	.word	49197
	.word	49189
	.word	49156
	.word	49312
	.word	49274
	.word	186
	.word	65
	.word	49292
	.word	49272
	.word	49288
	.word	49268
	.word	49246
	.word	49250
	.word	49232
	.word	49226
	.word	49230
	.word	49212
	.word	52398
	.word	173
	.word	183
	.word	149
	.word	49299
	.word	49305
	.word	49263
	.word	49257
	.word	172
	.word	182
	.word	148
	.word	49298
	.word	49304
	.word	49262
	.word	49256
	.word	52395
	.word	169
	.word	49317
	.word	175
	.word	141
	.word	49295
	.word	49301
	.word	49321
	.word	49259
	.word	49253
	.word	168
	.word	49316
	.word	174
	.word	140
	.word	49294
	.word	49300
	.word	49320
	.word	49258
	.word	49252
	.word	49158
	.word	49168
	.word	49211
	.word	49210
	.word	49209
	.word	181
	.word	180
	.word	45
	.word	59
	.word	2
	.word	1
	.word	49163
	.word	49153
	.word	185
	.word	184
	.word	46
	.word	177
	.word	176
	.word	44
	.word	0
	.section	.rodata
	.align	2
.LC0:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA"
	.align	2
.LC1:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA"
	.align	2
.LC2:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256"
	.align	2
.LC3:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256"
	.align	2
.LC4:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384"
	.align	2
.LC5:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384"
	.align	2
.LC6:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CCM"
	.align	2
.LC7:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CCM-8"
	.align	2
.LC8:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CCM"
	.align	2
.LC9:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CCM-8"
	.align	2
.LC10:
	.string	"TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA"
	.align	2
.LC11:
	.string	"TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA"
	.align	2
.LC12:
	.string	"TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA256"
	.align	2
.LC13:
	.string	"TLS-ECDH-ECDSA-WITH-AES-128-GCM-SHA256"
	.align	2
.LC14:
	.string	"TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA384"
	.align	2
.LC15:
	.string	"TLS-ECDH-ECDSA-WITH-AES-256-GCM-SHA384"
	.align	2
.LC16:
	.string	"TLS-PSK-WITH-AES-128-GCM-SHA256"
	.align	2
.LC17:
	.string	"TLS-PSK-WITH-AES-256-GCM-SHA384"
	.align	2
.LC18:
	.string	"TLS-PSK-WITH-AES-128-CBC-SHA256"
	.align	2
.LC19:
	.string	"TLS-PSK-WITH-AES-256-CBC-SHA384"
	.align	2
.LC20:
	.string	"TLS-PSK-WITH-AES-128-CBC-SHA"
	.align	2
.LC21:
	.string	"TLS-PSK-WITH-AES-256-CBC-SHA"
	.align	2
.LC22:
	.string	"TLS-PSK-WITH-AES-256-CCM"
	.align	2
.LC23:
	.string	"TLS-PSK-WITH-AES-256-CCM-8"
	.align	2
.LC24:
	.string	"TLS-PSK-WITH-AES-128-CCM"
	.align	2
.LC25:
	.string	"TLS-PSK-WITH-AES-128-CCM-8"
	.align	2
.LC26:
	.string	"TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA256"
	.align	2
.LC27:
	.string	"TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA384"
	.align	2
.LC28:
	.string	"TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA"
	.align	2
.LC29:
	.string	"TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA"
	.align	2
.LC30:
	.string	""
	.section	.rodata.ciphersuite_definitions,"a"
	.align	2
	.type	ciphersuite_definitions, @object
	.size	ciphersuite_definitions, 496
ciphersuite_definitions:
	.word	49161
	.word	.LC0
	.byte	5
	.byte	5
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49162
	.word	.LC1
	.byte	7
	.byte	5
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49187
	.word	.LC2
	.byte	5
	.byte	9
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49195
	.word	.LC3
	.byte	14
	.byte	9
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49188
	.word	.LC4
	.byte	7
	.byte	10
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49196
	.word	.LC5
	.byte	16
	.byte	10
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49325
	.word	.LC6
	.byte	40
	.byte	9
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49327
	.word	.LC7
	.byte	40
	.byte	9
	.byte	4
	.byte	2
	.half	771
	.half	771
	.word	49324
	.word	.LC8
	.byte	38
	.byte	9
	.byte	4
	.byte	0
	.half	771
	.half	771
	.word	49326
	.word	.LC9
	.byte	38
	.byte	9
	.byte	4
	.byte	2
	.half	771
	.half	771
	.word	49156
	.word	.LC10
	.byte	5
	.byte	5
	.byte	10
	.byte	0
	.half	771
	.half	771
	.word	49157
	.word	.LC11
	.byte	7
	.byte	5
	.byte	10
	.byte	0
	.half	771
	.half	771
	.word	49189
	.word	.LC12
	.byte	5
	.byte	9
	.byte	10
	.byte	0
	.half	771
	.half	771
	.word	49197
	.word	.LC13
	.byte	14
	.byte	9
	.byte	10
	.byte	0
	.half	771
	.half	771
	.word	49190
	.word	.LC14
	.byte	7
	.byte	10
	.byte	10
	.byte	0
	.half	771
	.half	771
	.word	49198
	.word	.LC15
	.byte	16
	.byte	10
	.byte	10
	.byte	0
	.half	771
	.half	771
	.word	168
	.word	.LC16
	.byte	14
	.byte	9
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	169
	.word	.LC17
	.byte	16
	.byte	10
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	174
	.word	.LC18
	.byte	5
	.byte	9
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	175
	.word	.LC19
	.byte	7
	.byte	10
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	140
	.word	.LC20
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	141
	.word	.LC21
	.byte	7
	.byte	5
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	49317
	.word	.LC22
	.byte	40
	.byte	9
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	49321
	.word	.LC23
	.byte	40
	.byte	9
	.byte	5
	.byte	2
	.half	771
	.half	771
	.word	49316
	.word	.LC24
	.byte	38
	.byte	9
	.byte	5
	.byte	0
	.half	771
	.half	771
	.word	49320
	.word	.LC25
	.byte	38
	.byte	9
	.byte	5
	.byte	2
	.half	771
	.half	771
	.word	49207
	.word	.LC26
	.byte	5
	.byte	9
	.byte	8
	.byte	0
	.half	771
	.half	771
	.word	49208
	.word	.LC27
	.byte	7
	.byte	10
	.byte	8
	.byte	0
	.half	771
	.half	771
	.word	49205
	.word	.LC28
	.byte	5
	.byte	5
	.byte	8
	.byte	0
	.half	771
	.half	771
	.word	49206
	.word	.LC29
	.byte	7
	.byte	5
	.byte	8
	.byte	0
	.half	771
	.half	771
	.word	0
	.word	.LC30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.half	0
	.half	0
	.section	.bss.supported_ciphersuites,"aw",@nobits
	.align	2
	.type	supported_ciphersuites, @object
	.size	supported_ciphersuites, 124
supported_ciphersuites:
	.zero	124
	.section	.sbss.supported_init,"aw",@nobits
	.align	2
	.type	supported_init, @object
	.size	supported_init, 4
supported_init:
	.zero	4
	.section	.text.ciphersuite_is_removed,"ax",@progbits
	.align	1
	.type	ciphersuite_is_removed, @function
ciphersuite_is_removed:
.LFB142:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_ciphersuites.c"
	.loc 2 1810 1
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
	.loc 2 1813 12
	li	a5,0
	.loc 2 1814 1
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
	.size	ciphersuite_is_removed, .-ciphersuite_is_removed
	.section	.text.mbedtls_ssl_list_ciphersuites,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_list_ciphersuites
	.type	mbedtls_ssl_list_ciphersuites, @function
mbedtls_ssl_list_ciphersuites:
.LFB143:
	.loc 2 1817 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 1822 24
	lui	a5,%hi(supported_init)
	lw	a5,%lo(supported_init)(a5)
	.loc 2 1822 8
	bne	a5,zero,.L7
.LBB2:
	.loc 2 1826 16
	lui	a5,%hi(ciphersuite_preference)
	addi	a5,a5,%lo(ciphersuite_preference)
	sw	a5,-20(s0)
	.loc 2 1826 44
	lui	a5,%hi(supported_ciphersuites)
	addi	a5,a5,%lo(supported_ciphersuites)
	sw	a5,-24(s0)
	.loc 2 1826 9
	j	.L8
.L11:
.LBB3:
	.loc 2 1830 28
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-28(s0)
	.loc 2 1830 16 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L9
	.loc 2 1831 18
	lw	a0,-28(s0)
	call	ciphersuite_is_removed
	mv	a5,a0
	.loc 2 1830 72 discriminator 2
	bne	a5,zero,.L9
	.loc 2 1832 20
	lw	a5,-24(s0)
	addi	a4,a5,4
	sw	a4,-24(s0)
	.loc 2 1832 26
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 2 1832 24
	sw	a4,0(a5)
.L9:
.LBE3:
	.loc 2 1828 15
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L8:
	.loc 2 1827 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 1827 22
	beq	a5,zero,.L10
	.loc 2 1827 123 discriminator 1
	lui	a5,%hi(supported_ciphersuites+120)
	addi	a5,a5,%lo(supported_ciphersuites+120)
	.loc 2 1827 22 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L11
.L10:
	.loc 2 1835 12
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 2 1837 24
	lui	a5,%hi(supported_init)
	li	a4,1
	sw	a4,%lo(supported_init)(a5)
.L7:
.LBE2:
	.loc 2 1840 12
	lui	a5,%hi(supported_ciphersuites)
	addi	a5,a5,%lo(supported_ciphersuites)
	.loc 2 1841 1
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
	.size	mbedtls_ssl_list_ciphersuites, .-mbedtls_ssl_list_ciphersuites
	.section	.text.mbedtls_ssl_ciphersuite_from_string,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_ciphersuite_from_string
	.type	mbedtls_ssl_ciphersuite_from_string, @function
mbedtls_ssl_ciphersuite_from_string:
.LFB144:
	.loc 2 1846 1
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
	.loc 2 1847 38
	lui	a5,%hi(ciphersuite_definitions)
	addi	a5,a5,%lo(ciphersuite_definitions)
	sw	a5,-20(s0)
	.loc 2 1849 8
	lw	a5,-36(s0)
	bne	a5,zero,.L16
	.loc 2 1850 15
	li	a5,0
	j	.L15
.L18:
	.loc 2 1854 28
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 1854 18
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 2 1854 12 discriminator 1
	bne	a5,zero,.L17
	.loc 2 1855 20
	lw	a5,-20(s0)
	j	.L15
.L17:
	.loc 2 1858 12
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L16:
	.loc 2 1853 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 1853 20
	bne	a5,zero,.L18
	.loc 2 1861 11
	li	a5,0
.L15:
	.loc 2 1862 1
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
	.size	mbedtls_ssl_ciphersuite_from_string, .-mbedtls_ssl_ciphersuite_from_string
	.section	.text.mbedtls_ssl_ciphersuite_from_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_ciphersuite_from_id
	.type	mbedtls_ssl_ciphersuite_from_id, @function
mbedtls_ssl_ciphersuite_from_id:
.LFB145:
	.loc 2 1865 1
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
	.loc 2 1866 38
	lui	a5,%hi(ciphersuite_definitions)
	addi	a5,a5,%lo(ciphersuite_definitions)
	sw	a5,-20(s0)
	.loc 2 1868 11
	j	.L20
.L23:
	.loc 2 1869 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 1869 12
	lw	a4,-36(s0)
	bne	a4,a5,.L21
	.loc 2 1870 20
	lw	a5,-20(s0)
	j	.L22
.L21:
	.loc 2 1873 12
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L20:
	.loc 2 1868 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 1868 20
	bne	a5,zero,.L23
	.loc 2 1876 11
	li	a5,0
.L22:
	.loc 2 1877 1
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
	.size	mbedtls_ssl_ciphersuite_from_id, .-mbedtls_ssl_ciphersuite_from_id
	.section	.rodata
	.align	2
.LC31:
	.string	"unknown"
	.section	.text.mbedtls_ssl_get_ciphersuite_name,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ciphersuite_name
	.type	mbedtls_ssl_get_ciphersuite_name, @function
mbedtls_ssl_get_ciphersuite_name:
.LFB146:
	.loc 2 1880 1
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
	.loc 2 1883 11
	lw	a0,-36(s0)
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-20(s0)
	.loc 2 1885 8
	lw	a5,-20(s0)
	bne	a5,zero,.L25
	.loc 2 1886 16
	lui	a5,%hi(.LC31)
	addi	a5,a5,%lo(.LC31)
	j	.L26
.L25:
	.loc 2 1889 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
.L26:
	.loc 2 1890 1
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
	.size	mbedtls_ssl_get_ciphersuite_name, .-mbedtls_ssl_get_ciphersuite_name
	.section	.text.mbedtls_ssl_get_ciphersuite_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ciphersuite_id
	.type	mbedtls_ssl_get_ciphersuite_id, @function
mbedtls_ssl_get_ciphersuite_id:
.LFB147:
	.loc 2 1893 1
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
	.loc 2 1896 11
	lw	a0,-36(s0)
	call	mbedtls_ssl_ciphersuite_from_string
	sw	a0,-20(s0)
	.loc 2 1898 8
	lw	a5,-20(s0)
	bne	a5,zero,.L28
	.loc 2 1899 16
	li	a5,0
	j	.L29
.L28:
	.loc 2 1902 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
.L29:
	.loc 2 1903 1
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
	.size	mbedtls_ssl_get_ciphersuite_id, .-mbedtls_ssl_get_ciphersuite_id
	.section	.text.mbedtls_ssl_ciphersuite_get_cipher_key_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_ciphersuite_get_cipher_key_bitlen
	.type	mbedtls_ssl_ciphersuite_get_cipher_key_bitlen, @function
mbedtls_ssl_ciphersuite_get_cipher_key_bitlen:
.LFB148:
	.loc 2 1906 1
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
	.loc 2 1924 67
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 2 1924 9
	mv	a0,a5
	call	mbedtls_cipher_info_from_type
	sw	a0,-20(s0)
	.loc 2 1926 12
	lw	a0,-20(s0)
	call	mbedtls_cipher_info_get_key_bitlen
	mv	a5,a0
	.loc 2 1928 1
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
.LFE148:
	.size	mbedtls_ssl_ciphersuite_get_cipher_key_bitlen, .-mbedtls_ssl_ciphersuite_get_cipher_key_bitlen
	.section	.text.mbedtls_ssl_get_ciphersuite_sig_pk_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ciphersuite_sig_pk_alg
	.type	mbedtls_ssl_get_ciphersuite_sig_pk_alg, @function
mbedtls_ssl_get_ciphersuite_sig_pk_alg:
.LFB149:
	.loc 2 1932 1
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
	.loc 2 1933 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 1933 5
	li	a4,10
	bgt	a5,a4,.L33
	li	a4,9
	bge	a5,a4,.L34
	li	a4,7
	beq	a5,a4,.L35
	li	a4,7
	bgt	a5,a4,.L33
	li	a4,3
	bgt	a5,a4,.L36
	bgt	a5,zero,.L35
	j	.L33
.L36:
	li	a4,4
	beq	a5,a4,.L37
	j	.L33
.L35:
	.loc 2 1938 20
	li	a5,1
	j	.L38
.L37:
	.loc 2 1941 20
	li	a5,4
	j	.L38
.L34:
	.loc 2 1945 20
	li	a5,2
	j	.L38
.L33:
	.loc 2 1948 20
	li	a5,0
.L38:
	.loc 2 1950 1
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
.LFE149:
	.size	mbedtls_ssl_get_ciphersuite_sig_pk_alg, .-mbedtls_ssl_get_ciphersuite_sig_pk_alg
	.section	.text.mbedtls_ssl_get_ciphersuite_sig_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_ciphersuite_sig_alg
	.type	mbedtls_ssl_get_ciphersuite_sig_alg, @function
mbedtls_ssl_get_ciphersuite_sig_alg:
.LFB150:
	.loc 2 1998 1
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
	.loc 2 1999 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 1999 5
	li	a4,3
	bgt	a5,a4,.L40
	li	a4,2
	bge	a5,a4,.L41
	j	.L42
.L40:
	li	a4,4
	beq	a5,a4,.L43
	j	.L42
.L41:
	.loc 2 2002 20
	li	a5,1
	j	.L44
.L43:
	.loc 2 2005 20
	li	a5,4
	j	.L44
.L42:
	.loc 2 2008 20
	li	a5,0
.L44:
	.loc 2 2010 1
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
.LFE150:
	.size	mbedtls_ssl_get_ciphersuite_sig_alg, .-mbedtls_ssl_get_ciphersuite_sig_alg
	.section	.text.mbedtls_ssl_ciphersuite_uses_ec,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_ciphersuite_uses_ec
	.type	mbedtls_ssl_ciphersuite_uses_ec, @function
mbedtls_ssl_ciphersuite_uses_ec:
.LFB151:
	.loc 2 2018 1
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
	.loc 2 2019 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 2019 5
	li	a4,4
	bgt	a5,a4,.L46
	li	a4,3
	bge	a5,a4,.L47
	j	.L48
.L46:
	addi	a4,a5,-8
	li	a5,3
	bgtu	a4,a5,.L48
.L47:
	.loc 2 2026 20
	li	a5,1
	j	.L49
.L48:
	.loc 2 2029 20
	li	a5,0
.L49:
	.loc 2 2031 1
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
	.size	mbedtls_ssl_ciphersuite_uses_ec, .-mbedtls_ssl_ciphersuite_uses_ec
	.section	.text.mbedtls_ssl_ciphersuite_uses_psk,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_ciphersuite_uses_psk
	.type	mbedtls_ssl_ciphersuite_uses_psk, @function
mbedtls_ssl_ciphersuite_uses_psk:
.LFB152:
	.loc 2 2038 1
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
	.loc 2 2039 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	addi	a4,a5,-5
	.loc 2 2039 5
	li	a5,3
	bgtu	a4,a5,.L51
	.loc 2 2044 20
	li	a5,1
	j	.L52
.L51:
	.loc 2 2047 20
	li	a5,0
.L52:
	.loc 2 2049 1
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
	.size	mbedtls_ssl_ciphersuite_uses_psk, .-mbedtls_ssl_ciphersuite_uses_psk
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl_ciphersuites.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x837
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF173
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
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x9
	.4byte	0xa8
	.uleb128 0xd
	.4byte	0x32
	.byte	0x5
	.byte	0x2f
	.4byte	0x106
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.byte	0x1
	.byte	0x54
	.4byte	0x30a
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x1
	.byte	0xa9
	.byte	0x3
	.4byte	0x106
	.uleb128 0x4
	.4byte	0x30a
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x8
	.byte	0x1
	.2byte	0x10a
	.byte	0x10
	.4byte	0x393
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x10c
	.byte	0x11
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.4byte	.LASF113
	.2byte	0x10f
	.4byte	0x6f
	.byte	0x5
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF114
	.2byte	0x115
	.4byte	0x6f
	.byte	0x3
	.byte	0x25
	.uleb128 0x6
	.4byte	.LASF115
	.2byte	0x11b
	.4byte	0x6f
	.byte	0x4
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF116
	.2byte	0x120
	.4byte	0x6f
	.byte	0x4
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF117
	.2byte	0x128
	.4byte	0x6f
	.byte	0x8
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF118
	.2byte	0x12e
	.4byte	0x6f
	.byte	0x2
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF119
	.2byte	0x131
	.4byte	0x6f
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x133
	.byte	0x3
	.4byte	0x31b
	.uleb128 0x4
	.4byte	0x393
	.uleb128 0x9
	.4byte	0x3a0
	.uleb128 0x4
	.4byte	0x3a5
	.uleb128 0xd
	.4byte	0x32
	.byte	0x6
	.byte	0x49
	.4byte	0x3eb
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x6
	.byte	0x52
	.byte	0x3
	.4byte	0x3af
	.uleb128 0x13
	.byte	0x1
	.4byte	0x32
	.byte	0x7
	.2byte	0x101
	.4byte	0x44d
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x1b2
	.byte	0x2a
	.4byte	0x45f
	.uleb128 0x4
	.4byte	0x44d
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0x10
	.byte	0x7
	.2byte	0x1c0
	.byte	0x8
	.4byte	0x4db
	.uleb128 0x14
	.string	"id"
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x63
	.byte	0
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0x7
	.2byte	0x1c2
	.byte	0x11
	.4byte	0xad
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0x7
	.2byte	0x1c4
	.byte	0xd
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.string	"mac"
	.2byte	0x1c5
	.byte	0xd
	.4byte	0x89
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x1c6
	.byte	0xd
	.4byte	0x89
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x1c7
	.byte	0xd
	.4byte	0x89
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x1c9
	.byte	0xe
	.4byte	0x95
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0x7
	.2byte	0x1ca
	.byte	0xe
	.4byte	0x95
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.byte	0x2
	.4byte	0x40
	.byte	0x8
	.2byte	0x4ea
	.4byte	0x4fd
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0
	.uleb128 0x15
	.4byte	.LASF149
	.2byte	0x303
	.uleb128 0x15
	.4byte	.LASF150
	.2byte	0x304
	.byte	0
	.uleb128 0x9
	.4byte	0x6a
	.uleb128 0x9
	.4byte	0x45a
	.uleb128 0xe
	.4byte	0x6a
	.4byte	0x517
	.uleb128 0xf
	.4byte	0x6f
	.byte	0xb9
	.byte	0
	.uleb128 0x4
	.4byte	0x507
	.uleb128 0x19
	.4byte	.LASF151
	.byte	0x2
	.byte	0x25
	.byte	0x12
	.4byte	0x517
	.uleb128 0x5
	.byte	0x3
	.4byte	ciphersuite_preference
	.uleb128 0xe
	.4byte	0x45a
	.4byte	0x53e
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.4byte	0x52e
	.uleb128 0xa
	.4byte	.LASF152
	.2byte	0x118
	.byte	0x28
	.4byte	0x53e
	.uleb128 0x5
	.byte	0x3
	.4byte	ciphersuite_definitions
	.uleb128 0xe
	.4byte	0x63
	.4byte	0x565
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF153
	.2byte	0x70d
	.byte	0xc
	.4byte	0x555
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_ciphersuites
	.uleb128 0xa
	.4byte	.LASF154
	.2byte	0x70e
	.byte	0xc
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_init
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x19f
	.byte	0x1e
	.4byte	0x3a5
	.4byte	0x5a0
	.uleb128 0x10
	.4byte	0x316
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x9
	.byte	0x24
	.byte	0x5
	.4byte	0x63
	.4byte	0x5bb
	.uleb128 0x10
	.4byte	0xad
	.uleb128 0x10
	.4byte	0xad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.2byte	0x7f5
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e6
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x7f5
	.byte	0x47
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF158
	.2byte	0x7e1
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x611
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x7e1
	.byte	0x46
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF160
	.2byte	0x7cd
	.byte	0x13
	.4byte	0x3eb
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63c
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x7cd
	.byte	0x58
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF161
	.2byte	0x78b
	.byte	0x13
	.4byte	0x3eb
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x667
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x78b
	.byte	0x5b
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF162
	.2byte	0x771
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a1
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x771
	.byte	0x57
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF163
	.2byte	0x783
	.byte	0x29
	.4byte	0x3aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF164
	.2byte	0x764
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x764
	.byte	0x30
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cur"
	.2byte	0x766
	.byte	0x26
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF166
	.2byte	0x757
	.byte	0xd
	.4byte	0xad
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x715
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0x2
	.2byte	0x757
	.byte	0x38
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cur"
	.2byte	0x759
	.byte	0x26
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF168
	.2byte	0x748
	.byte	0x22
	.4byte	0x502
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74f
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x2
	.2byte	0x748
	.byte	0x46
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cur"
	.2byte	0x74a
	.byte	0x26
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF170
	.2byte	0x734
	.byte	0x22
	.4byte	0x502
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x789
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x735
	.byte	0x11
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cur"
	.2byte	0x737
	.byte	0x26
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF171
	.2byte	0x718
	.byte	0xc
	.4byte	0x4fd
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e1
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x7
	.string	"p"
	.2byte	0x71f
	.byte	0x14
	.4byte	0x4fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"q"
	.2byte	0x720
	.byte	0xe
	.4byte	0x7e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xa
	.4byte	.LASF172
	.2byte	0x725
	.byte	0x2e
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0x2
	.2byte	0x711
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x812
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x2
	.2byte	0x711
	.byte	0x44
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1e4
	.byte	0x16
	.4byte	0x76
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x1e5
	.byte	0x22
	.4byte	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xd
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
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF139:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA"
.LASF54:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CTR"
.LASF129:
	.string	"mbedtls_pk_type_t"
.LASF110:
	.string	"MBEDTLS_CIPHER_AES_192_KWP"
.LASF156:
	.string	"strcmp"
.LASF136:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_PSK"
.LASF12:
	.string	"size_t"
.LASF100:
	.string	"MBEDTLS_CIPHER_AES_192_OFB"
.LASF169:
	.string	"ciphersuite"
.LASF69:
	.string	"MBEDTLS_CIPHER_AES_128_CCM_STAR_NO_TAG"
.LASF163:
	.string	"cipher_info"
.LASF46:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_ECB"
.LASF68:
	.string	"MBEDTLS_CIPHER_AES_256_CCM"
.LASF117:
	.string	"type"
.LASF141:
	.string	"MBEDTLS_KEY_EXCHANGE_ECJPAKE"
.LASF52:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CFB128"
.LASF146:
	.string	"min_tls_version"
.LASF75:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM_STAR_NO_TAG"
.LASF9:
	.string	"long long unsigned int"
.LASF82:
	.string	"MBEDTLS_CIPHER_ARIA_192_CBC"
.LASF43:
	.string	"MBEDTLS_CIPHER_AES_192_GCM"
.LASF28:
	.string	"MBEDTLS_CIPHER_NONE"
.LASF80:
	.string	"MBEDTLS_CIPHER_ARIA_256_ECB"
.LASF63:
	.string	"MBEDTLS_CIPHER_DES_EDE_CBC"
.LASF128:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF115:
	.string	"key_bitlen"
.LASF133:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA"
.LASF70:
	.string	"MBEDTLS_CIPHER_AES_192_CCM_STAR_NO_TAG"
.LASF66:
	.string	"MBEDTLS_CIPHER_AES_128_CCM"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF142:
	.string	"mbedtls_ssl_ciphersuite_t"
.LASF174:
	.string	"ciphersuite_is_removed"
.LASF112:
	.string	"mbedtls_cipher_type_t"
.LASF78:
	.string	"MBEDTLS_CIPHER_ARIA_128_ECB"
.LASF154:
	.string	"supported_init"
.LASF6:
	.string	"long int"
.LASF171:
	.string	"mbedtls_ssl_list_ciphersuites"
.LASF20:
	.string	"MBEDTLS_MD_SHA224"
.LASF151:
	.string	"ciphersuite_preference"
.LASF119:
	.string	"base_idx"
.LASF65:
	.string	"MBEDTLS_CIPHER_DES_EDE3_CBC"
.LASF14:
	.string	"uint16_t"
.LASF53:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CFB128"
.LASF130:
	.string	"MBEDTLS_KEY_EXCHANGE_NONE"
.LASF106:
	.string	"MBEDTLS_CIPHER_AES_128_KW"
.LASF94:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM"
.LASF147:
	.string	"max_tls_version"
.LASF111:
	.string	"MBEDTLS_CIPHER_AES_256_KWP"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF101:
	.string	"MBEDTLS_CIPHER_AES_256_OFB"
.LASF67:
	.string	"MBEDTLS_CIPHER_AES_192_CCM"
.LASF49:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CBC"
.LASF47:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_ECB"
.LASF107:
	.string	"MBEDTLS_CIPHER_AES_192_KW"
.LASF60:
	.string	"MBEDTLS_CIPHER_DES_ECB"
.LASF41:
	.string	"MBEDTLS_CIPHER_AES_256_CTR"
.LASF10:
	.string	"unsigned int"
.LASF113:
	.string	"block_size"
.LASF109:
	.string	"MBEDTLS_CIPHER_AES_128_KWP"
.LASF165:
	.string	"ciphersuite_name"
.LASF157:
	.string	"mbedtls_ssl_ciphersuite_uses_psk"
.LASF83:
	.string	"MBEDTLS_CIPHER_ARIA_256_CBC"
.LASF44:
	.string	"MBEDTLS_CIPHER_AES_256_GCM"
.LASF99:
	.string	"MBEDTLS_CIPHER_AES_128_OFB"
.LASF7:
	.string	"long unsigned int"
.LASF19:
	.string	"MBEDTLS_MD_SHA1"
.LASF37:
	.string	"MBEDTLS_CIPHER_AES_192_CFB128"
.LASF143:
	.string	"name"
.LASF18:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF45:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_ECB"
.LASF162:
	.string	"mbedtls_ssl_ciphersuite_get_cipher_key_bitlen"
.LASF104:
	.string	"MBEDTLS_CIPHER_CHACHA20"
.LASF39:
	.string	"MBEDTLS_CIPHER_AES_128_CTR"
.LASF158:
	.string	"mbedtls_ssl_ciphersuite_uses_ec"
.LASF123:
	.string	"MBEDTLS_PK_ECKEY"
.LASF84:
	.string	"MBEDTLS_CIPHER_ARIA_128_CFB128"
.LASF96:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM_STAR_NO_TAG"
.LASF71:
	.string	"MBEDTLS_CIPHER_AES_256_CCM_STAR_NO_TAG"
.LASF81:
	.string	"MBEDTLS_CIPHER_ARIA_128_CBC"
.LASF42:
	.string	"MBEDTLS_CIPHER_AES_128_GCM"
.LASF51:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CFB128"
.LASF74:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM"
.LASF25:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF155:
	.string	"mbedtls_cipher_info_from_type"
.LASF73:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM"
.LASF134:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA"
.LASF125:
	.string	"MBEDTLS_PK_ECDSA"
.LASF120:
	.string	"mbedtls_cipher_info_t"
.LASF108:
	.string	"MBEDTLS_CIPHER_AES_256_KW"
.LASF77:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM_STAR_NO_TAG"
.LASF76:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM_STAR_NO_TAG"
.LASF64:
	.string	"MBEDTLS_CIPHER_DES_EDE3_ECB"
.LASF95:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM"
.LASF88:
	.string	"MBEDTLS_CIPHER_ARIA_192_CTR"
.LASF138:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK"
.LASF97:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM_STAR_NO_TAG"
.LASF103:
	.string	"MBEDTLS_CIPHER_AES_256_XTS"
.LASF23:
	.string	"MBEDTLS_MD_SHA512"
.LASF91:
	.string	"MBEDTLS_CIPHER_ARIA_192_GCM"
.LASF50:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CBC"
.LASF61:
	.string	"MBEDTLS_CIPHER_DES_CBC"
.LASF149:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
.LASF26:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF114:
	.string	"iv_size"
.LASF93:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM"
.LASF137:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_PSK"
.LASF31:
	.string	"MBEDTLS_CIPHER_AES_192_ECB"
.LASF86:
	.string	"MBEDTLS_CIPHER_ARIA_256_CFB128"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF167:
	.string	"ciphersuite_id"
.LASF164:
	.string	"mbedtls_ssl_get_ciphersuite_id"
.LASF102:
	.string	"MBEDTLS_CIPHER_AES_128_XTS"
.LASF21:
	.string	"MBEDTLS_MD_SHA256"
.LASF48:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CBC"
.LASF3:
	.string	"unsigned char"
.LASF132:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA"
.LASF161:
	.string	"mbedtls_ssl_get_ciphersuite_sig_pk_alg"
.LASF148:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
.LASF4:
	.string	"short int"
.LASF159:
	.string	"info"
.LASF57:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_GCM"
.LASF150:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
.LASF153:
	.string	"supported_ciphersuites"
.LASF32:
	.string	"MBEDTLS_CIPHER_AES_256_ECB"
.LASF131:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA"
.LASF55:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CTR"
.LASF166:
	.string	"mbedtls_ssl_get_ciphersuite_name"
.LASF105:
	.string	"MBEDTLS_CIPHER_CHACHA20_POLY1305"
.LASF58:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_GCM"
.LASF87:
	.string	"MBEDTLS_CIPHER_ARIA_128_CTR"
.LASF168:
	.string	"mbedtls_ssl_ciphersuite_from_id"
.LASF89:
	.string	"MBEDTLS_CIPHER_ARIA_256_CTR"
.LASF124:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF11:
	.string	"long double"
.LASF72:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM"
.LASF15:
	.string	"char"
.LASF152:
	.string	"ciphersuite_definitions"
.LASF116:
	.string	"mode"
.LASF92:
	.string	"MBEDTLS_CIPHER_ARIA_256_GCM"
.LASF127:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF29:
	.string	"MBEDTLS_CIPHER_NULL"
.LASF40:
	.string	"MBEDTLS_CIPHER_AES_192_CTR"
.LASF140:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA"
.LASF98:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM_STAR_NO_TAG"
.LASF36:
	.string	"MBEDTLS_CIPHER_AES_128_CFB128"
.LASF22:
	.string	"MBEDTLS_MD_SHA384"
.LASF17:
	.string	"MBEDTLS_MD_MD5"
.LASF173:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF5:
	.string	"short unsigned int"
.LASF38:
	.string	"MBEDTLS_CIPHER_AES_256_CFB128"
.LASF126:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF90:
	.string	"MBEDTLS_CIPHER_ARIA_128_GCM"
.LASF135:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK"
.LASF79:
	.string	"MBEDTLS_CIPHER_ARIA_192_ECB"
.LASF62:
	.string	"MBEDTLS_CIPHER_DES_EDE_ECB"
.LASF160:
	.string	"mbedtls_ssl_get_ciphersuite_sig_alg"
.LASF145:
	.string	"key_exchange"
.LASF121:
	.string	"MBEDTLS_PK_NONE"
.LASF175:
	.string	"mbedtls_cipher_info_get_key_bitlen"
.LASF13:
	.string	"uint8_t"
.LASF118:
	.string	"flags"
.LASF30:
	.string	"MBEDTLS_CIPHER_AES_128_ECB"
.LASF144:
	.string	"cipher"
.LASF35:
	.string	"MBEDTLS_CIPHER_AES_256_CBC"
.LASF170:
	.string	"mbedtls_ssl_ciphersuite_from_string"
.LASF56:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CTR"
.LASF24:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF172:
	.string	"cs_info"
.LASF59:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_GCM"
.LASF85:
	.string	"MBEDTLS_CIPHER_ARIA_192_CFB128"
.LASF34:
	.string	"MBEDTLS_CIPHER_AES_192_CBC"
.LASF122:
	.string	"MBEDTLS_PK_RSA"
.LASF33:
	.string	"MBEDTLS_CIPHER_AES_128_CBC"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_ciphersuites.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
