	.file	"netdb.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/netdb.c"
	.globl	h_errno
	.section	.sbss.h_errno,"aw",@nobits
	.align	2
	.type	h_errno, @object
	.size	h_errno, 4
h_errno:
	.zero	4
	.section	.text.lwip_gethostbyname,"ax",@progbits
	.align	1
	.globl	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/netdb.c"
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
	.loc 1 106 9
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	netconn_gethostbyname
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 107 6
	lb	a5,-17(s0)
	beq	a5,zero,.L2
	.loc 1 109 13
	lui	a5,%hi(h_errno)
	li	a4,210
	sw	a4,%lo(h_errno)(a5)
	.loc 1 110 11
	li	a5,0
	j	.L4
.L2:
	.loc 1 114 18
	lui	a5,%hi(s_hostent_addr.4)
	lw	a4,-24(s0)
	sw	a4,%lo(s_hostent_addr.4)(a5)
	.loc 1 115 22
	lui	a5,%hi(s_phostent_addr.3)
	addi	a5,a5,%lo(s_phostent_addr.3)
	lui	a4,%hi(s_hostent_addr.4)
	addi	a4,a4,%lo(s_hostent_addr.4)
	sw	a4,0(a5)
	.loc 1 116 22
	lui	a5,%hi(s_phostent_addr.3)
	addi	a5,a5,%lo(s_phostent_addr.3)
	sw	zero,4(a5)
	.loc 1 117 3
	li	a2,256
	lw	a1,-36(s0)
	lui	a5,%hi(s_hostname.2)
	addi	a0,a5,%lo(s_hostname.2)
	call	strncpy
	.loc 1 118 19
	lui	a5,%hi(s_hostname.2)
	addi	a5,a5,%lo(s_hostname.2)
	sb	zero,256(a5)
	.loc 1 119 20
	lui	a5,%hi(s_hostent.1)
	addi	a5,a5,%lo(s_hostent.1)
	lui	a4,%hi(s_hostname.2)
	addi	a4,a4,%lo(s_hostname.2)
	sw	a4,0(a5)
	.loc 1 120 13
	lui	a5,%hi(s_aliases.0)
	sw	zero,%lo(s_aliases.0)(a5)
	.loc 1 121 23
	lui	a5,%hi(s_hostent.1)
	addi	a5,a5,%lo(s_hostent.1)
	lui	a4,%hi(s_aliases.0)
	addi	a4,a4,%lo(s_aliases.0)
	sw	a4,4(a5)
	.loc 1 122 24
	lui	a5,%hi(s_hostent.1)
	addi	a5,a5,%lo(s_hostent.1)
	li	a4,2
	sw	a4,8(a5)
	.loc 1 123 22
	lui	a5,%hi(s_hostent.1)
	addi	a5,a5,%lo(s_hostent.1)
	li	a4,4
	sw	a4,12(a5)
	.loc 1 124 25
	lui	a5,%hi(s_hostent.1)
	addi	a5,a5,%lo(s_hostent.1)
	lui	a4,%hi(s_phostent_addr.3)
	addi	a4,a4,%lo(s_phostent_addr.3)
	sw	a4,16(a5)
	.loc 1 146 10
	lui	a5,%hi(s_hostent.1)
	addi	a5,a5,%lo(s_hostent.1)
.L4:
	.loc 1 148 1
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
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
	.align	1
	.globl	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB7:
	.loc 1 169 1
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
	.loc 1 176 6
	lw	a5,-72(s0)
	bne	a5,zero,.L6
	.loc 1 178 14
	addi	a5,s0,-36
	sw	a5,-72(s0)
.L6:
	.loc 1 181 6
	lw	a5,-68(s0)
	bne	a5,zero,.L7
	.loc 1 183 15
	lw	a5,-72(s0)
	li	a4,22
	sw	a4,0(a5)
	.loc 1 184 12
	li	a5,-1
	j	.L13
