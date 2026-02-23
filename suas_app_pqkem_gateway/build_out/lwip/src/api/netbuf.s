	.file	"netbuf.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/netbuf.c"
	.section	.text.netbuf_new,"ax",@progbits
	.align	1
	.globl	netbuf_new
	.type	netbuf_new, @function
netbuf_new:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/netbuf.c"
	.loc 1 64 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 67 26
	li	a0,6
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 68 6
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	.loc 1 69 5
	li	a2,20
	li	a1,0
	lw	a0,-20(s0)
	call	memset
.L2:
	.loc 1 71 10
	lw	a5,-20(s0)
	.loc 1 72 1
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
.LFE5:
	.size	netbuf_new, .-netbuf_new
	.section	.text.netbuf_delete,"ax",@progbits
	.align	1
	.globl	netbuf_delete
	.type	netbuf_delete, @function
netbuf_delete:
.LFB6:
	.loc 1 82 1
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
	.loc 1 83 6
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 1 84 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 84 8
	beq	a5,zero,.L6
	.loc 1 85 7
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pbuf_free
	.loc 1 86 25
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 86 19
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 86 14
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L6:
	.loc 1 88 5
	lw	a1,-20(s0)
	li	a0,6
	call	memp_free
.L7:
	.loc 1 90 1
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
.LFE6:
	.size	netbuf_delete, .-netbuf_delete
	.section	.text.netbuf_alloc,"ax",@progbits
	.align	1
	.globl	netbuf_alloc
	.type	netbuf_alloc, @function
netbuf_alloc:
.LFB7:
	.loc 1 103 1
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
	.loc 1 104 11
	lw	a5,-20(s0)
	bne	a5,zero,.L9
	.loc 1 104 2 discriminator 1
	li	a5,0
	.loc 1 104 2 is_stmt 0
	j	.L10
.L9:
	.loc 1 107 10 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 107 6
	beq	a5,zero,.L11
	.loc 1 108 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pbuf_free
.L11:
	.loc 1 110 12
	lhu	a5,-22(s0)
	li	a2,640
	mv	a1,a5
	li	a0,182
	call	pbuf_alloc
	mv	a4,a0
	.loc 1 110 10 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 111 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 111 6
	bne	a5,zero,.L12
	.loc 1 112 11
	li	a5,0
	j	.L10
.L12:
	.loc 1 116 17
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 116 12
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 117 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 117 16
	lw	a5,4(a5)
.L10:
	.loc 1 118 1
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
.LFE7:
	.size	netbuf_alloc, .-netbuf_alloc
	.section	.text.netbuf_free,"ax",@progbits
	.align	1
	.globl	netbuf_free
	.type	netbuf_free, @function
netbuf_free:
.LFB8:
	.loc 1 128 1
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
	.loc 1 129 11
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	.loc 1 130 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 130 6
	beq	a5,zero,.L16
	.loc 1 131 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pbuf_free
.L16:
	.loc 1 133 21
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 133 15
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 133 10
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 135 14
	lw	a5,-20(s0)
	sb	zero,14(a5)
	.loc 1 136 22
	lw	a5,-20(s0)
	sh	zero,16(a5)
	j	.L13
.L17:
	.loc 1 129 10
	nop
.L13:
	.loc 1 138 1
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
	.size	netbuf_free, .-netbuf_free
	.section	.text.netbuf_ref,"ax",@progbits
	.align	1
	.globl	netbuf_ref
	.type	netbuf_ref, @function
netbuf_ref:
.LFB9:
	.loc 1 152 1
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
	mv	a5,a2
	sh	a5,-26(s0)
	.loc 1 153 11
	lw	a5,-20(s0)
	bne	a5,zero,.L19
	.loc 1 153 17 discriminator 1
	li	a5,-16
	.loc 1 153 17 is_stmt 0
	j	.L20
.L19:
	.loc 1 154 10 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 154 6
	beq	a5,zero,.L21
	.loc 1 155 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pbuf_free
.L21:
	.loc 1 157 12
	li	a2,65
	li	a1,0
	li	a0,182
	call	pbuf_alloc
	mv	a4,a0
	.loc 1 157 10 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 158 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 158 6
	bne	a5,zero,.L22
	.loc 1 159 14
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 160 12
	li	a5,-1
	j	.L20
.L22:
	.loc 1 162 26
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 162 40
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 163 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 163 33
	lhu	a4,-26(s0)
	sh	a4,8(a5)
	.loc 1 163 6
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 163 23
	lhu	a5,8(a5)
	.loc 1 163 15
	sh	a5,10(a4)
	.loc 1 164 17
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 164 12
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 165 10
	li	a5,0
