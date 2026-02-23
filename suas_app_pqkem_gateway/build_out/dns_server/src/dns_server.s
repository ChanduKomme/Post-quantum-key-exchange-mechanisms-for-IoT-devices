	.file	"dns_server.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/dns_server" "/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/dns_server.c"
	.section	.rodata
	.align	2
.LC0:
	.half	0
	.half	-32384
	.half	1
	.half	1
	.half	0
	.half	0
	.half	1
	.half	1
	.half	-16372
	.half	1
	.half	1
	.half	0
	.word	3932164
	.word	-1062688511
	.section	.text.dns_server_send,"ax",@progbits
	.align	1
	.type	dns_server_send, @function
dns_server_send:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/dns_server.c"
	.loc 1 75 1
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
	.loc 1 76 18
	sw	zero,-28(s0)
	.loc 1 82 28
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a7,0(a5)
	lw	a6,4(a5)
	lw	a0,8(a5)
	lw	a1,12(a5)
	lw	a2,16(a5)
	lw	a3,20(a5)
	lw	a4,24(a5)
	sw	a7,-104(s0)
	sw	a6,-100(s0)
	sw	a0,-96(s0)
	sw	a1,-92(s0)
	sw	a2,-88(s0)
	sw	a3,-84(s0)
	sw	a4,-80(s0)
	lw	a5,28(a5)
	sw	a5,-76(s0)
	.loc 1 98 29
	addi	a5,s0,-104
	sw	a5,-32(s0)
	.loc 1 100 10
	li	a2,640
	li	a1,512
	li	a0,182
	call	pbuf_alloc
	sw	a0,-28(s0)
	.loc 1 101 8
	lw	a5,-28(s0)
	beq	a5,zero,.L7
	.loc 1 102 9
	addi	a5,s0,-52
	li	a2,12
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 104 36
	lw	a5,-116(s0)
	lhu	a5,256(a5)
	.loc 1 104 18
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 104 16 discriminator 1
	sh	a5,-52(s0)
	.loc 1 105 36
	lw	a5,-32(s0)
	lhu	a5,2(a5)
	.loc 1 105 20
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 105 18 discriminator 1
	sh	a5,-50(s0)
	.loc 1 106 44
	lw	a5,-32(s0)
	lhu	a5,4(a5)
	.loc 1 106 28
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 106 26 discriminator 1
	sh	a5,-48(s0)
	.loc 1 107 42
	lw	a5,-32(s0)
	lhu	a5,6(a5)
	.loc 1 107 26
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 107 24 discriminator 1
	sh	a5,-46(s0)
	.loc 1 108 41
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	.loc 1 108 25
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 108 23 discriminator 1
	sh	a5,-44(s0)
	.loc 1 109 42
	lw	a5,-32(s0)
	lhu	a5,10(a5)
	.loc 1 109 26
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 109 24 discriminator 1
	sh	a5,-42(s0)
	.loc 1 110 9
	addi	a5,s0,-52
	li	a2,12
	mv	a1,a5
	lw	a0,-28(s0)
	call	pbuf_take
	.loc 1 112 18
	lw	a5,-116(s0)
	sw	a5,-24(s0)
	.loc 1 113 9
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 114 19
	li	a5,12
	sh	a5,-20(s0)
.L6:
	.loc 1 116 13
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 117 27
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	.loc 1 118 20
	sb	zero,-17(s0)
	.loc 1 118 13
	j	.L3
.L5:
	.loc 1 119 17
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 118 61 discriminator 4
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L3:
	.loc 1 118 25 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 118 42 discriminator 1
	li	a5,46
	beq	a4,a5,.L4
	.loc 1 118 45 discriminator 3
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 118 42 discriminator 3
	bne	a5,zero,.L5