.L7:
	.loc 1 187 11
	lw	a5,-68(s0)
	sw	zero,0(a5)
	.loc 1 188 6
	lw	a5,-52(s0)
	beq	a5,zero,.L9
	.loc 1 188 21 discriminator 1
	lw	a5,-56(s0)
	beq	a5,zero,.L9
	.loc 1 188 38 discriminator 2
	lw	a5,-60(s0)
	bne	a5,zero,.L10
.L9:
	.loc 1 190 15
	lw	a5,-72(s0)
	li	a4,22
	sw	a4,0(a5)
	.loc 1 191 12
	li	a5,-1
	j	.L13
.L10:
	.loc 1 194 13
	lw	a0,-52(s0)
	call	strlen
	sw	a0,-20(s0)
	.loc 1 195 55
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 195 6
	lw	a4,-64(s0)
	bgeu	a4,a5,.L11
	.loc 1 197 15
	lw	a5,-72(s0)
	li	a4,34
	sw	a4,0(a5)
	.loc 1 198 12
	li	a5,-1
	j	.L13
.L11:
	.loc 1 201 51
	lw	a5,-60(s0)
	.loc 1 201 72
	addi	a5,a5,3
	.loc 1 201 77
	andi	a5,a5,-4
	.loc 1 201 5
	sw	a5,-24(s0)
	.loc 1 202 12
	lw	a5,-24(s0)
	addi	a5,a5,16
	sw	a5,-28(s0)
	.loc 1 205 9
	lw	a5,-24(s0)
	addi	a5,a5,8
	mv	a1,a5
	lw	a0,-52(s0)
	call	netconn_gethostbyname
	mv	a5,a0
	sb	a5,-29(s0)
	.loc 1 206 6
	lb	a5,-29(s0)
	beq	a5,zero,.L12
	.loc 1 208 15
	lw	a5,-72(s0)
	li	a4,210
	sw	a4,0(a5)
	.loc 1 209 12
	li	a5,-1
	j	.L13