.L20:
	.loc 1 166 1
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
.LFE9:
	.size	netbuf_ref, .-netbuf_ref
	.section	.text.netbuf_chain,"ax",@progbits
	.align	1
	.globl	netbuf_chain
	.type	netbuf_chain, @function
netbuf_chain:
.LFB10:
	.loc 1 177 1
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
	.loc 1 178 11
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 1 179 11
	lw	a5,-24(s0)
	beq	a5,zero,.L28
	.loc 1 180 3
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_cat
	.loc 1 181 19
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 181 13
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 182 3
	lw	a1,-24(s0)
	li	a0,6
	call	memp_free
	j	.L23
.L27:
	.loc 1 178 10
	nop
	j	.L23
.L28:
	.loc 1 179 10
	nop
.L23:
	.loc 1 183 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	netbuf_chain, .-netbuf_chain
	.section	.text.netbuf_data,"ax",@progbits
	.align	1
	.globl	netbuf_data
	.type	netbuf_data, @function
netbuf_data:
.LFB11:
	.loc 1 197 1
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
	.loc 1 198 11
	lw	a5,-20(s0)
	bne	a5,zero,.L30
	.loc 1 198 17 discriminator 1
	li	a5,-16
	.loc 1 198 17 is_stmt 0
	j	.L31
.L30:
	.loc 1 199 11 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L32
	.loc 1 199 17 discriminator 1
	li	a5,-16
	.loc 1 199 17 is_stmt 0
	j	.L31
.L32:
	.loc 1 200 11 is_stmt 1
	lw	a5,-28(s0)
	bne	a5,zero,.L33
	.loc 1 200 17 discriminator 1
	li	a5,-16
	.loc 1 200 17 is_stmt 0
	j	.L31
.L33:
	.loc 1 202 10 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 202 6
	bne	a5,zero,.L34
	.loc 1 203 12
	li	a5,-2
	j	.L31
.L34:
	.loc 1 205 17
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 205 22
	lw	a4,4(a5)
	.loc 1 205 12
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 206 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 206 18
	lhu	a4,10(a5)
	.loc 1 206 8
	lw	a5,-28(s0)
	sh	a4,0(a5)
	.loc 1 207 10
	li	a5,0
.L31:
	.loc 1 208 1
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
.LFE11:
	.size	netbuf_data, .-netbuf_data
	.section	.text.netbuf_next,"ax",@progbits
	.align	1
	.globl	netbuf_next
	.type	netbuf_next, @function
netbuf_next:
.LFB12:
	.loc 1 223 1
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
	.loc 1 224 11
	lw	a5,-20(s0)
	bne	a5,zero,.L36
	.loc 1 224 17 discriminator 1
	li	a5,-1
	.loc 1 224 17 is_stmt 0
	j	.L37
.L36:
	.loc 1 225 10 is_stmt 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 225 15
	lw	a5,0(a5)
	.loc 1 225 6
	bne	a5,zero,.L38
	.loc 1 226 12
	li	a5,-1
	j	.L37
.L38:
	.loc 1 228 17
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 228 22
	lw	a4,0(a5)
	.loc 1 228 12
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 229 10
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 229 15
	lw	a5,0(a5)
	.loc 1 229 6
	bne	a5,zero,.L39
	.loc 1 230 12
	li	a5,1
	j	.L37
.L39:
	.loc 1 232 10
	li	a5,0
.L37:
	.loc 1 233 1
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
.LFE12:
	.size	netbuf_next, .-netbuf_next
	.section	.text.netbuf_first,"ax",@progbits
	.align	1
	.globl	netbuf_first
	.type	netbuf_first, @function
netbuf_first:
.LFB13:
	.loc 1 245 1
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
	.loc 1 246 11
	lw	a5,-20(s0)
	beq	a5,zero,.L43
	.loc 1 247 17
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 247 12
	lw	a5,-20(s0)
	sw	a4,4(a5)
	j	.L40
.L43:
	.loc 1 246 10
	nop