.L4:
	.loc 1 121 41
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 1 121 22
	sh	a5,-38(s0)
	.loc 1 122 13
	lbu	a4,-17(s0)
	lhu	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-28(s0)
	call	pbuf_put_at
	.loc 1 123 13
	lhu	a5,-20(s0)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a5,-38(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	pbuf_take_at
	.loc 1 124 23
	lbu	a5,-17(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	sh	a5,-20(s0)
	.loc 1 125 18
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 125 28
	bne	a5,zero,.L6
	.loc 1 126 9
	lhu	a5,-20(s0)
	li	a2,0
	mv	a1,a5
	lw	a0,-28(s0)
	call	pbuf_put_at
	.loc 1 127 18
	lhu	a5,-20(s0)
	addi	a5,a5,1
	sh	a5,-20(s0)
	.loc 1 129 35
	lw	a5,-32(s0)
	lhu	a5,12(a5)
	.loc 1 129 19
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 129 17 discriminator 1
	sh	a5,-72(s0)
	.loc 1 130 35
	lw	a5,-32(s0)
	lhu	a5,14(a5)
	.loc 1 130 19
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 130 17 discriminator 1
	sh	a5,-70(s0)
	.loc 1 131 37
	lw	a5,-32(s0)
	lhu	a5,16(a5)
	.loc 1 131 21
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 131 19 discriminator 1
	sh	a5,-68(s0)
	.loc 1 132 37
	lw	a5,-32(s0)
	lhu	a5,18(a5)
	.loc 1 132 21
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 132 19 discriminator 1
	sh	a5,-66(s0)
	.loc 1 133 38
	lw	a5,-32(s0)
	lhu	a5,20(a5)
	.loc 1 133 22
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 133 20 discriminator 1
	sh	a5,-64(s0)
	.loc 1 134 35
	lw	a5,-32(s0)
	lhu	a5,22(a5)
	.loc 1 134 19
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 134 17 discriminator 1
	sh	a5,-62(s0)
	.loc 1 135 36
	lw	a5,-32(s0)
	lw	a5,24(a5)
	.loc 1 135 20
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 135 18 discriminator 1
	sw	a5,-60(s0)
	.loc 1 136 36
	lw	a5,-32(s0)
	lw	a5,28(a5)
	.loc 1 136 20
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 136 18 discriminator 1
	sw	a5,-56(s0)
	.loc 1 137 9
	lhu	a4,-20(s0)
	addi	a5,s0,-72
	mv	a3,a4
	li	a2,20
	mv	a1,a5
	lw	a0,-28(s0)
	call	pbuf_take_at
	.loc 1 139 9
	lhu	a5,-20(s0)
	addi	a5,a5,20
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	lw	a0,-28(s0)
	call	pbuf_realloc
	.loc 1 140 9
	lw	a5,-116(s0)
	lw	a4,264(a5)
	lw	a5,-116(s0)
	lw	a2,268(a5)
	lw	a5,-116(s0)
	lhu	a5,272(a5)
	mv	a3,a5
	lw	a1,-28(s0)
	mv	a0,a4
	call	udp_sendto
	.loc 1 141 9
	lw	a0,-28(s0)
	call	pbuf_free
.L7:
	.loc 1 143 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	dns_server_send, .-dns_server_send
	.section	.text.get_dns_request,"ax",@progbits
	.align	1
	.globl	get_dns_request
	.type	get_dns_request, @function
get_dns_request:
.LFB7:
	.loc 1 146 1
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
	mv	a5,a4
	sh	a5,-66(s0)
	.loc 1 148 28
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	.loc 1 151 20
	lw	a5,-20(s0)
	lw	a4,-56(s0)
	sw	a4,264(a5)
	.loc 1 152 20
	lw	a5,-20(s0)
	lw	a4,-64(s0)
	sw	a4,268(a5)
	.loc 1 153 20
	lw	a5,-20(s0)
	lhu	a4,-66(s0)
	sh	a4,272(a5)
	.loc 1 155 10
	lw	a5,-60(s0)
	lhu	a4,8(a5)
	.loc 1 155 8
	li	a5,11
	bleu	a4,a5,.L9
	.loc 1 159 9
	addi	a5,s0,-32
	li	a3,0
	li	a2,12
	mv	a1,a5
	lw	a0,-60(s0)
	call	pbuf_copy_partial
	.loc 1 160 39
	lhu	a5,-32(s0)
	.loc 1 160 25
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 160 23 discriminator 1
	lw	a5,-20(s0)
	sh	a4,256(a5)
	.loc 1 161 45
	lhu	a5,-28(s0)
	.loc 1 161 31
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 161 29 discriminator 1
	lw	a5,-20(s0)
	sh	a4,258(a5)
	.loc 1 164 20
	lw	a1,-20(s0)
	.loc 1 165 20
	lw	a5,-60(s0)
	lhu	a5,8(a5)
	.loc 1 165 86
	slli	a3,a5,16
	srli	a3,a3,16
	li	a4,255
	bleu	a3,a4,.L10
	li	a5,255
.L10:
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 165 17
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	.loc 1 162 9
	slli	a5,a5,16
	srli	a5,a5,16
	li	a3,12
	mv	a2,a5
	lw	a0,-60(s0)
	call	pbuf_copy_partial
	.loc 1 168 46
	lw	a5,-20(s0)
	.loc 1 168 61
	lw	a4,-20(s0)
	.loc 1 168 18
	addi	a3,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	utils_dns_domain_get
	mv	a5,a0
	.loc 1 168 12 discriminator 1
	bne	a5,zero,.L9
	.loc 1 169 21
	lw	a5,-36(s0)
	.loc 1 169 16
	ble	a5,zero,.L11
	.loc 1 169 53 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,-1
	.loc 1 169 48 discriminator 1
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 169 25 discriminator 1
	li	a5,46
	bne	a4,a5,.L11
	.loc 1 170 20
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-36(s0)
.L11:
	.loc 1 172 26
	lw	a5,-36(s0)
	.loc 1 172 32
	lw	a4,-20(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
.L9:
	.loc 1 175 5
	lw	a0,-60(s0)
	call	pbuf_free
	.loc 1 177 5
	lw	a0,-20(s0)
	call	dns_server_send
	.loc 1 178 1
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
.LFE7:
	.size	get_dns_request, .-get_dns_request
	.section	.text.dns_server_init,"ax",@progbits
	.align	1
	.globl	dns_server_init
	.type	dns_server_init, @function
dns_server_init:
.LFB8:
	.loc 1 181 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 186 12
	call	udp_new
	sw	a0,-20(s0)
	.loc 1 187 8
	lw	a5,-20(s0)
	beq	a5,zero,.L21
	.loc 1 190 11
	li	a2,53
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	lw	a0,-20(s0)
	call	udp_bind
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 191 8
	lb	a5,-21(s0)
	bne	a5,zero,.L22
	.loc 1 194 15
	li	a0,276
	call	pvPortMalloc
	sw	a0,-28(s0)
	.loc 1 195 8
	lw	a5,-28(s0)
	beq	a5,zero,.L23
	.loc 1 198 5
	li	a2,4
	li	a1,0
	lw	a0,-28(s0)
	call	memset
	.loc 1 199 5
	lw	a2,-28(s0)
	lui	a5,%hi(get_dns_request)
	addi	a1,a5,%lo(get_dns_request)
	lw	a0,-20(s0)
	call	udp_recv
	.loc 1 200 5
	j	.L12
.L18:
.L22:
	.loc 1 192 9
	nop
	j	.L16
.L23:
	.loc 1 196 9
	nop
.L16:
	.loc 1 204 5
	lw	a0,-20(s0)
	call	udp_remove
	.loc 1 206 5
	j	.L24
.L21:
	.loc 1 188 9
	nop
.L14:
.L24:
	.loc 1 206 5
	nop
.L12:
	.loc 1 207 1
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
	.size	dns_server_init, .-dns_server_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_dns.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x939
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x10
	.4byte	0x86
	.uleb128 0x6
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x6
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0xd1
	.uleb128 0x1b
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xaf
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xbb
	.uleb128 0x11
	.byte	0x5
	.byte	0x1
	.4byte	0x53
	.byte	0x5
	.byte	0x35
	.4byte	0x176
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0x3
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0x3
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0x3
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0x3
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0x3
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0x3
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0x3
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xde
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x5a
	.byte	0x6
	.byte	0x59
	.4byte	0x1ae
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0xb6
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0xa2
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x8e
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0x70
	.byte	0x3
	.4byte	0x182
	.uleb128 0x11
	.byte	0x7
	.byte	0x2
	.4byte	0x68
	.byte	0x6
	.byte	0x91
	.4byte	0x1e2
	.uleb128 0x13
	.4byte	.LASF46
	.2byte	0x280
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x41
	.uleb128 0x13
	.4byte	.LASF49
	.2byte	0x182
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x6
	.byte	0xa8
	.byte	0x3
	.4byte	0x1ba
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.4byte	0x263
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x268
	.byte	0
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xea
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xea
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xd2
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xd2
	.byte	0xd
	.uleb128 0x9
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xd2
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xd2
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	0x1ee
	.uleb128 0x6
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.4byte	0x287
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xf6
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x26d
	.uleb128 0x1c
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x287
	.uleb128 0x10
	.4byte	0x293
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x18e
	.byte	0x18
	.4byte	0x2a0
	.uleb128 0x6
	.4byte	0x2a0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x9
	.byte	0x4d
	.byte	0x10
	.4byte	0x2c3
	.uleb128 0x6
	.4byte	0x2c8
	.uleb128 0x1e
	.4byte	0x2e7
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x2e7
	.uleb128 0x2
	.4byte	0x268
	.uleb128 0x2
	.4byte	0x2b2
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0x6
	.4byte	0x2ec
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x28
	.byte	0x9
	.byte	0x51
	.4byte	0x3bc
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x9
	.byte	0x53
	.byte	0xd
	.4byte	0x293
	.byte	0
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x9
	.byte	0x53
	.byte	0x21
	.4byte	0x293
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x9
	.byte	0x53
	.byte	0x31
	.4byte	0xd2
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x9
	.byte	0x53
	.byte	0x41
	.4byte	0xd2
	.byte	0x9
	.uleb128 0x9
	.string	"tos"
	.byte	0x9
	.byte	0x53
	.byte	0x52
	.4byte	0xd2
	.byte	0xa
	.uleb128 0x9
	.string	"ttl"
	.byte	0x9
	.byte	0x53
	.byte	0x5c
	.4byte	0xd2
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x9
	.byte	0x57
	.byte	0x13
	.4byte	0x2e7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x9
	.byte	0x59
	.byte	0x8
	.4byte	0xd2
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x9
	.byte	0x5b
	.byte	0x9
	.4byte	0xea
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x9
	.byte	0x5b
	.byte	0x15
	.4byte	0xea
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x9
	.byte	0x60
	.byte	0xe
	.4byte	0x287
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x9
	.byte	0x63
	.byte	0x8
	.4byte	0xd2
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x9
	.byte	0x65
	.byte	0x8
	.4byte	0xd2
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x9
	.byte	0x6e
	.byte	0xf
	.4byte	0x2b7
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x9
	.byte	0x70
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF75
	.2byte	0x114
	.byte	0x1
	.byte	0x1b
	.byte	0x8
	.4byte	0x426
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	0x426
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1d
	.byte	0xe
	.4byte	0xaf
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1e
	.byte	0xe
	.4byte	0xaf
	.2byte	0x102
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x1f
	.byte	0xe
	.4byte	0xaf
	.2byte	0x104
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x20
	.byte	0x15
	.4byte	0x2e7
	.2byte	0x108
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x21
	.byte	0x16
	.4byte	0x2b2
	.2byte	0x10c
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x22
	.byte	0xb
	.4byte	0xea
	.2byte	0x110
	.byte	0
	.uleb128 0x20
	.4byte	0xa3
	.4byte	0x436
	.uleb128 0x21
	.4byte	0x3e
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0xc
	.byte	0x1
	.byte	0x25
	.4byte	0x490
	.uleb128 0x9
	.string	"id"
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0xaf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0xaf
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0x29
	.byte	0xe
	.4byte	0xaf
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2a
	.byte	0xe
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0xaf
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x14
	.byte	0x1
	.byte	0x2e
	.4byte	0x505
	.uleb128 0x9
	.string	"typ"
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0xaf
	.byte	0
	.uleb128 0x9
	.string	"cls"
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.4byte	0xaf
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0xaf
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x34
	.byte	0xe
	.4byte	0xaf
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.4byte	0xbb
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0xbb
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x20
	.byte	0x1
	.byte	0x39
	.4byte	0x5c8
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3a
	.byte	0xe
	.4byte	0xaf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3b
	.byte	0xe
	.4byte	0xaf
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3c
	.byte	0xe
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x1
	.byte	0x3d
	.byte	0xe
	.4byte	0xaf
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.4byte	0xaf
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.byte	0x40
	.byte	0xe
	.4byte	0xaf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x1
	.byte	0x41
	.byte	0xe
	.4byte	0xaf
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0xaf
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x1
	.byte	0x43
	.byte	0xe
	.4byte	0xaf
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0xaf
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0xaf
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.4byte	0xbb
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0xbb
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x79
	.4byte	0x5d8
	.uleb128 0x2
	.4byte	0x2e7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x80
	.4byte	0x5f2
	.uleb128 0x2
	.4byte	0x2e7
	.uleb128 0x2
	.4byte	0x2b7
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xa
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x608
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x9
	.byte	0x7a
	.byte	0x7
	.4byte	0x176
	.4byte	0x628
	.uleb128 0x2
	.4byte	0x2e7
	.uleb128 0x2
	.4byte	0x2b2
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0x9
	.byte	0x77
	.byte	0x12
	.4byte	0x2e7
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0xb
	.byte	0x21
	.byte	0x5
	.4byte	0x2b
	.4byte	0x654
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x654
	.byte	0
	.uleb128 0x6
	.4byte	0x2b
	.uleb128 0xe
	.4byte	.LASF112
	.2byte	0x12c
	.byte	0x7
	.4byte	0xea
	.4byte	0x67e
	.uleb128 0x2
	.4byte	0x67e
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0xea
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0x6
	.4byte	0x263
	.uleb128 0xe
	.4byte	.LASF113
	.2byte	0x125
	.byte	0x6
	.4byte	0xd2
	.4byte	0x699
	.uleb128 0x2
	.4byte	0x268
	.byte	0
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x9
	.byte	0x88
	.byte	0x7
	.4byte	0x176
	.4byte	0x6be
	.uleb128 0x2
	.4byte	0x2e7
	.uleb128 0x2
	.4byte	0x268
	.uleb128 0x2
	.4byte	0x2b2
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0x15
	.4byte	.LASF115
	.2byte	0x11a
	.4byte	0x6d4
	.uleb128 0x2
	.4byte	0x268
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xc
	.byte	0x65
	.byte	0x7
	.4byte	0xf6
	.4byte	0x6ea
	.uleb128 0x2
	.4byte	0xf6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.2byte	0x12f
	.byte	0x7
	.4byte	0x176
	.4byte	0x70f
	.uleb128 0x2
	.4byte	0x268
	.uleb128 0x2
	.4byte	0xcc
	.uleb128 0x2
	.4byte	0xea
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0x15
	.4byte	.LASF118
	.2byte	0x13d
	.4byte	0x72a
	.uleb128 0x2
	.4byte	0x268
	.uleb128 0x2
	.4byte	0xea
	.uleb128 0x2
	.4byte	0xd2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.2byte	0x12e
	.byte	0x7
	.4byte	0x176
	.4byte	0x74a
	.uleb128 0x2
	.4byte	0x268
	.uleb128 0x2
	.4byte	0xcc
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.4byte	0xea
	.4byte	0x760
	.uleb128 0x2
	.4byte	0xea
	.byte	0
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x780
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF122
	.2byte	0x113
	.byte	0xe
	.4byte	0x268
	.4byte	0x7a0
	.uleb128 0x2
	.4byte	0x1ae
	.uleb128 0x2
	.4byte	0xea
	.uleb128 0x2
	.4byte	0x1e2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0xb4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fd
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0xb6
	.byte	0x15
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0xb7
	.byte	0x1c
	.4byte	0x7fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"err"
	.byte	0xb8
	.byte	0xb
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xcd
	.4byte	.L14
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xcb
	.4byte	.L16
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xca
	.4byte	.L18
	.byte	0
	.uleb128 0x6
	.4byte	0x3bc
	.uleb128 0x16
	.4byte	.LASF129
	.byte	0x91
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x886
	.uleb128 0x17
	.string	"arg"
	.byte	0x91
	.byte	0x1c
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x91
	.byte	0x31
	.4byte	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"p"
	.byte	0x91
	.byte	0x44
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x91
	.byte	0x58
	.4byte	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x91
	.byte	0x64
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0xb
	.string	"hdr"
	.byte	0x93
	.byte	0x18
	.4byte	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x94
	.byte	0x1c
	.4byte	0x7fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"len"
	.byte	0x95
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x937
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x4a
	.byte	0x34
	.4byte	0x7fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xb
	.string	"rp"
	.byte	0x4c
	.byte	0x12
	.4byte	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"hdr"
	.byte	0x4d
	.byte	0x18
	.4byte	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"qry"
	.byte	0x4e
	.byte	0x18
	.4byte	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"n"
	.byte	0x4f
	.byte	0xd
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x50
	.byte	0xe
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x50
	.byte	0x19
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x51
	.byte	0x11
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x51
	.byte	0x1c
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x52
	.byte	0x1c
	.4byte	0x505
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0x62
	.byte	0x1d
	.4byte	0x937
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	0x505
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
	.uleb128 0xd
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xa
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"udp_pcb"
.LASF67:
	.string	"so_options"
.LASF81:
	.string	"addr1"
.LASF104:
	.string	"datalen"
.LASF46:
	.string	"PBUF_RAM"
.LASF44:
	.string	"PBUF_RAW"
.LASF50:
	.string	"pbuf_type"
.LASF37:
	.string	"ERR_CLSD"
.LASF30:
	.string	"ERR_USE"
.LASF126:
	.string	"failed_out_2"
.LASF127:
	.string	"failed_out_3"
.LASF38:
	.string	"ERR_ARG"
.LASF2:
	.string	"unsigned int"
.LASF66:
	.string	"netif_idx"
.LASF51:
	.string	"next"
.LASF96:
	.string	"ansrrs"
.LASF39:
	.string	"err_t"
.LASF112:
	.string	"pbuf_copy_partial"
.LASF133:
	.string	"hostname"
.LASF20:
	.string	"u16_t"
.LASF72:
	.string	"mcast_ttl"
.LASF92:
	.string	"antypp"
.LASF116:
	.string	"lwip_htonl"
.LASF120:
	.string	"lwip_htons"
.LASF36:
	.string	"ERR_RST"
.LASF103:
	.string	"anstypee"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF131:
	.string	"query_idx"
.LASF31:
	.string	"ERR_ALREADY"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF119:
	.string	"pbuf_take"
.LASF68:
	.string	"local_port"
.LASF97:
	.string	"autrrs"
.LASF138:
	.string	"ip_addr_any"
.LASF11:
	.string	"long long unsigned int"
.LASF89:
	.string	"dns_ans_ans"
.LASF94:
	.string	"dns_table_entry"
.LASF60:
	.string	"ip4_addr_t"
.LASF109:
	.string	"pvPortMalloc"
.LASF128:
	.string	"dns_server_init"
.LASF93:
	.string	"time"
.LASF28:
	.string	"ERR_VAL"
.LASF48:
	.string	"PBUF_REF"
.LASF95:
	.string	"numque"
.LASF54:
	.string	"type_internal"
.LASF53:
	.string	"tot_len"
.LASF13:
	.string	"size_t"
.LASF79:
	.string	"nanswers"
.LASF52:
	.string	"payload"
.LASF41:
	.string	"PBUF_IP"
.LASF57:
	.string	"pbuf"
.LASF49:
	.string	"PBUF_POOL"
.LASF132:
	.string	"copy_len"
.LASF55:
	.string	"flags"
.LASF19:
	.string	"s8_t"
.LASF139:
	.string	"udp_new"
.LASF83:
	.string	"dns_ans_hdr"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF75:
	.string	"dns_server_ctx"
.LASF135:
	.string	"dns_server_table"
.LASF12:
	.string	"char"
.LASF86:
	.string	"numanswers"
.LASF115:
	.string	"pbuf_realloc"
.LASF80:
	.string	"upcb1"
.LASF70:
	.string	"mcast_ip4"
.LASF15:
	.string	"uint8_t"
.LASF122:
	.string	"pbuf_alloc"
.LASF113:
	.string	"pbuf_free"
.LASF3:
	.string	"long long int"
.LASF111:
	.string	"utils_dns_domain_get"
.LASF34:
	.string	"ERR_IF"
.LASF117:
	.string	"pbuf_take_at"
.LASF18:
	.string	"u8_t"
.LASF114:
	.string	"udp_sendto"
.LASF87:
	.string	"numauthrr"
.LASF124:
	.string	"dns_ctx"
.LASF129:
	.string	"get_dns_request"
.LASF121:
	.string	"memset"
.LASF69:
	.string	"remote_port"
.LASF134:
	.string	"hostname_part"
.LASF102:
	.string	"anstype"
.LASF42:
	.string	"PBUF_LINK"
.LASF106:
	.string	"adress"
.LASF4:
	.string	"long double"
.LASF16:
	.string	"uint16_t"
.LASF56:
	.string	"if_idx"
.LASF24:
	.string	"ERR_BUF"
.LASF62:
	.string	"udp_recv_fn"
.LASF21:
	.string	"u32_t"
.LASF7:
	.string	"short int"
.LASF78:
	.string	"nquestions"
.LASF9:
	.string	"long int"
.LASF85:
	.string	"numquestions"
.LASF101:
	.string	"poiname"
.LASF84:
	.string	"flag"
.LASF64:
	.string	"local_ip"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF71:
	.string	"mcast_ifindex"
.LASF58:
	.string	"ip4_addr"
.LASF32:
	.string	"ERR_ISCONN"
.LASF76:
	.string	"name"
.LASF91:
	.string	"antyp"
.LASF118:
	.string	"pbuf_put_at"
.LASF74:
	.string	"recv_arg"
.LASF10:
	.string	"long unsigned int"
.LASF140:
	.string	"dns_server_send"
.LASF45:
	.string	"pbuf_layer"
.LASF130:
	.string	"port"
.LASF125:
	.string	"failed_out_1"
.LASF88:
	.string	"numextrarr"
.LASF108:
	.string	"udp_recv"
.LASF136:
	.string	"entry"
.LASF99:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF82:
	.string	"port1"
.LASF105:
	.string	"anstime"
.LASF59:
	.string	"addr"
.LASF110:
	.string	"udp_bind"
.LASF35:
	.string	"ERR_ABRT"
.LASF100:
	.string	"class"
.LASF107:
	.string	"udp_remove"
.LASF22:
	.string	"ERR_OK"
.LASF73:
	.string	"recv"
.LASF5:
	.string	"signed char"
.LASF98:
	.string	"addrrs"
.LASF8:
	.string	"short unsigned int"
.LASF33:
	.string	"ERR_CONN"
.LASF90:
	.string	"point"
.LASF65:
	.string	"remote_ip"
.LASF26:
	.string	"ERR_RTE"
.LASF61:
	.string	"ip_addr_t"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF47:
	.string	"PBUF_ROM"
.LASF137:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF77:
	.string	"txid"
.LASF123:
	.string	"upcb"
.LASF23:
	.string	"ERR_MEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/dns_server"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/dns_server.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