.L12:
	.loc 1 213 3
	lw	a2,-20(s0)
	lw	a1,-52(s0)
	lw	a0,-28(s0)
	call	memcpy
	.loc 1 214 11
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 214 21
	sb	zero,0(a5)
	.loc 1 217 21
	lw	a5,-24(s0)
	addi	a4,a5,8
	.loc 1 217 19
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 218 19
	lw	a5,-24(s0)
	sw	zero,4(a5)
	.loc 1 219 14
	lw	a5,-24(s0)
	sw	zero,12(a5)
	.loc 1 220 15
	lw	a5,-56(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 221 20
	lw	a5,-24(s0)
	addi	a4,a5,12
	.loc 1 221 18
	lw	a5,-56(s0)
	sw	a4,4(a5)
	.loc 1 222 19
	lw	a5,-56(s0)
	li	a4,2
	sw	a4,8(a5)
	.loc 1 223 17
	lw	a5,-56(s0)
	li	a4,4
	sw	a4,12(a5)
	.loc 1 224 31
	lw	a4,-24(s0)
	.loc 1 224 20
	lw	a5,-56(s0)
	sw	a4,16(a5)
	.loc 1 227 11
	lw	a5,-68(s0)
	lw	a4,-56(s0)
	sw	a4,0(a5)
	.loc 1 230 10
	li	a5,0
.L13:
	.loc 1 231 1
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
.LFE7:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
	.align	1
	.globl	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB8:
	.loc 1 242 1
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
	.loc 1 245 9
	j	.L15
.L16:
	.loc 1 246 10
	lw	a5,-36(s0)
	lw	a5,28(a5)
	sw	a5,-20(s0)
	.loc 1 247 5
	lw	a1,-36(s0)
	li	a0,12
	call	memp_free
	.loc 1 248 8
	lw	a5,-20(s0)
	sw	a5,-36(s0)
.L15:
	.loc 1 245 13
	lw	a5,-36(s0)
	bne	a5,zero,.L16
	.loc 1 250 1
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
.LFE8:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.text.lwip_getaddrinfo,"ax",@progbits
	.align	1
	.globl	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB9:
	.loc 1 276 1
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
	.loc 1 280 28
	sw	zero,-32(s0)
	.loc 1 281 7
	sw	zero,-20(s0)
	.loc 1 283 10
	sw	zero,-28(s0)
	.loc 1 286 6
	lw	a5,-80(s0)
	bne	a5,zero,.L18
	.loc 1 287 12
	li	a5,202
	j	.L37
.L18:
	.loc 1 289 8
	lw	a5,-80(s0)
	sw	zero,0(a5)
	.loc 1 290 6
	lw	a5,-68(s0)
	bne	a5,zero,.L20
	.loc 1 290 25 discriminator 1
	lw	a5,-72(s0)
	bne	a5,zero,.L20
	.loc 1 291 12
	li	a5,200
	j	.L37
.L20:
	.loc 1 294 6
	lw	a5,-76(s0)
	beq	a5,zero,.L21
	.loc 1 295 15
	lw	a5,-76(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 296 8
	lw	a5,-36(s0)
	beq	a5,zero,.L22
	.loc 1 298 9
	lw	a4,-36(s0)
	li	a5,2
	beq	a4,a5,.L22
	.loc 1 304 14
	li	a5,204
	j	.L37
.L21:
	.loc 1 307 15
	sw	zero,-36(s0)
.L22:
	.loc 1 310 6
	lw	a5,-72(s0)
	beq	a5,zero,.L23
	.loc 1 313 15
	lw	a0,-72(s0)
	call	atoi
	sw	a0,-20(s0)
	.loc 1 314 8
	lw	a5,-20(s0)
	bne	a5,zero,.L24
	.loc 1 314 34 discriminator 1
	lw	a5,-72(s0)
	lbu	a4,0(a5)
	.loc 1 314 22 discriminator 1
	li	a5,48
	beq	a4,a5,.L24
	.loc 1 316 14
	li	a5,201
	j	.L37
.L24:
	.loc 1 318 8
	lw	a5,-20(s0)
	blt	a5,zero,.L25
	.loc 1 318 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,65536
	blt	a4,a5,.L23
.L25:
	.loc 1 319 14
	li	a5,201
	j	.L37
.L23:
	.loc 1 323 6
	lw	a5,-68(s0)
	beq	a5,zero,.L26
	.loc 1 325 8
	lw	a5,-76(s0)
	beq	a5,zero,.L27
	.loc 1 325 33 discriminator 1
	lw	a5,-76(s0)
	lw	a5,0(a5)
	.loc 1 325 44 discriminator 1
	andi	a5,a5,4
	.loc 1 325 24 discriminator 1
	beq	a5,zero,.L27
	.loc 1 327 12
	addi	a5,s0,-52
	mv	a1,a5
	lw	a0,-68(s0)
	call	ip4addr_aton
	mv	a5,a0
	.loc 1 327 10 discriminator 1
	bne	a5,zero,.L30
	.loc 1 328 16
	li	a5,200
	j	.L37
.L27:
	.loc 1 346 13
	addi	a5,s0,-52
	mv	a1,a5
	lw	a0,-68(s0)
	call	netconn_gethostbyname
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 1 347 10
	lb	a5,-37(s0)
	beq	a5,zero,.L30
	.loc 1 348 16
	li	a5,202
	j	.L37
.L26:
	.loc 1 353 8
	lw	a5,-76(s0)
	beq	a5,zero,.L31
	.loc 1 353 33 discriminator 1
	lw	a5,-76(s0)
	lw	a5,0(a5)
	.loc 1 353 44 discriminator 1
	andi	a5,a5,1
	.loc 1 353 24 discriminator 1
	beq	a5,zero,.L31
	.loc 1 354 24
	sw	zero,-52(s0)
	j	.L30
.L31:
	.loc 1 356 24
	li	a5,16777216
	addi	a5,a5,127
	sw	a5,-52(s0)
.L30:
	.loc 1 360 14
	li	a5,48
	sw	a5,-24(s0)
	.loc 1 361 6
	lw	a5,-68(s0)
	beq	a5,zero,.L32
	.loc 1 362 15
	lw	a0,-68(s0)
	call	strlen
	sw	a0,-28(s0)
	.loc 1 363 8
	lw	a4,-28(s0)
	li	a5,256
	bleu	a4,a5,.L33
	.loc 1 365 14
	li	a5,202
	j	.L37
.L33:
	.loc 1 368 16
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	sw	a5,-24(s0)
.L32:
	.loc 1 373 27
	li	a0,12
	call	memp_malloc
	sw	a0,-44(s0)
	.loc 1 374 6
	lw	a5,-44(s0)
	bne	a5,zero,.L34
	.loc 1 375 12
	li	a5,203
	j	.L37
.L34:
	.loc 1 377 3
	lw	a2,-24(s0)
	li	a1,0
	lw	a0,-44(s0)
	call	memset
	.loc 1 379 6
	lw	a5,-44(s0)
	addi	a5,a5,32
	sw	a5,-32(s0)
.LBB2:
	.loc 1 395 25
	lw	a5,-32(s0)
	sw	a5,-48(s0)
	.loc 1 397 43
	lw	a4,-52(s0)
	.loc 1 397 31
	lw	a5,-48(s0)
	sw	a4,4(a5)
	.loc 1 398 21
	lw	a5,-48(s0)
	li	a4,2
	sb	a4,1(a5)
	.loc 1 400 18
	lw	a5,-48(s0)
	li	a4,16
	sb	a4,0(a5)
	.loc 1 402 21
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 402 19 discriminator 1
	lw	a5,-48(s0)
	sh	a4,2(a5)
	.loc 1 403 19
	lw	a5,-44(s0)
	li	a4,2
	sw	a4,4(a5)
.LBE2:
	.loc 1 408 6
	lw	a5,-76(s0)
	beq	a5,zero,.L35
	.loc 1 410 28
	lw	a5,-76(s0)
	lw	a4,8(a5)
	.loc 1 410 21
	lw	a5,-44(s0)
	sw	a4,8(a5)
	.loc 1 411 28
	lw	a5,-76(s0)
	lw	a4,12(a5)
	.loc 1 411 21
	lw	a5,-44(s0)
	sw	a4,12(a5)
.L35:
	.loc 1 413 6
	lw	a5,-68(s0)
	beq	a5,zero,.L36
	.loc 1 415 62
	lw	a5,-44(s0)
	addi	a4,a5,48
	.loc 1 415 22
	lw	a5,-44(s0)
	sw	a4,24(a5)
	.loc 1 416 14
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 416 5
	lw	a2,-28(s0)
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 417 7
	lw	a5,-44(s0)
	lw	a4,24(a5)
	.loc 1 417 21
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 417 31
	sb	zero,0(a5)
.L36:
	.loc 1 419 18
	lw	a5,-44(s0)
	li	a4,16
	sw	a4,16(a5)
	.loc 1 420 15
	lw	a5,-44(s0)
	lw	a4,-32(s0)
	sw	a4,20(a5)
	.loc 1 422 8
	lw	a5,-80(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 1 424 10
	li	a5,0
.L37:
	.loc 1 425 1
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
.LFE9:
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.section	.sbss.s_hostent_addr.4,"aw",@nobits
	.align	2
	.type	s_hostent_addr.4, @object
	.size	s_hostent_addr.4, 4
s_hostent_addr.4:
	.zero	4
	.section	.sbss.s_phostent_addr.3,"aw",@nobits
	.align	2
	.type	s_phostent_addr.3, @object
	.size	s_phostent_addr.3, 8
s_phostent_addr.3:
	.zero	8
	.section	.bss.s_hostname.2,"aw",@nobits
	.align	2
	.type	s_hostname.2, @object
	.size	s_hostname.2, 257
s_hostname.2:
	.zero	257
	.section	.bss.s_hostent.1,"aw",@nobits
	.align	2
	.type	s_hostent.1, @object
	.size	s_hostent.1, 20
s_hostent.1:
	.zero	20
	.section	.sbss.s_aliases.0,"aw",@nobits
	.align	2
	.type	s_aliases.0, @object
	.size	s_aliases.0, 4
s_aliases.0:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sockets.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netdb.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/api.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8b1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF136
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x19
	.byte	0x4
	.uleb128 0xf
	.4byte	0x84
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0xf
	.4byte	0x8b
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x14
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0xf
	.4byte	0xa1
	.uleb128 0xb
	.4byte	0x95
	.4byte	0xbb
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0xc5
	.uleb128 0xf
	.4byte	0xbb
	.uleb128 0x1a
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
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xd2
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xde
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xea
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x87
	.byte	0x13
	.4byte	0xf6
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5
	.byte	0x33
	.4byte	0x158
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x5
	.byte	0x34
	.byte	0x9
	.4byte	0x126
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x39
	.byte	0x19
	.4byte	0x13e
	.uleb128 0x1b
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x126
	.byte	0x14
	.4byte	0x158
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x3c
	.byte	0xf
	.4byte	0x126
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x7
	.byte	0x3f
	.4byte	0x197
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x7
	.byte	0x40
	.byte	0xd
	.4byte	0x171
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x5
	.4byte	0x32
	.byte	0x8
	.byte	0x35
	.4byte	0x20a
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 -1
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 -2
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 -3
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 -4
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 -5
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 -6
	.uleb128 0x6
	.4byte	.LASF38
	.sleb128 -7
	.uleb128 0x6
	.4byte	.LASF39
	.sleb128 -8
	.uleb128 0x6
	.4byte	.LASF40
	.sleb128 -9
	.uleb128 0x6
	.4byte	.LASF41
	.sleb128 -10
	.uleb128 0x6
	.4byte	.LASF42
	.sleb128 -11
	.uleb128 0x6
	.4byte	.LASF43
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF44
	.sleb128 -13
	.uleb128 0x6
	.4byte	.LASF45
	.sleb128 -14
	.uleb128 0x6
	.4byte	.LASF46
	.sleb128 -15
	.uleb128 0x6
	.4byte	.LASF47
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x8
	.byte	0x60
	.byte	0xe
	.4byte	0x10e
	.uleb128 0x15
	.byte	0x7
	.4byte	0x39
	.byte	0x9
	.byte	0x34
	.4byte	0x283
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x9
	.byte	0x38
	.byte	0x3
	.4byte	0x216
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x10
	.byte	0x71
	.byte	0x6
	.4byte	0x2ba
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x2ca
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xa
	.byte	0x44
	.byte	0xe
	.4byte	0x102
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xa
	.byte	0x49
	.byte	0xf
	.4byte	0x11a
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x10
	.byte	0xa
	.byte	0x4e
	.4byte	0x330
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.4byte	0x102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xa
	.byte	0x50
	.byte	0xf
	.4byte	0x2ca
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xa
	.byte	0x51
	.byte	0xd
	.4byte	0x2d6
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xa
	.byte	0x52
	.byte	0x12
	.4byte	0x17d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xa
	.byte	0x54
	.byte	0x8
	.4byte	0xab
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x10
	.byte	0xa
	.byte	0x63
	.4byte	0x364
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xa
	.byte	0x64
	.byte	0x8
	.4byte	0x102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xa
	.byte	0x65
	.byte	0xf
	.4byte	0x2ca
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xa
	.byte	0x66
	.byte	0x8
	.4byte	0x364
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x374
	.uleb128 0xc
	.4byte	0x6a
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x10
	.byte	0xa
	.byte	0x69
	.4byte	0x3b5
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xa
	.byte	0x6a
	.byte	0x8
	.4byte	0x102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xa
	.byte	0x6b
	.byte	0xf
	.4byte	0x2ca
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xa
	.byte	0x6c
	.byte	0x8
	.4byte	0x2ba
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xa
	.byte	0x6d
	.byte	0x9
	.4byte	0x3b5
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x126
	.4byte	0x3c5
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xa
	.byte	0x76
	.byte	0xf
	.4byte	0x126
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x14
	.byte	0xb
	.byte	0x5c
	.4byte	0x41f
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xb
	.byte	0x5d
	.byte	0xb
	.4byte	0x8b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xb
	.byte	0x5e
	.byte	0xc
	.4byte	0x41f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xb
	.byte	0x60
	.byte	0x9
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xb
	.byte	0x61
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xb
	.byte	0x62
	.byte	0xc
	.4byte	0x41f
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x8b
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x20
	.byte	0xb
	.byte	0x67
	.4byte	0x499
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xb
	.byte	0x68
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xb
	.byte	0x69
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xb
	.byte	0x6a
	.byte	0x9
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xb
	.byte	0x6b
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xb
	.byte	0x6c
	.byte	0xf
	.4byte	0x3c5
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.byte	0x6d
	.byte	0x16
	.4byte	0x49e
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xb
	.byte	0x6e
	.byte	0xb
	.4byte	0x8b
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xb
	.byte	0x6f
	.byte	0x16
	.4byte	0x4a3
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.4byte	0x424
	.uleb128 0x5
	.4byte	0x330
	.uleb128 0x5
	.4byte	0x424
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0xb
	.byte	0x77
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x10
	.byte	0x1
	.byte	0x36
	.4byte	0x4e8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x4e8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x164
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x8b
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x4f8
	.4byte	0x4f8
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x164
	.uleb128 0x1e
	.4byte	0x4a8
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.uleb128 0x5
	.byte	0x3
	.4byte	h_errno
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.4byte	0x11a
	.4byte	0x521
	.uleb128 0x3
	.4byte	0x11a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x541
	.uleb128 0x3
	.4byte	0x84
	.uleb128 0x3
	.4byte	0x2b
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x9
	.byte	0x93
	.byte	0x7
	.4byte	0x84
	.4byte	0x557
	.uleb128 0x3
	.4byte	0x283
	.byte	0
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x5
	.byte	0xd6
	.byte	0x5
	.4byte	0x2b
	.4byte	0x572
	.uleb128 0x3
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0x572
	.byte	0
	.uleb128 0x5
	.4byte	0x158
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xe
	.byte	0x51
	.byte	0x5
	.4byte	0x2b
	.4byte	0x58d
	.uleb128 0x3
	.4byte	0xa1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x9
	.byte	0x95
	.byte	0x6
	.4byte	0x5a4
	.uleb128 0x3
	.4byte	0x283
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x5c4
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x3
	.4byte	0xc0
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xd
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x5da
	.uleb128 0x3
	.4byte	0xa1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xd
	.byte	0x2c
	.byte	0x7
	.4byte	0x8b
	.4byte	0x5fa
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0xf
	.2byte	0x16c
	.byte	0x7
	.4byte	0x20a
	.4byte	0x616
	.uleb128 0x3
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0x4f8
	.byte	0
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x702
	.uleb128 0x11
	.4byte	.LASF115
	.2byte	0x112
	.byte	0x1e
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.4byte	.LASF116
	.2byte	0x112
	.byte	0x34
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.4byte	.LASF117
	.2byte	0x113
	.byte	0x29
	.4byte	0x702
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.string	"res"
	.byte	0x1
	.2byte	0x113
	.byte	0x42
	.4byte	0x707
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"err"
	.2byte	0x115
	.byte	0x9
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xd
	.4byte	.LASF29
	.2byte	0x116
	.byte	0xd
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"ai"
	.2byte	0x117
	.byte	0x14
	.4byte	0x4a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"sa"
	.2byte	0x118
	.byte	0x1c
	.4byte	0x70c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF118
	.2byte	0x119
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF119
	.2byte	0x11a
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF120
	.2byte	0x11b
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF96
	.2byte	0x11c
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x10
	.string	"sa4"
	.2byte	0x18b
	.byte	0x19
	.4byte	0x711
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x499
	.uleb128 0x5
	.4byte	0x4a3
	.uleb128 0x5
	.4byte	0x374
	.uleb128 0x5
	.4byte	0x2e2
	.uleb128 0x24
	.4byte	.LASF140
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x748
	.uleb128 0x12
	.string	"ai"
	.byte	0xf1
	.byte	0x24
	.4byte	0x4a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0xf3
	.byte	0x14
	.4byte	0x4a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0xa7
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fb
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xa7
	.byte	0x22
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"ret"
	.byte	0xa7
	.byte	0x38
	.4byte	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"buf"
	.byte	0xa7
	.byte	0x43
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xa8
	.byte	0x1d
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xa8
	.byte	0x36
	.4byte	0x800
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0xa8
	.byte	0x43
	.4byte	0x805
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"err"
	.byte	0xaa
	.byte	0x9
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x13
	.string	"h"
	.byte	0xab
	.byte	0x22
	.4byte	0x80a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0xac
	.byte	0x9
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF120
	.byte	0xad
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0xae
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	0x3d1
	.uleb128 0x5
	.4byte	0x7fb
	.uleb128 0x5
	.4byte	0x2b
	.uleb128 0x5
	.4byte	0x4b4
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x5d
	.4byte	0x7fb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a7
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x5d
	.byte	0x20
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"err"
	.byte	0x5f
	.byte	0x9
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x60
	.byte	0xd
	.4byte	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x63
	.byte	0x19
	.4byte	0x3d1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent.1
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x64
	.byte	0x10
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_aliases.0
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x65
	.byte	0x14
	.4byte	0x164
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent_addr.4
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x66
	.byte	0x15
	.4byte	0x4e8
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phostent_addr.3
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x67
	.byte	0xf
	.4byte	0x8a7
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostname.2
	.byte	0
	.uleb128 0x25
	.4byte	0x95
	.uleb128 0x26
	.4byte	0x6a
	.2byte	0x100
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"MEMP_UDP_PCB"
.LASF104:
	.string	"addr_list"
.LASF60:
	.string	"MEMP_SYS_TIMEOUT"
.LASF23:
	.string	"mem_ptr_t"
.LASF95:
	.string	"ai_flags"
.LASF13:
	.string	"size_t"
.LASF121:
	.string	"next"
.LASF18:
	.string	"uintptr_t"
.LASF61:
	.string	"MEMP_NETDB"
.LASF105:
	.string	"aliases"
.LASF94:
	.string	"addrinfo"
.LASF139:
	.string	"memp_free"
.LASF82:
	.string	"sockaddr_storage"
.LASF65:
	.string	"memp_t"
.LASF113:
	.string	"strncpy"
.LASF9:
	.string	"long long unsigned int"
.LASF26:
	.string	"in_addr_t"
.LASF118:
	.string	"port_nr"
.LASF53:
	.string	"MEMP_TCP_SEG"
.LASF87:
	.string	"socklen_t"
.LASF119:
	.string	"total_size"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF7:
	.string	"long unsigned int"
.LASF39:
	.string	"ERR_USE"
.LASF132:
	.string	"s_aliases"
.LASF34:
	.string	"ERR_TIMEOUT"
.LASF128:
	.string	"hostname"
.LASF6:
	.string	"long int"
.LASF49:
	.string	"MEMP_RAW_PCB"
.LASF27:
	.string	"ip4_addr"
.LASF111:
	.string	"memcpy"
.LASF88:
	.string	"hostent"
.LASF69:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF43:
	.string	"ERR_IF"
.LASF31:
	.string	"ERR_OK"
.LASF64:
	.string	"MEMP_MAX"
.LASF59:
	.string	"MEMP_IGMP_GROUP"
.LASF11:
	.string	"long double"
.LASF52:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF77:
	.string	"sin_zero"
.LASF108:
	.string	"memp_malloc"
.LASF10:
	.string	"unsigned int"
.LASF30:
	.string	"s_addr"
.LASF16:
	.string	"uint16_t"
.LASF129:
	.string	"lh_errno"
.LASF112:
	.string	"strlen"
.LASF97:
	.string	"ai_socktype"
.LASF89:
	.string	"h_name"
.LASF40:
	.string	"ERR_ALREADY"
.LASF22:
	.string	"u32_t"
.LASF131:
	.string	"s_hostent"
.LASF124:
	.string	"name"
.LASF51:
	.string	"MEMP_TCP_PCB"
.LASF5:
	.string	"short unsigned int"
.LASF76:
	.string	"sin_addr"
.LASF24:
	.string	"ip4_addr_t"
.LASF91:
	.string	"h_addrtype"
.LASF71:
	.string	"in_port_t"
.LASF106:
	.string	"lwip_htons"
.LASF109:
	.string	"ip4addr_aton"
.LASF19:
	.string	"u8_t"
.LASF79:
	.string	"sa_len"
.LASF74:
	.string	"sin_family"
.LASF25:
	.string	"ip_addr_t"
.LASF48:
	.string	"err_t"
.LASF135:
	.string	"s_hostname"
.LASF134:
	.string	"s_phostent_addr"
.LASF90:
	.string	"h_aliases"
.LASF73:
	.string	"sin_len"
.LASF85:
	.string	"s2_data1"
.LASF86:
	.string	"s2_data2"
.LASF70:
	.string	"sa_family_t"
.LASF99:
	.string	"ai_addrlen"
.LASF36:
	.string	"ERR_INPROGRESS"
.LASF75:
	.string	"sin_port"
.LASF80:
	.string	"sa_family"
.LASF92:
	.string	"h_length"
.LASF93:
	.string	"h_addr_list"
.LASF67:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF37:
	.string	"ERR_VAL"
.LASF29:
	.string	"addr"
.LASF110:
	.string	"atoi"
.LASF3:
	.string	"unsigned char"
.LASF47:
	.string	"ERR_ARG"
.LASF42:
	.string	"ERR_CONN"
.LASF68:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF100:
	.string	"ai_addr"
.LASF4:
	.string	"short int"
.LASF98:
	.string	"ai_protocol"
.LASF102:
	.string	"ai_next"
.LASF125:
	.string	"buflen"
.LASF66:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF20:
	.string	"s8_t"
.LASF140:
	.string	"lwip_freeaddrinfo"
.LASF45:
	.string	"ERR_RST"
.LASF17:
	.string	"uint32_t"
.LASF12:
	.string	"char"
.LASF57:
	.string	"MEMP_TCPIP_MSG_API"
.LASF130:
	.string	"lwip_gethostbyname"
.LASF44:
	.string	"ERR_ABRT"
.LASF84:
	.string	"ss_family"
.LASF55:
	.string	"MEMP_NETBUF"
.LASF78:
	.string	"sockaddr"
.LASF32:
	.string	"ERR_MEM"
.LASF56:
	.string	"MEMP_NETCONN"
.LASF54:
	.string	"MEMP_ALTCP_PCB"
.LASF63:
	.string	"MEMP_PBUF_POOL"
.LASF96:
	.string	"ai_family"
.LASF114:
	.string	"netconn_gethostbyname"
.LASF138:
	.string	"h_errno"
.LASF120:
	.string	"namelen"
.LASF136:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF46:
	.string	"ERR_CLSD"
.LASF35:
	.string	"ERR_RTE"
.LASF14:
	.string	"int8_t"
.LASF116:
	.string	"servname"
.LASF21:
	.string	"u16_t"
.LASF33:
	.string	"ERR_BUF"
.LASF117:
	.string	"hints"
.LASF107:
	.string	"memset"
.LASF137:
	.string	"lwip_internal_netif_client_data_index"
.LASF41:
	.string	"ERR_ISCONN"
.LASF72:
	.string	"sockaddr_in"
.LASF15:
	.string	"uint8_t"
.LASF122:
	.string	"lwip_getaddrinfo"
.LASF115:
	.string	"nodename"
.LASF123:
	.string	"lwip_gethostbyname_r"
.LASF133:
	.string	"s_hostent_addr"
.LASF38:
	.string	"ERR_WOULDBLOCK"
.LASF83:
	.string	"s2_len"
.LASF81:
	.string	"sa_data"
.LASF101:
	.string	"ai_canonname"
.LASF127:
	.string	"h_errnop"
.LASF62:
	.string	"MEMP_PBUF"
.LASF126:
	.string	"result"
.LASF103:
	.string	"gethostbyname_r_helper"
.LASF58:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF28:
	.string	"in_addr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/netdb.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