.L40:
	.loc 1 248 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	netbuf_first, .-netbuf_first
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netbuf.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5d1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	0x92
	.uleb128 0x16
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xb7
	.uleb128 0xa
	.byte	0x5
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x167
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0x2
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0x2
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0x2
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0x2
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0x2
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0x2
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0x2
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0x2
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0x2
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0x2
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0x2
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0x2
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0x2
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0x2
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xcf
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x6
	.byte	0x59
	.4byte	0x19f
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xb6
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xa2
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x8e
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x70
	.byte	0x3
	.4byte	0x173
	.uleb128 0xa
	.byte	0x7
	.byte	0x2
	.4byte	0x47
	.byte	0x6
	.byte	0x91
	.4byte	0x1d3
	.uleb128 0xe
	.4byte	.LASF46
	.2byte	0x280
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x41
	.uleb128 0xe
	.4byte	.LASF49
	.2byte	0x182
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x6
	.byte	0xa8
	.byte	0x3
	.4byte	0x1ab
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.4byte	0x254
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x254
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xdb
	.byte	0x8
	.uleb128 0xc
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xdb
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xc3
	.byte	0xd
	.uleb128 0xc
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xc3
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xc3
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x1df
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0x6
	.byte	0xe8
	.4byte	0x280
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x6
	.byte	0xea
	.byte	0x10
	.4byte	0x254
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x6
	.byte	0xed
	.byte	0xf
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.4byte	0x29a
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xe7
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x280
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x29a
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x14
	.byte	0x9
	.byte	0x3c
	.4byte	0x30c
	.uleb128 0xc
	.string	"p"
	.byte	0x9
	.byte	0x3d
	.byte	0x10
	.4byte	0x254
	.byte	0
	.uleb128 0xc
	.string	"ptr"
	.byte	0x9
	.byte	0x3d
	.byte	0x14
	.4byte	0x254
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0x3e
	.byte	0xd
	.4byte	0x2a6
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3f
	.byte	0x9
	.4byte	0xdb
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x9
	.byte	0x41
	.byte	0x8
	.4byte	0xc3
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.4byte	0xdb
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0xa
	.byte	0x34
	.4byte	0x37a
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xa
	.byte	0x38
	.byte	0x3
	.4byte	0x30c
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x127
	.byte	0x6
	.4byte	0x39e
	.uleb128 0x5
	.4byte	0x254
	.uleb128 0x5
	.4byte	0x254
	.byte	0
	.uleb128 0xf
	.4byte	.LASF85
	.2byte	0x113
	.byte	0xe
	.4byte	0x254
	.4byte	0x3be
	.uleb128 0x5
	.4byte	0x19f
	.uleb128 0x5
	.4byte	0xdb
	.uleb128 0x5
	.4byte	0x1d3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0xa
	.byte	0x95
	.byte	0x6
	.4byte	0x3d5
	.uleb128 0x5
	.4byte	0x37a
	.uleb128 0x5
	.4byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF86
	.2byte	0x125
	.byte	0x6
	.4byte	0xc3
	.4byte	0x3eb
	.uleb128 0x5
	.4byte	0x254
	.byte	0
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x40b
	.uleb128 0x5
	.4byte	0x84
	.uleb128 0x5
	.4byte	0x2b
	.uleb128 0x5
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0xa
	.byte	0x93
	.byte	0x7
	.4byte	0x84
	.4byte	0x421
	.uleb128 0x5
	.4byte	0x37a
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x446
	.uleb128 0x7
	.string	"buf"
	.byte	0xf4
	.byte	0x1d
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x2b3
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0xde
	.4byte	0xcf
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x472
	.uleb128 0x7
	.string	"buf"
	.byte	0xde
	.byte	0x1c
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0xc4
	.4byte	0x167
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b5
	.uleb128 0x7
	.string	"buf"
	.byte	0xc4
	.byte	0x1c
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0xc4
	.byte	0x28
	.4byte	0x4b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"len"
	.byte	0xc4
	.byte	0x38
	.4byte	0x4ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	0x84
	.uleb128 0x9
	.4byte	0xdb
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0xb0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f0
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0xb0
	.byte	0x1d
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0xb0
	.byte	0x32
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x97
	.4byte	0x167
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x533
	.uleb128 0x7
	.string	"buf"
	.byte	0x97
	.byte	0x1b
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x97
	.byte	0x2c
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x97
	.byte	0x3b
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x7f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x556
	.uleb128 0x7
	.string	"buf"
	.byte	0x7f
	.byte	0x1c
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x66
	.4byte	0x84
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0x7
	.string	"buf"
	.byte	0x66
	.byte	0x1d
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x66
	.byte	0x28
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0x51
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ae
	.uleb128 0x7
	.string	"buf"
	.byte	0x51
	.byte	0x1e
	.4byte	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0x446
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x41
	.byte	0x12
	.4byte	0x446
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x11
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"MEMP_ALTCP_PCB"
.LASF79:
	.string	"MEMP_PBUF"
