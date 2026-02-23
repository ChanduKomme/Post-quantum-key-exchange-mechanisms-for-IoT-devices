	.file	"bridgeif_fdb.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/netif/bridgeif_fdb.c"
	.section	.text.bridgeif_fdb_update_src,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_update_src
	.type	bridgeif_fdb_update_src, @function
bridgeif_fdb_update_src:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/netif/bridgeif_fdb.c"
	.loc 1 77 1
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
	.loc 1 79 20
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 82 10
	sw	zero,-20(s0)
	.loc 1 82 3
	j	.L2
.L5:
.LBB2:
	.loc 1 83 36
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 83 41
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 83 28
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 84 10
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 1 84 8
	beq	a5,zero,.L3
	.loc 1 84 21 discriminator 1
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 84 17 discriminator 1
	beq	a5,zero,.L3
	.loc 1 85 19
	lw	a5,-32(s0)
	addi	a5,a5,8
	.loc 1 85 12
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 85 10 discriminator 1
	bne	a5,zero,.L3
	.loc 1 90 15
	lw	a5,-32(s0)
	li	a4,300
	sw	a4,4(a5)
	.loc 1 91 17
	lw	a5,-32(s0)
	lbu	a4,-41(s0)
	sb	a4,1(a5)
	.loc 1 94 9
	j	.L1
.L3:
.LBE2:
	.loc 1 82 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 82 22 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 82 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L5
	.loc 1 99 10
	sw	zero,-20(s0)
	.loc 1 99 3
	j	.L6
.L10:
.LBB3:
	.loc 1 100 36
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 100 41
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 100 28
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 101 11
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 101 8
	beq	a5,zero,.L7
	.loc 1 101 23 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 101 18 discriminator 1
	bne	a5,zero,.L8
.L7:
	.loc 1 104 13
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 104 10
	beq	a5,zero,.L9
	.loc 1 104 25 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 104 20 discriminator 1
	bne	a5,zero,.L8
.L9:
	.loc 1 108 16
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 108 9
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 109 15
	lw	a5,-28(s0)
	li	a4,300
	sw	a4,4(a5)
	.loc 1 110 17
	lw	a5,-28(s0)
	lbu	a4,-41(s0)
	sb	a4,1(a5)
	.loc 1 111 17
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 114 9
	j	.L1
.L8:
.LBE3:
	.loc 1 99 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 1 99 22 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 99 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L10
.L1:
	.loc 1 121 1
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
	.size	bridgeif_fdb_update_src, .-bridgeif_fdb_update_src
	.section	.text.bridgeif_fdb_get_dst_ports,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_get_dst_ports
	.type	bridgeif_fdb_get_dst_ports, @function
bridgeif_fdb_get_dst_ports:
.LFB7:
	.loc 1 129 1
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
	.loc 1 131 20
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 134 10
	sw	zero,-20(s0)
	.loc 1 134 3
	j	.L12
.L15:
.LBB4:
	.loc 1 135 36
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 135 41
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 135 28
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 136 10
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 136 8
	beq	a5,zero,.L13
	.loc 1 136 21 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 136 17 discriminator 1
	beq	a5,zero,.L13
	.loc 1 137 19
	lw	a5,-28(s0)
	addi	a5,a5,8
	.loc 1 137 12
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 137 10 discriminator 1
	bne	a5,zero,.L13
.LBB5:
	.loc 1 138 63
	lw	a5,-28(s0)
	lbu	a5,1(a5)
	mv	a4,a5
	.loc 1 138 59
	li	a5,1
	sll	a5,a5,a4
	.loc 1 138 29
	sb	a5,-29(s0)
	.loc 1 140 16
	lbu	a5,-29(s0)
	j	.L14
.L13:
.LBE5:
.LBE4:
	.loc 1 134 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	.loc 1 134 22 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 134 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L15
	.loc 1 145 10
	li	a5,255
.L14:
	.loc 1 146 1
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
	.size	bridgeif_fdb_get_dst_ports, .-bridgeif_fdb_get_dst_ports
	.section	.text.bridgeif_fdb_age_one_second,"ax",@progbits
	.align	1
	.type	bridgeif_fdb_age_one_second, @function