.LASF86:
	.string	"pbuf_free"
.LASF84:
	.string	"memp_free"
.LASF90:
	.string	"netbuf_data"
.LASF14:
	.string	"int8_t"
.LASF99:
	.string	"netbuf_alloc"
.LASF35:
	.string	"ERR_ABRT"
.LASF23:
	.string	"ERR_MEM"
.LASF32:
	.string	"ERR_ISCONN"
.LASF73:
	.string	"MEMP_NETCONN"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF70:
	.string	"MEMP_TCP_SEG"
.LASF37:
	.string	"ERR_CLSD"
.LASF72:
	.string	"MEMP_NETBUF"
.LASF94:
	.string	"head"
.LASF46:
	.string	"PBUF_RAM"
.LASF69:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF36:
	.string	"ERR_RST"
.LASF44:
	.string	"PBUF_RAW"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF78:
	.string	"MEMP_NETDB"
.LASF58:
	.string	"pbuf_rom"
.LASF19:
	.string	"s8_t"
.LASF8:
	.string	"long long int"
.LASF89:
	.string	"netbuf_next"
.LASF96:
	.string	"netbuf_ref"
.LASF63:
	.string	"netbuf"
.LASF87:
	.string	"memset"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"ip_addr_t"
.LASF60:
	.string	"addr"
.LASF31:
	.string	"ERR_ALREADY"
.LASF54:
	.string	"type_internal"
.LASF83:
	.string	"pbuf_cat"
.LASF3:
	.string	"unsigned char"
.LASF11:
	.string	"long double"
.LASF95:
	.string	"tail"
.LASF26:
	.string	"ERR_RTE"
.LASF33:
	.string	"ERR_CONN"
.LASF81:
	.string	"MEMP_MAX"
.LASF56:
	.string	"if_idx"
.LASF2:
	.string	"signed char"
.LASF55:
	.string	"flags"
.LASF9:
	.string	"long long unsigned int"
.LASF65:
	.string	"toport_chksum"
.LASF17:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF34:
	.string	"ERR_IF"
.LASF45:
	.string	"pbuf_layer"
.LASF76:
	.string	"MEMP_IGMP_GROUP"
.LASF24:
	.string	"ERR_BUF"
.LASF49:
	.string	"PBUF_POOL"
.LASF98:
	.string	"netbuf_free"
.LASF39:
	.string	"err_t"
.LASF12:
	.string	"char"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF74:
	.string	"MEMP_TCPIP_MSG_API"
.LASF5:
	.string	"short unsigned int"
.LASF85:
	.string	"pbuf_alloc"
.LASF82:
	.string	"memp_t"
.LASF102:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF59:
	.string	"ip4_addr"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF93:
	.string	"netbuf_chain"
.LASF77:
	.string	"MEMP_SYS_TIMEOUT"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF41:
	.string	"PBUF_IP"
.LASF64:
	.string	"port"
.LASF92:
	.string	"netbuf_first"
.LASF7:
	.string	"long unsigned int"
.LASF50:
	.string	"pbuf_type"
.LASF66:
	.string	"MEMP_RAW_PCB"
.LASF61:
	.string	"ip4_addr_t"
.LASF97:
	.string	"size"
.LASF100:
	.string	"netbuf_delete"
.LASF22:
	.string	"ERR_OK"
.LASF18:
	.string	"u8_t"
.LASF21:
	.string	"u32_t"
.LASF15:
	.string	"uint8_t"
.LASF20:
	.string	"u16_t"
.LASF80:
	.string	"MEMP_PBUF_POOL"
.LASF30:
	.string	"ERR_USE"
.LASF101:
	.string	"netbuf_new"
.LASF75:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF91:
	.string	"dataptr"
.LASF53:
	.string	"tot_len"
.LASF68:
	.string	"MEMP_TCP_PCB"
.LASF38:
	.string	"ERR_ARG"
.LASF88:
	.string	"memp_malloc"
.LASF67:
	.string	"MEMP_UDP_PCB"
.LASF48:
	.string	"PBUF_REF"
.LASF28:
	.string	"ERR_VAL"
.LASF47:
	.string	"PBUF_ROM"
.LASF52:
	.string	"payload"
.LASF51:
	.string	"next"
.LASF57:
	.string	"pbuf"
.LASF42:
	.string	"PBUF_LINK"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/netbuf.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