bridgeif_fdb_age_one_second:
.LFB8:
	.loc 1 154 1
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
	.loc 1 159 7
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 162 10
	sw	zero,-20(s0)
	.loc 1 162 3
	j	.L17
.L19:
.LBB6:
	.loc 1 163 36
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 163 41
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 163 28
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 164 10
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 164 8
	beq	a5,zero,.L18
	.loc 1 164 21 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 164 17 discriminator 1
	beq	a5,zero,.L18
	.loc 1 167 12
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 167 10
	beq	a5,zero,.L18
	.loc 1 167 23 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 167 19 discriminator 1
	beq	a5,zero,.L18
	.loc 1 168 16
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 168 13
	addi	a4,a5,-1
	.loc 1 168 12
	lw	a5,-28(s0)
	sw	a4,4(a5)
	.loc 1 168 16
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 168 12
	bne	a5,zero,.L18
	.loc 1 169 19
	lw	a5,-28(s0)
	sb	zero,0(a5)
.L18:
.LBE6:
	.loc 1 162 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	.loc 1 162 22 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 162 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L19
	.loc 1 176 1
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
	.size	bridgeif_fdb_age_one_second, .-bridgeif_fdb_age_one_second
	.section	.text.bridgeif_age_tmr,"ax",@progbits
	.align	1
	.type	bridgeif_age_tmr, @function
bridgeif_age_tmr:
.LFB9:
	.loc 1 181 1
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
	.loc 1 182 20
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 186 3
	lw	a0,-20(s0)
	call	bridgeif_fdb_age_one_second
	.loc 1 187 3
	lw	a2,-36(s0)
	lui	a5,%hi(bridgeif_age_tmr)
	addi	a1,a5,%lo(bridgeif_age_tmr)
	li	a0,1000
	call	sys_timeout
	.loc 1 188 1
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
.LFE9:
	.size	bridgeif_age_tmr, .-bridgeif_age_tmr
	.section	.text.bridgeif_fdb_init,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_init
	.type	bridgeif_fdb_init, @function
bridgeif_fdb_init:
.LFB10:
	.loc 1 196 1
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
	.loc 1 198 71
	lhu	a5,-34(s0)
	slli	a5,a5,4
	.loc 1 198 10
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 199 14
	lw	a5,-20(s0)
	sh	a5,-22(s0)
	.loc 1 202 28
	lhu	a5,-22(s0)
	mv	a1,a5
	li	a0,1
	call	mem_calloc
	sw	a0,-28(s0)
	.loc 1 203 6
	lw	a5,-28(s0)
	bne	a5,zero,.L22
	.loc 1 204 11
	li	a5,0
	j	.L23
.L22:
	.loc 1 206 24
	lw	a5,-28(s0)
	lhu	a4,-34(s0)
	sh	a4,0(a5)
	.loc 1 207 44
	lw	a5,-28(s0)
	addi	a4,a5,8
	.loc 1 207 12
	lw	a5,-28(s0)
	sw	a4,4(a5)
	.loc 1 209 3
	lw	a2,-28(s0)
	lui	a5,%hi(bridgeif_age_tmr)
	addi	a1,a5,%lo(bridgeif_age_tmr)
	li	a0,1000
	call	sys_timeout
	.loc 1 211 10
	lw	a5,-28(s0)
.L23:
	.loc 1 212 1
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
	.size	bridgeif_fdb_init, .-bridgeif_fdb_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/netif/bridgeif.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/timeouts.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ethernet.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x422
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x11
	.byte	0x4
	.uleb128 0xb
	.4byte	0x84
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0xb
	.4byte	0x92
	.uleb128 0x12
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x9d
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xa9
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xb5
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x8
	.byte	0x3c
	.byte	0x8
	.4byte	0x100
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x8
	.byte	0x3d
	.byte	0x8
	.4byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xc1
	.4byte	0x110
	.uleb128 0x14
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x36
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0x121
	.uleb128 0x15
	.4byte	0x12c
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x5b
	.byte	0x11
	.4byte	0x11c
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x7
	.byte	0x43
	.byte	0xf
	.4byte	0xcd
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x10
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.4byte	0x183
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x37
	.byte	0x8
	.4byte	0xc1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x38
	.byte	0x8
	.4byte	0xc1
	.byte	0x1
	.uleb128 0xc
	.string	"ts"
	.byte	0x39
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3a
	.byte	0x13
	.4byte	0xe5
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.4byte	0x144
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.4byte	0x1b5
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0xcd
	.byte	0
	.uleb128 0xc
	.string	"fdb"
	.byte	0x3f
	.byte	0x1a
	.4byte	0x1b5
	.byte	0
	.uleb128 0x6
	.4byte	0x183
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.4byte	0x18f
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x4b
	.byte	0x7
	.4byte	0x84
	.4byte	0x1e1
	.uleb128 0x3
	.4byte	0x138
	.uleb128 0x3
	.4byte	0x138
	.byte	0
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x6
	.byte	0x6d
	.byte	0x6
	.4byte	0x1fd
	.uleb128 0x3
	.4byte	0xd9
	.uleb128 0x3
	.4byte	0x12c
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x21d
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x23d
	.uleb128 0x3
	.4byte	0x92
	.uleb128 0x3
	.4byte	0x92
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0xc3
	.4byte	0x84
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28e
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0xc3
	.byte	0x19
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.string	"fdb"
	.byte	0xc5
	.byte	0x14
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0xc6
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0xc7
	.byte	0xe
	.4byte	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x6
	.4byte	0x1ba
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c7
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0xb4
	.byte	0x18
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"fdb"
	.byte	0xb6
	.byte	0x14
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31c
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x99
	.byte	0x23
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.byte	0x9b
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"fdb"
	.byte	0x9c
	.byte	0x14
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.string	"e"
	.byte	0xa3
	.byte	0x1c
	.4byte	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x80
	.4byte	0x110
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x399
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x80
	.byte	0x22
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x80
	.byte	0x3c
	.4byte	0x399
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x82
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"fdb"
	.byte	0x83
	.byte	0x14
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.string	"e"
	.byte	0x87
	.byte	0x1c
	.4byte	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.string	"ret"
	.byte	0x8a
	.byte	0x1d
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xe5
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x4c
	.byte	0x1f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x4c
	.byte	0x39
	.4byte	0x399
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x4c
	.byte	0x48
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.string	"i"
	.byte	0x4e
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"fdb"
	.byte	0x4f
	.byte	0x14
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x40e
	.uleb128 0x1
	.string	"e"
	.byte	0x53
	.byte	0x1c
	.4byte	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.string	"e"
	.byte	0x64
	.byte	0x1c
	.4byte	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x7a
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"bridgeif_fdb_get_dst_ports"
.LASF13:
	.string	"size_t"
.LASF34:
	.string	"memcmp"
.LASF26:
	.string	"used"
.LASF22:
	.string	"mem_size_t"
.LASF46:
	.string	"sys_timeout"
.LASF14:
	.string	"uint8_t"
.LASF47:
	.string	"bridgeif_fdb_update_src"
.LASF21:
	.string	"sys_timeout_handler"
.LASF40:
	.string	"bridgeif_fdb_init"
.LASF9:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"bridgeif_dfdb_s"
.LASF31:
	.string	"bridgeif_dfdb_t"
.LASF7:
	.string	"long unsigned int"
.LASF25:
	.string	"addr"
.LASF38:
	.string	"bridgeif_fdb_age_one_second"
.LASF36:
	.string	"alloc_len"
.LASF18:
	.string	"u16_t"
.LASF42:
	.string	"dst_addr"
.LASF19:
	.string	"u32_t"
.LASF43:
	.string	"src_addr"
.LASF37:
	.string	"bridgeif_age_tmr"
.LASF10:
	.string	"unsigned int"
.LASF24:
	.string	"bridgeif_dfdb_entry_s"
.LASF28:
	.string	"bridgeif_dfdb_entry_t"
.LASF17:
	.string	"u8_t"
.LASF23:
	.string	"eth_addr"
.LASF44:
	.string	"port_idx"
.LASF30:
	.string	"max_fdb_entries"
.LASF20:
	.string	"bridgeif_portmask_t"
.LASF8:
	.string	"long long int"
.LASF45:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF35:
	.string	"alloc_len_sizet"
.LASF27:
	.string	"port"
.LASF33:
	.string	"memcpy"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"uint16_t"
.LASF16:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"mem_calloc"
.LASF11:
	.string	"long double"
.LASF39:
	.string	"fdb_ptr"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/netif/bridgeif_fdb.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
