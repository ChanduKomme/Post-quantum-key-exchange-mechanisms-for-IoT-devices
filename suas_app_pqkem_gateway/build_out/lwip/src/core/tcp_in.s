	.file	"tcp_in.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp_in.c"
	.section	.bss.inseg,"aw",@nobits
	.align	2
	.type	inseg, @object
	.size	inseg, 20
inseg:
	.zero	20
	.section	.sbss.tcphdr,"aw",@nobits
	.align	2
	.type	tcphdr, @object
	.size	tcphdr, 4
tcphdr:
	.zero	4
	.section	.sbss.tcphdr_optlen,"aw",@nobits
	.align	1
	.type	tcphdr_optlen, @object
	.size	tcphdr_optlen, 2
tcphdr_optlen:
	.zero	2
	.section	.sbss.tcphdr_opt1len,"aw",@nobits
	.align	1
	.type	tcphdr_opt1len, @object
	.size	tcphdr_opt1len, 2
tcphdr_opt1len:
	.zero	2
	.section	.sbss.tcphdr_opt2,"aw",@nobits
	.align	2
	.type	tcphdr_opt2, @object
	.size	tcphdr_opt2, 4
tcphdr_opt2:
	.zero	4
	.section	.sbss.tcp_optidx,"aw",@nobits
	.align	1
	.type	tcp_optidx, @object
	.size	tcp_optidx, 2
tcp_optidx:
	.zero	2
	.section	.sbss.seqno,"aw",@nobits
	.align	2
	.type	seqno, @object
	.size	seqno, 4
seqno:
	.zero	4
	.section	.sbss.ackno,"aw",@nobits
	.align	2
	.type	ackno, @object
	.size	ackno, 4
ackno:
	.zero	4
	.section	.sbss.recv_acked,"aw",@nobits
	.align	1
	.type	recv_acked, @object
	.size	recv_acked, 2
recv_acked:
	.zero	2
	.section	.sbss.tcplen,"aw",@nobits
	.align	1
	.type	tcplen, @object
	.size	tcplen, 2
tcplen:
	.zero	2
	.section	.sbss.flags,"aw",@nobits
	.type	flags, @object
	.size	flags, 1
flags:
	.zero	1
	.section	.sbss.recv_flags,"aw",@nobits
	.type	recv_flags, @object
	.size	recv_flags, 1
recv_flags:
	.zero	1
	.section	.sbss.recv_data,"aw",@nobits
	.align	2
	.type	recv_data, @object
	.size	recv_data, 4
recv_data:
	.zero	4
	.globl	tcp_input_pcb
	.section	.sbss.tcp_input_pcb,"aw",@nobits
	.align	2
	.type	tcp_input_pcb, @object
	.size	tcp_input_pcb, 4
tcp_input_pcb:
	.zero	4
	.section	.text.tcp_input,"ax",@progbits
	.align	1
	.globl	tcp_input
	.type	tcp_input, @function
tcp_input:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp_in.c"
	.loc 1 119 1
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
	sw	a1,-56(s0)
	.loc 1 123 19
	sw	zero,-32(s0)
	.loc 1 124 26
	sw	zero,-36(s0)
	.loc 1 135 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,150(a5)
	.loc 1 135 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,150(a5)
	.loc 1 138 31
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 1 138 10
	lui	a5,%hi(tcphdr)
	sw	a4,%lo(tcphdr)(a5)
	.loc 1 145 8
	lw	a5,-52(s0)
	lhu	a4,10(a5)
	.loc 1 145 6
	li	a5,19
	bgtu	a4,a5,.L2
	.loc 1 148 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,158(a5)
	.loc 1 148 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,158(a5)
	.loc 1 149 5
	j	.L3
.L2:
	.loc 1 153 7
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,20(a5)
	.loc 1 153 79
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,0(a5)
	.loc 1 153 7
	mv	a1,a5
	mv	a0,a4
	call	ip4_addr_isbroadcast_u32
	mv	a5,a0
	.loc 1 153 6 discriminator 1
	bne	a5,zero,.L4
	.loc 1 154 40
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 154 47
	andi	a4,a5,240
	.loc 1 153 96 discriminator 2
	li	a5,224
	bne	a4,a5,.L5
.L4:
	.loc 1 155 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,164(a5)
	.loc 1 155 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,164(a5)
	.loc 1 156 5
	j	.L3
.L5:
.LBB2:
	.loc 1 162 20
	lw	a5,-52(s0)
	lhu	a2,8(a5)
	lui	a5,%hi(ip_data+20)
	addi	a4,a5,%lo(ip_data+20)
	lui	a5,%hi(ip_data+16)
	addi	a3,a5,%lo(ip_data+16)
	li	a1,6
	lw	a0,-52(s0)
	call	ip_chksum_pseudo
	mv	a5,a0
	sh	a5,-40(s0)
	.loc 1 164 8
	lhu	a5,-40(s0)
	beq	a5,zero,.L6
	.loc 1 168 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,156(a5)
	.loc 1 168 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,156(a5)
	.loc 1 169 7
	j	.L3
.L6:
.LBE2:
	.loc 1 175 54
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 175 35
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 175 27 discriminator 1
	srli	a5,a5,12
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 175 19 discriminator 1
	andi	a5,a5,0xff
	.loc 1 175 16 discriminator 1
	slli	a5,a5,2
	sb	a5,-41(s0)
	.loc 1 176 6
	lbu	a4,-41(s0)
	li	a5,19
	bleu	a4,a5,.L7
	.loc 1 176 44 discriminator 1
	lbu	a5,-41(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 176 47 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,8(a5)
	.loc 1 176 27 discriminator 1
	bleu	a4,a5,.L8
.L7:
	.loc 1 178 21
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,158(a5)
	.loc 1 178 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,158(a5)
	.loc 1 179 5
	j	.L3
.L8:
	.loc 1 184 19
	lbu	a5,-41(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,-20
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 184 17
	lui	a5,%hi(tcphdr_optlen)
	sh	a4,%lo(tcphdr_optlen)(a5)
	.loc 1 185 15
	lui	a5,%hi(tcphdr_opt2)
	sw	zero,%lo(tcphdr_opt2)(a5)
	.loc 1 186 8
	lw	a5,-52(s0)
	lhu	a4,10(a5)
	.loc 1 186 14
	lbu	a5,-41(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 186 6
	bltu	a4,a5,.L9
	.loc 1 188 20
	lui	a5,%hi(tcphdr_optlen)
	lhu	a4,%lo(tcphdr_optlen)(a5)
	lui	a5,%hi(tcphdr_opt1len)
	sh	a4,%lo(tcphdr_opt1len)(a5)
	.loc 1 189 5
	lbu	a5,-41(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_remove_header
	j	.L10
.L9:
.LBB3:
	.loc 1 197 5
	li	a1,20
	lw	a0,-52(s0)
	call	pbuf_remove_header
	.loc 1 200 23
	lw	a5,-52(s0)
	lhu	a4,10(a5)
	.loc 1 200 20
	lui	a5,%hi(tcphdr_opt1len)
	sh	a4,%lo(tcphdr_opt1len)(a5)
	.loc 1 201 15
	lui	a5,%hi(tcphdr_optlen)
	lhu	a4,%lo(tcphdr_optlen)(a5)
	lui	a5,%hi(tcphdr_opt1len)
	lhu	a5,%lo(tcphdr_opt1len)(a5)
	.loc 1 201 13
	sub	a5,a4,a5
	sh	a5,-44(s0)
	.loc 1 205 5
	lui	a5,%hi(tcphdr_opt1len)
	lhu	a5,%lo(tcphdr_opt1len)(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_remove_header
	.loc 1 208 20
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 208 26
	lhu	a5,10(a5)
	.loc 1 208 8
	lhu	a4,-44(s0)
	bleu	a4,a5,.L11
	.loc 1 211 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,158(a5)
	.loc 1 211 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,158(a5)
	.loc 1 212 7
	j	.L3
.L11:
	.loc 1 216 28
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 216 34
	lw	a4,4(a5)
	.loc 1 216 17
	lui	a5,%hi(tcphdr_opt2)
	sw	a4,%lo(tcphdr_opt2)(a5)
	.loc 1 220 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	lhu	a4,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	pbuf_remove_header
	.loc 1 221 27
	lw	a5,-52(s0)
	lhu	a5,8(a5)
	.loc 1 221 18
	lhu	a4,-44(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 221 16
	lw	a5,-52(s0)
	sh	a4,8(a5)
.L10:
.LBE3:
	.loc 1 228 34
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 228 17
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 228 9
	lui	a5,%hi(tcphdr)
	lw	s1,%lo(tcphdr)(a5)
	.loc 1 228 17
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 228 15 discriminator 1
	andi	a4,a5,255
	lbu	a3,0(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,1(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,1(s1)
	.loc 1 229 35
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 229 18
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 229 9
	lui	a5,%hi(tcphdr)
	lw	s1,%lo(tcphdr)(a5)
	.loc 1 229 18
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 229 16 discriminator 1
	andi	a4,a5,255
	lbu	a3,2(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,3(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,3(s1)
	.loc 1 230 44
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 230 27
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 230 17
	lui	a5,%hi(tcphdr)
	lw	s1,%lo(tcphdr)(a5)
	.loc 1 230 27
	mv	a0,a4
	call	lwip_htonl
	mv	a5,a0
	.loc 1 230 25 discriminator 1
	andi	a4,a5,255
	lbu	a3,4(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(s1)
	srli	a4,a5,8
	andi	a4,a4,255
	lbu	a3,5(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(s1)
	srli	a4,a5,16
	andi	a4,a4,255
	lbu	a3,6(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(s1)
	srli	a5,a5,24
	lbu	a4,7(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,7(s1)
	.loc 1 230 17 discriminator 1
	lbu	a5,4(s1)
	lbu	a4,5(s1)
	slli	a4,a4,8
	or	a5,a4,a5
	lbu	a4,6(s1)
	slli	a4,a4,16
	or	a5,a4,a5
	lbu	a4,7(s1)
	slli	a4,a4,24
	or	a5,a4,a5
	mv	a4,a5
	.loc 1 230 9 discriminator 1
	lui	a5,%hi(seqno)
	sw	a4,%lo(seqno)(a5)
	.loc 1 231 44
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 231 27
	lbu	a4,8(a5)
	lbu	a3,9(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,10(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,11(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 231 17
	lui	a5,%hi(tcphdr)
	lw	s1,%lo(tcphdr)(a5)
	.loc 1 231 27
	mv	a0,a4
	call	lwip_htonl
	mv	a5,a0
	.loc 1 231 25 discriminator 1
	andi	a4,a5,255
	lbu	a3,8(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,8(s1)
	srli	a4,a5,8
	andi	a4,a4,255
	lbu	a3,9(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,9(s1)
	srli	a4,a5,16
	andi	a4,a4,255
	lbu	a3,10(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,10(s1)
	srli	a5,a5,24
	lbu	a4,11(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,11(s1)
	.loc 1 231 17 discriminator 1
	lbu	a5,8(s1)
	lbu	a4,9(s1)
	slli	a4,a4,8
	or	a5,a4,a5
	lbu	a4,10(s1)
	slli	a4,a4,16
	or	a5,a4,a5
	lbu	a4,11(s1)
	slli	a4,a4,24
	or	a5,a4,a5
	mv	a4,a5
	.loc 1 231 9 discriminator 1
	lui	a5,%hi(ackno)
	sw	a4,%lo(ackno)(a5)
	.loc 1 232 34
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 232 17
	lbu	a4,14(a5)
	lbu	a5,15(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 232 9
	lui	a5,%hi(tcphdr)
	lw	s1,%lo(tcphdr)(a5)
	.loc 1 232 17
	mv	a0,a4
	call	lwip_htons
	mv	a5,a0
	.loc 1 232 15 discriminator 1
	andi	a4,a5,255
	lbu	a3,14(s1)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,14(s1)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lbu	a4,15(s1)
	andi	a4,a4,0
	or	a5,a4,a5
	sb	a5,15(s1)
	.loc 1 234 39
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 234 20
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 234 12 discriminator 1
	andi	a5,a5,0xff
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 1 234 9 discriminator 1
	lui	a5,%hi(flags)
	sb	a4,%lo(flags)(a5)
	.loc 1 235 13
	lw	a5,-52(s0)
	lhu	a4,8(a5)
	.loc 1 235 10
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
	.loc 1 236 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,3
	.loc 1 236 6
	beq	a5,zero,.L12
	.loc 1 237 11
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
	.loc 1 238 19
	lw	a5,-52(s0)
	lhu	a4,8(a5)
	.loc 1 238 16
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	.loc 1 238 8
	bleu	a4,a5,.L12
	.loc 1 241 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,158(a5)
	.loc 1 241 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,158(a5)
	.loc 1 242 7
	j	.L3
.L12:
	.loc 1 248 8
	sw	zero,-24(s0)
	.loc 1 250 12
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 250 3
	j	.L13
.L20:
	.loc 1 256 13
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 256 8
	beq	a5,zero,.L14
	.loc 1 257 13
	lw	a5,-20(s0)
	lbu	a4,8(a5)
	.loc 1 257 44
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,4(a5)
	.loc 1 257 65
	lbu	a5,72(a5)
	.loc 1 257 29
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 256 33 discriminator 1
	beq	a4,a5,.L14
	.loc 1 258 12
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 259 7
	j	.L15
.L14:
	.loc 1 262 12
	lw	a5,-20(s0)
	lhu	a4,24(a5)
	.loc 1 262 35
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a3,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 262 8
	bne	a4,a5,.L16
	.loc 1 263 12
	lw	a5,-20(s0)
	lhu	a4,22(a5)
	.loc 1 263 34
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a3,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 262 41 discriminator 1
	bne	a4,a5,.L16
	.loc 1 264 27
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 264 67
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,16(a5)
	.loc 1 263 41
	bne	a4,a5,.L16
	.loc 1 265 26
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 265 67
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 264 75
	bne	a4,a5,.L16
	.loc 1 270 10
	lw	a5,-24(s0)
	beq	a5,zero,.L17
	.loc 1 271 25
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 271 20
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 1 272 19
	lui	a5,%hi(tcp_active_pcbs)
	lw	a4,%lo(tcp_active_pcbs)(a5)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 273 25
	lui	a5,%hi(tcp_active_pcbs)
	lw	a4,-20(s0)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	.loc 1 278 7
	j	.L19
.L17:
	.loc 1 275 25
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,170(a5)
	.loc 1 275 9
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,170(a5)
	.loc 1 278 7
	j	.L19
.L16:
	.loc 1 280 10
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L15:
	.loc 1 250 47 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L13:
	.loc 1 250 35 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L20
.L19:
	.loc 1 283 6
	lw	a5,-20(s0)
	bne	a5,zero,.L21
	.loc 1 286 14
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a5,%lo(tcp_tw_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 286 5
	j	.L22
.L26:
	.loc 1 290 15
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 290 10
	beq	a5,zero,.L23
	.loc 1 291 15
	lw	a5,-20(s0)
	lbu	a4,8(a5)
	.loc 1 291 46
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,4(a5)
	.loc 1 291 67
	lbu	a5,72(a5)
	.loc 1 291 31
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 290 35 discriminator 1
	bne	a4,a5,.L64
.L23:
	.loc 1 295 14
	lw	a5,-20(s0)
	lhu	a4,24(a5)
	.loc 1 295 37
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a3,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 295 10
	bne	a4,a5,.L24
	.loc 1 296 14
	lw	a5,-20(s0)
	lhu	a4,22(a5)
	.loc 1 296 36
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a3,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 295 43 discriminator 1
	bne	a4,a5,.L24
	.loc 1 297 29
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 297 69
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,16(a5)
	.loc 1 296 43
	bne	a4,a5,.L24
	.loc 1 298 28
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 298 69
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 297 77
	bne	a4,a5,.L24
	.loc 1 308 11
	lw	a0,-20(s0)
	call	tcp_timewait_input
	.loc 1 310 9
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 311 9
	j	.L1
.L64:
	.loc 1 292 9
	nop
.L24:
	.loc 1 286 45 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L22:
	.loc 1 286 33 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L26
	.loc 1 317 10
	sw	zero,-24(s0)
	.loc 1 318 15
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a5,%lo(tcp_listen_pcbs)(a5)
	sw	a5,-28(s0)
	.loc 1 318 5
	j	.L27
.L34:
	.loc 1 320 16
	lw	a5,-28(s0)
	lbu	a5,8(a5)
	.loc 1 320 10
	beq	a5,zero,.L28
	.loc 1 321 16
	lw	a5,-28(s0)
	lbu	a4,8(a5)
	.loc 1 321 47
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,4(a5)
	.loc 1 321 68
	lbu	a5,72(a5)
	.loc 1 321 32
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 320 36 discriminator 1
	beq	a4,a5,.L28
	.loc 1 322 14
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 1 323 9
	j	.L29
.L28:
	.loc 1 326 15
	lw	a5,-28(s0)
	lhu	a4,22(a5)
	.loc 1 326 37
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a3,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 326 10
	bne	a4,a5,.L30
	.loc 1 336 33
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 336 74
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a5,20(a5)
	.loc 1 336 14
	beq	a4,a5,.L65
	.loc 1 339 24
	lw	a5,-28(s0)
	.loc 1 339 21
	beq	a5,zero,.L33
	.loc 1 339 45 discriminator 1
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 339 21 discriminator 1
	bne	a5,zero,.L30
.L33:
	.loc 1 342 22
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 1 343 23
	lw	a5,-24(s0)
	sw	a5,-32(s0)
.L30:
	.loc 1 350 12
	lw	a5,-28(s0)
	sw	a5,-24(s0)
.L29:
	.loc 1 318 64 discriminator 2
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L27:
	.loc 1 318 51 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L34
	j	.L32
.L65:
	.loc 1 338 13
	nop
.L32:
	.loc 1 354 8
	lw	a5,-28(s0)
	bne	a5,zero,.L35
	.loc 1 356 12
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 357 12
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L35:
	.loc 1 360 8
	lw	a5,-28(s0)
	beq	a5,zero,.L21
	.loc 1 364 10
	lw	a5,-24(s0)
	beq	a5,zero,.L36
	.loc 1 365 53
	lw	a5,-28(s0)
	lw	a4,12(a5)
	.loc 1 365 47
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 1 367 37
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a4,%lo(tcp_listen_pcbs)(a5)
	.loc 1 367 20
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 369 37
	lui	a5,%hi(tcp_listen_pcbs)
	lw	a4,-28(s0)
	sw	a4,%lo(tcp_listen_pcbs)(a5)
	j	.L37
.L36:
	.loc 1 371 25
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,170(a5)
	.loc 1 371 9
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,170(a5)
.L37:
	.loc 1 380 9
	lw	a0,-28(s0)
	call	tcp_listen_input
	.loc 1 382 7
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 383 7
	j	.L1
.L21:
	.loc 1 401 6
	lw	a5,-20(s0)
	beq	a5,zero,.L38
	.loc 1 408 16
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sw	zero,0(a5)
	.loc 1 409 18
	lw	a5,-52(s0)
	lhu	a4,8(a5)
	.loc 1 409 15
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sh	a4,8(a5)
	.loc 1 410 13
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a4,-52(s0)
	sw	a4,4(a5)
	.loc 1 411 18
	lui	a5,%hi(tcphdr)
	lw	a4,%lo(tcphdr)(a5)
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sw	a4,16(a5)
	.loc 1 413 15
	lui	a5,%hi(recv_data)
	sw	zero,%lo(recv_data)(a5)
	.loc 1 414 16
	lui	a5,%hi(recv_flags)
	sb	zero,%lo(recv_flags)(a5)
	.loc 1 415 16
	lui	a5,%hi(recv_acked)
	sh	zero,%lo(recv_acked)(a5)
	.loc 1 417 15
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,8
	.loc 1 417 8
	beq	a5,zero,.L39
	.loc 1 418 8
	lw	a5,-52(s0)
	lbu	a5,13(a5)
	.loc 1 418 16
	ori	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,13(a5)
.L39:
	.loc 1 422 12
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 422 8
	beq	a5,zero,.L40
	.loc 1 423 12
	lw	a0,-20(s0)
	call	tcp_process_refused_data
	mv	a5,a0
	mv	a4,a5
	.loc 1 423 10 discriminator 1
	li	a5,-13
	beq	a4,a5,.L41
	.loc 1 424 16
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 423 55 discriminator 2
	beq	a5,zero,.L40
	.loc 1 424 50
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	.loc 1 424 39
	beq	a5,zero,.L40
.L41:
	.loc 1 427 16
	lw	a5,-20(s0)
	lhu	a5,42(a5)
	.loc 1 427 12
	bne	a5,zero,.L42
	.loc 1 430 11
	lw	a0,-20(s0)
	call	tcp_send_empty_ack
.L42:
	.loc 1 432 25
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,154(a5)
	.loc 1 432 9
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,154(a5)
	.loc 1 434 9
	j	.L43
.L40:
	.loc 1 437 19
	lui	a5,%hi(tcp_input_pcb)
	lw	a4,-20(s0)
	sw	a4,%lo(tcp_input_pcb)(a5)
	.loc 1 438 11
	lw	a0,-20(s0)
	call	tcp_process
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 1 441 8
	lb	a4,-37(s0)
	li	a5,-13
	beq	a4,a5,.L66
	.loc 1 442 22
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,8
	.loc 1 442 10
	beq	a5,zero,.L44
	.loc 1 447 39
	lw	a5,-20(s0)
	lw	a5,144(a5)
	.loc 1 447 34
	beq	a5,zero,.L45
	.loc 1 447 14 discriminator 1
	lw	a5,-20(s0)
	lw	a5,144(a5)
	lw	a4,-20(s0)
	lw	a4,16(a4)
	li	a1,-14
	mv	a0,a4
	jalr	a5
.LVL0:
.L45:
	.loc 1 448 9
	lw	a1,-20(s0)
	lui	a5,%hi(tcp_active_pcbs)
	addi	a0,a5,%lo(tcp_active_pcbs)
	call	tcp_pcb_remove
	.loc 1 449 9
	lw	a0,-20(s0)
	call	tcp_free
	j	.L43
.L44:
	.loc 1 451 13
	sb	zero,-37(s0)
	.loc 1 455 24
	lui	a5,%hi(recv_acked)
	lhu	a5,%lo(recv_acked)(a5)
	.loc 1 455 12
	beq	a5,zero,.L46
.LBB4:
	.loc 1 466 21
	lui	a5,%hi(recv_acked)
	lhu	a5,%lo(recv_acked)(a5)
	sh	a5,-46(s0)
	.loc 1 468 26
	lw	a5,-20(s0)
	lw	a5,128(a5)
	.loc 1 468 20
	beq	a5,zero,.L47
	.loc 1 468 27 discriminator 1
	lw	a5,-20(s0)
	lw	a5,128(a5)
	.loc 1 468 22 discriminator 1
	lw	a4,-20(s0)
	lw	a4,16(a4)
	lhu	a3,-46(s0)
	mv	a2,a3
	lw	a1,-20(s0)
	mv	a0,a4
	jalr	a5
.LVL1:
	mv	a5,a0
	sb	a5,-37(s0)
	j	.L48
.L47:
	.loc 1 468 90 discriminator 2
	sb	zero,-37(s0)
.L48:
	.loc 1 469 16
	lb	a4,-37(s0)
	li	a5,-13
	beq	a4,a5,.L67
	.loc 1 473 22
	lui	a5,%hi(recv_acked)
	sh	zero,%lo(recv_acked)(a5)
.L46:
.LBE4:
	.loc 1 475 13
	lw	a0,-20(s0)
	call	tcp_input_delayed_close
	mv	a5,a0
	.loc 1 475 12 discriminator 1
	bne	a5,zero,.L68
	.loc 1 483 23
	lui	a5,%hi(recv_data)
	lw	a5,%lo(recv_data)(a5)
	.loc 1 483 12
	beq	a5,zero,.L51
	.loc 1 487 18
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 487 26
	andi	a5,a5,16
	.loc 1 487 14
	beq	a5,zero,.L52
	.loc 1 490 13
	lui	a5,%hi(recv_data)
	lw	a5,%lo(recv_data)(a5)
	mv	a0,a5
	call	pbuf_free
	.loc 1 496 13
	lw	a0,-20(s0)
	call	tcp_abort
	.loc 1 497 13
	j	.L43
.L52:
	.loc 1 501 24
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 1 501 18
	beq	a5,zero,.L53
	.loc 1 501 27 discriminator 1
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 1 501 22 discriminator 1
	lw	a4,-20(s0)
	lw	a0,16(a4)
	lui	a4,%hi(recv_data)
	lw	a4,%lo(recv_data)(a4)
	li	a3,0
	mv	a2,a4
	lw	a1,-20(s0)
	jalr	a5
.LVL2:
	mv	a5,a0
	sb	a5,-37(s0)
	j	.L54
.L53:
	.loc 1 501 100 discriminator 2
	lui	a5,%hi(recv_data)
	lw	a5,%lo(recv_data)(a5)
	li	a3,0
	mv	a2,a5
	lw	a1,-20(s0)
	li	a0,0
	call	tcp_recv_null
	mv	a5,a0
	sb	a5,-37(s0)
.L54:
	.loc 1 502 14
	lb	a4,-37(s0)
	li	a5,-13
	beq	a4,a5,.L69
	.loc 1 512 14
	lb	a5,-37(s0)
	beq	a5,zero,.L51
	.loc 1 518 31
	lui	a5,%hi(recv_data)
	lw	a4,%lo(recv_data)(a5)
	lw	a5,-20(s0)
	sw	a4,120(a5)
.L51:
	.loc 1 531 24
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,32
	.loc 1 531 12
	beq	a5,zero,.L56
	.loc 1 532 18
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 532 14
	beq	a5,zero,.L57
	.loc 1 534 16
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 534 30
	lbu	a4,13(a5)
	.loc 1 534 16
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 1 534 38
	ori	a4,a4,32
	andi	a4,a4,0xff
	sb	a4,13(a5)
	j	.L56
.L57:
	.loc 1 538 20
	lw	a5,-20(s0)
	lhu	a4,40(a5)
	.loc 1 538 16
	li	a5,4096
	addi	a5,a5,-2032
	beq	a4,a5,.L58
	.loc 1 539 18
	lw	a5,-20(s0)
	lhu	a5,40(a5)
	.loc 1 539 27
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,40(a5)
.L58:
	.loc 1 541 27
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 1 541 20
	beq	a5,zero,.L59
	.loc 1 541 30 discriminator 1
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 1 541 25 discriminator 1
	lw	a4,-20(s0)
	lw	a4,16(a4)
	li	a3,0
	li	a2,0
	lw	a1,-20(s0)
	mv	a0,a4
	jalr	a5
.LVL3:
	mv	a5,a0
	sb	a5,-37(s0)
	j	.L60
.L59:
	.loc 1 541 37 discriminator 2
	sb	zero,-37(s0)
.L60:
	.loc 1 542 16
	lb	a4,-37(s0)
	li	a5,-13
	beq	a4,a5,.L70
.L56:
	.loc 1 548 23
	lui	a5,%hi(tcp_input_pcb)
	sw	zero,%lo(tcp_input_pcb)(a5)
	.loc 1 549 13
	lw	a0,-20(s0)
	call	tcp_input_delayed_close
	mv	a5,a0
	.loc 1 549 12 discriminator 1
	bne	a5,zero,.L71
	.loc 1 553 9
	lw	a0,-20(s0)
	call	tcp_output
	j	.L43
.L66:
	.loc 1 563 1
	nop
	j	.L43
.L67:
.LBB5:
	.loc 1 470 15
	nop
	j	.L43
.L68:
.LBE5:
	.loc 1 476 11
	nop
	j	.L43
.L69:
	.loc 1 508 13
	nop
	j	.L43
.L70:
	.loc 1 543 15
	nop
	j	.L43
.L71:
	.loc 1 550 11
	nop
.L43:
	.loc 1 564 19
	lui	a5,%hi(tcp_input_pcb)
	sw	zero,%lo(tcp_input_pcb)(a5)
	.loc 1 565 15
	lui	a5,%hi(recv_data)
	sw	zero,%lo(recv_data)(a5)
	.loc 1 568 14
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,4(a5)
	.loc 1 568 8
	beq	a5,zero,.L72
	.loc 1 569 7
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,4(a5)
	mv	a0,a5
	call	pbuf_free
	.loc 1 570 15
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sw	zero,4(a5)
	.loc 1 587 3
	j	.L72
.L38:
	.loc 1 576 39
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 576 20
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 576 12 discriminator 1
	andi	a5,a5,0xff
	.loc 1 576 72 discriminator 1
	andi	a5,a5,4
	.loc 1 576 8 discriminator 1
	bne	a5,zero,.L63
	.loc 1 577 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,164(a5)
	.loc 1 577 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,164(a5)
	.loc 1 578 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,154(a5)
	.loc 1 578 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,154(a5)
	.loc 1 579 7
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a0,4(a5)
	lui	a5,%hi(ackno)
	lw	a1,%lo(ackno)(a5)
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 579 63
	add	a2,a4,a5
	.loc 1 580 51
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 579 7
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 580 65
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 579 7
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(ip_data+16)
	addi	a4,a4,%lo(ip_data+16)
	lui	a3,%hi(ip_data+20)
	addi	a3,a3,%lo(ip_data+20)
	call	tcp_rst_netif
.L63:
	.loc 1 582 5
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 587 3
	j	.L72
.L3:
	.loc 1 589 19
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,154(a5)
	.loc 1 589 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,154(a5)
	.loc 1 591 3
	lw	a0,-52(s0)
	call	pbuf_free
	j	.L1
.L72:
	.loc 1 587 3
	nop
.L1:
	.loc 1 592 1
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
.LFE5:
	.size	tcp_input, .-tcp_input
	.section	.text.tcp_input_delayed_close,"ax",@progbits
	.align	1
	.type	tcp_input_delayed_close, @function
tcp_input_delayed_close:
.LFB6:
	.loc 1 601 1
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
	.loc 1 604 18
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,16
	.loc 1 604 6
	beq	a5,zero,.L74
	.loc 1 607 14
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 607 22
	andi	a5,a5,16
	.loc 1 607 8
	bne	a5,zero,.L75
	.loc 1 611 37
	lw	a5,-20(s0)
	lw	a5,144(a5)
	.loc 1 611 32
	beq	a5,zero,.L75
	.loc 1 611 12 discriminator 1
	lw	a5,-20(s0)
	lw	a5,144(a5)
	lw	a4,-20(s0)
	lw	a4,16(a4)
	li	a1,-15
	mv	a0,a4
	jalr	a5
.LVL4:
.L75:
	.loc 1 613 5
	lw	a1,-20(s0)
	lui	a5,%hi(tcp_active_pcbs)
	addi	a0,a5,%lo(tcp_active_pcbs)
	call	tcp_pcb_remove
	.loc 1 614 5
	lw	a0,-20(s0)
	call	tcp_free
	.loc 1 615 12
	li	a5,1
	j	.L76
.L74:
	.loc 1 617 10
	li	a5,0
.L76:
	.loc 1 618 1
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
.LFE6:
	.size	tcp_input_delayed_close, .-tcp_input_delayed_close
	.section	.text.tcp_listen_input,"ax",@progbits
	.align	1
	.type	tcp_listen_input, @function
tcp_listen_input:
.LFB7:
	.loc 1 631 1
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
	.loc 1 636 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,4
	.loc 1 636 6
	bne	a5,zero,.L86
	.loc 1 645 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 645 6
	beq	a5,zero,.L80
	.loc 1 649 5
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a0,4(a5)
	lui	a5,%hi(ackno)
	lw	a1,%lo(ackno)(a5)
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 649 61
	add	a2,a4,a5
	.loc 1 650 49
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 649 5
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 650 63
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 649 5
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(ip_data+16)
	addi	a4,a4,%lo(ip_data+16)
	lui	a3,%hi(ip_data+20)
	addi	a3,a3,%lo(ip_data+20)
	call	tcp_rst_netif
	.loc 1 729 3
	j	.L87
.L80:
	.loc 1 651 20
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,2
	.loc 1 651 13
	beq	a5,zero,.L87
	.loc 1 659 12
	lw	a5,-36(s0)
	lbu	a5,21(a5)
	mv	a0,a5
	call	tcp_alloc
	sw	a0,-20(s0)
	.loc 1 663 8
	lw	a5,-20(s0)
	bne	a5,zero,.L82
.LBB6:
	.loc 1 666 23
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,160(a5)
	.loc 1 666 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,160(a5)
	.loc 1 667 20
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 667 14
	beq	a5,zero,.L83
	.loc 1 667 21 discriminator 1
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 667 16 discriminator 1
	lw	a4,-36(s0)
	lw	a4,16(a4)
	li	a2,-1
	li	a1,0
	mv	a0,a4
	jalr	a5
.LVL5:
	mv	a5,a0
	sb	a5,-26(s0)
	.loc 1 669 7
	j	.L77
.L83:
	.loc 1 667 31 discriminator 2
	li	a5,-16
	sb	a5,-26(s0)
	.loc 1 669 7
	j	.L77
.L82:
.LBE6:
	.loc 1 676 62
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,20(a5)
	.loc 1 676 28
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 677 62
	lui	a5,%hi(ip_data)
	addi	a5,a5,%lo(ip_data)
	lw	a4,16(a5)
	.loc 1 677 29
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 678 27
	lw	a5,-36(s0)
	lhu	a4,22(a5)
	.loc 1 678 22
	lw	a5,-20(s0)
	sh	a4,22(a5)
	.loc 1 679 31
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 679 23
	lw	a5,-20(s0)
	sh	a4,24(a5)
	.loc 1 680 17
	lw	a5,-20(s0)
	li	a4,3
	sb	a4,20(a5)
	.loc 1 681 27
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	addi	a4,a5,1
	.loc 1 681 19
	lw	a5,-20(s0)
	sw	a4,36(a5)
	.loc 1 682 36
	lw	a5,-20(s0)
	lw	a4,36(a5)
	.loc 1 682 30
	lw	a5,-20(s0)
	sw	a4,44(a5)
	.loc 1 683 11
	lw	a0,-20(s0)
	call	tcp_next_iss
	sw	a0,-24(s0)
	.loc 1 684 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,88(a5)
	.loc 1 685 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,80(a5)
	.loc 1 686 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,68(a5)
	.loc 1 687 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,92(a5)
	.loc 1 688 27
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	addi	a4,a5,-1
	.loc 1 688 19
	lw	a5,-20(s0)
	sw	a4,84(a5)
	.loc 1 689 29
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 689 24
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 1 691 20
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,124(a5)
	.loc 1 697 27
	lw	a5,-36(s0)
	lbu	a5,9(a5)
	.loc 1 697 40
	andi	a5,a5,12
	andi	a4,a5,0xff
	.loc 1 697 22
	lw	a5,-20(s0)
	sb	a4,9(a5)
	.loc 1 698 26
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 698 21
	lw	a5,-20(s0)
	sb	a4,8(a5)
	.loc 1 701 28
	lui	a5,%hi(tcp_active_pcbs)
	lw	a4,%lo(tcp_active_pcbs)(a5)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 701 69
	lui	a5,%hi(tcp_active_pcbs)
	lw	a4,-20(s0)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	.loc 1 701 79
	call	tcp_timer_needed
	.loc 1 701 136 discriminator 1
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 704 5
	lw	a0,-20(s0)
	call	tcp_parseopt
	.loc 1 705 27
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a4,14(a5)
	lbu	a5,15(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 705 19
	lw	a5,-20(s0)
	sh	a4,96(a5)
	.loc 1 706 29
	lw	a5,-20(s0)
	lhu	a4,96(a5)
	.loc 1 706 23
	lw	a5,-20(s0)
	sh	a4,98(a5)
	.loc 1 709 17
	lw	a5,-20(s0)
	lhu	s1,50(a5)
	.loc 1 709 61
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 709 17
	mv	a0,a5
	call	ip4_route
	mv	a4,a0
	.loc 1 709 80 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 709 17 discriminator 1
	mv	a2,a5
	mv	a1,a4
	mv	a0,s1
	call	tcp_eff_send_mss_netif
	mv	a5,a0
	mv	a4,a5
	.loc 1 709 15 discriminator 2
	lw	a5,-20(s0)
	sh	a4,50(a5)
	.loc 1 722 10
	li	a1,18
	lw	a0,-20(s0)
	call	tcp_enqueue_flags
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 723 8
	lb	a5,-25(s0)
	beq	a5,zero,.L85
	.loc 1 724 7
	li	a1,0
	lw	a0,-20(s0)
	call	tcp_abandon
	.loc 1 725 7
	j	.L77
.L85:
	.loc 1 727 5
	lw	a0,-20(s0)
	call	tcp_output
	.loc 1 729 3
	j	.L87
.L86:
	.loc 1 638 5
	nop
	j	.L77
.L87:
	.loc 1 729 3
	nop
.L77:
	.loc 1 730 1
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
.LFE7:
	.size	tcp_listen_input, .-tcp_listen_input
	.section	.text.tcp_timewait_input,"ax",@progbits
	.align	1
	.type	tcp_timewait_input, @function
tcp_timewait_input:
.LFB8:
	.loc 1 743 1
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
	.loc 1 749 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,4
	.loc 1 749 6
	bne	a5,zero,.L94
	.loc 1 756 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,2
	.loc 1 756 6
	beq	a5,zero,.L91
	.loc 1 759 23
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 759 51
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 759 15
	sub	a5,a4,a5
	.loc 1 759 8
	blt	a5,zero,.L92
	.loc 1 759 113 discriminator 1
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 759 128 discriminator 1
	lw	a4,-20(s0)
	lhu	a4,40(a4)
	.loc 1 759 102 discriminator 1
	add	a4,a5,a4
	.loc 1 759 141 discriminator 1
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 759 94 discriminator 1
	sub	a5,a4,a5
	.loc 1 759 86 discriminator 1
	blt	a5,zero,.L92
	.loc 1 761 7
	lui	a5,%hi(ackno)
	lw	a1,%lo(ackno)(a5)
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 761 33
	add	a2,a4,a5
	.loc 1 762 51
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 761 7
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 762 65
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 761 7
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(ip_data+16)
	addi	a4,a4,%lo(ip_data+16)
	lui	a3,%hi(ip_data+20)
	addi	a3,a3,%lo(ip_data+20)
	lw	a0,-20(s0)
	call	tcp_rst
	.loc 1 763 7
	j	.L88
.L91:
	.loc 1 765 20
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,1
	.loc 1 765 13
	beq	a5,zero,.L92
	.loc 1 768 14
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	lw	a5,-20(s0)
	sw	a4,32(a5)
.L92:
	.loc 1 771 15
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	.loc 1 771 6
	beq	a5,zero,.L95
	.loc 1 773 43
	lw	a5,-20(s0)
	lhu	a5,26(a5)
	.loc 1 773 25
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 773 23
	lw	a5,-20(s0)
	sh	a4,26(a5)
	.loc 1 774 5
	lw	a0,-20(s0)
	call	tcp_output
	.loc 1 776 3
	j	.L95
.L94:
	.loc 1 750 5
	nop
	j	.L88
.L95:
	.loc 1 776 3
	nop
.L88:
	.loc 1 777 1
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
	.size	tcp_timewait_input, .-tcp_timewait_input
	.section	.text.tcp_process,"ax",@progbits
	.align	1
	.type	tcp_process, @function
tcp_process:
.LFB9:
	.loc 1 792 1
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
	.loc 1 794 8
	sb	zero,-21(s0)
	.loc 1 797 7
	sb	zero,-22(s0)
	.loc 1 802 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,4
	.loc 1 802 6
	beq	a5,zero,.L97
	.loc 1 804 12
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 804 8
	li	a5,2
	bne	a4,a5,.L98
	.loc 1 807 23
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 807 17
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 807 10
	bne	a4,a5,.L99
	.loc 1 808 20
	li	a5,1
	sb	a5,-21(s0)
	j	.L99
.L98:
	.loc 1 813 23
	lw	a5,-52(s0)
	lw	a4,36(a5)
	.loc 1 813 17
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 813 10
	bne	a4,a5,.L100
	.loc 1 814 20
	li	a5,1
	sb	a5,-21(s0)
	j	.L99
.L100:
	.loc 1 815 32
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 815 60
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 1 815 24
	sub	a5,a4,a5
	.loc 1 815 17
	blt	a5,zero,.L99
	.loc 1 815 122 discriminator 1
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 1 815 137 discriminator 1
	lw	a4,-52(s0)
	lhu	a4,40(a4)
	.loc 1 815 111 discriminator 1
	add	a4,a5,a4
	.loc 1 815 150 discriminator 1
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 815 103 discriminator 1
	sub	a5,a4,a5
	.loc 1 815 95 discriminator 1
	blt	a5,zero,.L99
	.loc 1 821 47
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 821 29
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 821 27
	lw	a5,-52(s0)
	sh	a4,26(a5)
.L99:
	.loc 1 825 8
	lbu	a5,-21(s0)
	beq	a5,zero,.L101
	.loc 1 828 18
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	ori	a5,a5,8
	andi	a4,a5,0xff
	lui	a5,%hi(recv_flags)
	sb	a4,%lo(recv_flags)(a5)
	.loc 1 829 45
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 829 27
	andi	a5,a5,-2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 829 25
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 830 14
	li	a5,-14
	j	.L102
.L101:
	.loc 1 836 14
	li	a5,0
	j	.L102
.L97:
	.loc 1 840 14
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,2
	.loc 1 840 6
	beq	a5,zero,.L103
	.loc 1 840 30 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 840 23 discriminator 1
	li	a5,2
	beq	a4,a5,.L103
	.loc 1 840 56 discriminator 2
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 840 50 discriminator 2
	li	a5,3
	beq	a4,a5,.L103
	.loc 1 842 43
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 842 25
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 842 23
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 843 12
	li	a5,0
	j	.L102
.L103:
	.loc 1 846 11
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 846 19
	andi	a5,a5,16
	.loc 1 846 6
	bne	a5,zero,.L104
	.loc 1 848 14
	lui	a5,%hi(tcp_ticks)
	lw	a4,%lo(tcp_ticks)(a5)
	lw	a5,-52(s0)
	sw	a4,32(a5)
.L104:
	.loc 1 850 22
	lw	a5,-52(s0)
	sb	zero,163(a5)
	.loc 1 851 22
	lw	a5,-52(s0)
	sb	zero,162(a5)
	.loc 1 853 3
	lw	a0,-52(s0)
	call	tcp_parseopt
	.loc 1 855 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,2
	.loc 1 855 6
	beq	a5,zero,.L105
	.loc 1 857 13
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 857 8
	li	a5,2
	beq	a4,a5,.L105
	.loc 1 857 41 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,20(a5)
	.loc 1 857 34 discriminator 1
	li	a5,3
	beq	a4,a5,.L105
	.loc 1 858 14
	li	a5,0
	j	.L102
.L105:
	.loc 1 863 14
	lw	a5,-52(s0)
	lbu	a5,20(a5)
	.loc 1 863 3
	li	a4,9
	beq	a5,a4,.L106
	li	a4,9
	bgt	a5,a4,.L165
	li	a4,8
	beq	a5,a4,.L108
	li	a4,8
	bgt	a5,a4,.L165
	li	a4,7
	beq	a5,a4,.L109
	li	a4,7
	bgt	a5,a4,.L165
	li	a4,6
	beq	a5,a4,.L110
	li	a4,6
	bgt	a5,a4,.L165
	li	a4,5
	beq	a5,a4,.L111
	li	a4,5
	bgt	a5,a4,.L165
	li	a4,4
	beq	a5,a4,.L109
	li	a4,4
	bgt	a5,a4,.L165
	li	a4,2
	beq	a5,a4,.L112
	li	a4,3
	beq	a5,a4,.L113
	.loc 1 1052 7
	j	.L165
.L112:
	.loc 1 869 18
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 869 10
	beq	a5,zero,.L114
	.loc 1 869 37 discriminator 1
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,2
	.loc 1 869 27 discriminator 1
	beq	a5,zero,.L114
	.loc 1 870 27
	lw	a5,-52(s0)
	lw	a5,68(a5)
	.loc 1 870 37
	addi	a4,a5,1
	.loc 1 870 21
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 870 11
	bne	a4,a5,.L114
	.loc 1 871 30
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	addi	a4,a5,1
	.loc 1 871 22
	lw	a5,-52(s0)
	sw	a4,36(a5)
	.loc 1 872 38
	lw	a5,-52(s0)
	lw	a4,36(a5)
	.loc 1 872 33
	lw	a5,-52(s0)
	sw	a4,44(a5)
	.loc 1 873 22
	lui	a5,%hi(ackno)
	lw	a4,%lo(ackno)(a5)
	lw	a5,-52(s0)
	sw	a4,68(a5)
	.loc 1 874 30
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a4,14(a5)
	lbu	a5,15(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 874 22
	lw	a5,-52(s0)
	sh	a4,96(a5)
	.loc 1 875 31
	lw	a5,-52(s0)
	lhu	a4,96(a5)
	.loc 1 875 26
	lw	a5,-52(s0)
	sh	a4,98(a5)
	.loc 1 876 30
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	addi	a4,a5,-1
	.loc 1 876 22
	lw	a5,-52(s0)
	sw	a4,84(a5)
	.loc 1 877 20
	lw	a5,-52(s0)
	li	a4,4
	sb	a4,20(a5)
	.loc 1 880 20
	lw	a5,-52(s0)
	lhu	s1,50(a5)
	.loc 1 880 63
	lw	a5,-52(s0)
	addi	a5,a5,4
	.loc 1 880 20
	mv	a0,a5
	call	ip4_route
	mv	a4,a0
	.loc 1 880 81 discriminator 1
	lw	a5,-52(s0)
	addi	a5,a5,4
	.loc 1 880 20 discriminator 1
	mv	a2,a5
	mv	a1,a4
	mv	a0,s1
	call	tcp_eff_send_mss_netif
	mv	a5,a0
	mv	a4,a5
	.loc 1 880 18 discriminator 2
	lw	a5,-52(s0)
	sh	a4,50(a5)
	.loc 1 883 50
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 883 44
	slli	a4,a5,2
	.loc 1 883 75
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 883 69
	slli	a5,a5,1
	.loc 1 883 117
	li	a3,4096
	addi	a3,a3,284
	bgeu	a5,a3,.L115
	li	a5,4096
	addi	a5,a5,284
.L115:
	.loc 1 883 22
	bgeu	a4,a5,.L116
	.loc 1 883 143 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 883 22 discriminator 1
	slli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L117
.L116:
	.loc 1 883 168 discriminator 2
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 883 162 discriminator 2
	slli	a4,a5,1
	.loc 1 883 22 discriminator 2
	li	a5,4096
	addi	a5,a5,284
	bleu	a4,a5,.L118
	.loc 1 883 201 discriminator 4
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 883 22 discriminator 4
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L117
.L118:
	.loc 1 883 22 is_stmt 0 discriminator 5
	li	a5,4096
	addi	a5,a5,284
.L117:
	.loc 1 883 19 is_stmt 1 discriminator 7
	lw	a4,-52(s0)
	sh	a5,72(a4)
	.loc 1 888 14
	lw	a5,-52(s0)
	lhu	a5,102(a5)
	.loc 1 888 9
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,102(a5)
	.loc 1 890 14
	lw	a5,-52(s0)
	lw	a5,112(a5)
	sw	a5,-20(s0)
	.loc 1 891 12
	lw	a5,-20(s0)
	bne	a5,zero,.L119
	.loc 1 894 16
	lw	a5,-52(s0)
	lw	a5,108(a5)
	sw	a5,-20(s0)
	.loc 1 896 29
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 896 23
	lw	a5,-52(s0)
	sw	a4,108(a5)
	j	.L120
.L119:
	.loc 1 898 30
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 898 24
	lw	a5,-52(s0)
	sw	a4,112(a5)
.L120:
	.loc 1 900 9
	lw	a0,-20(s0)
	call	tcp_seg_free
	.loc 1 904 16
	lw	a5,-52(s0)
	lw	a5,112(a5)
	.loc 1 904 12
	bne	a5,zero,.L121
	.loc 1 905 22
	lw	a5,-52(s0)
	li	a4,-1
	sh	a4,48(a5)
	j	.L122
.L121:
	.loc 1 907 22
	lw	a5,-52(s0)
	sh	zero,48(a5)
	.loc 1 908 21
	lw	a5,-52(s0)
	sb	zero,66(a5)
.L122:
	.loc 1 913 22
	lw	a5,-52(s0)
	lw	a5,136(a5)
	.loc 1 913 16
	beq	a5,zero,.L123
	.loc 1 913 23 discriminator 1
	lw	a5,-52(s0)
	lw	a5,136(a5)
	.loc 1 913 18 discriminator 1
	lw	a4,-52(s0)
	lw	a4,16(a4)
	li	a2,0
	lw	a1,-52(s0)
	mv	a0,a4
	jalr	a5
.LVL6:
	mv	a5,a0
	sb	a5,-22(s0)
	j	.L124
.L123:
	.loc 1 913 83 discriminator 2
	sb	zero,-22(s0)
.L124:
	.loc 1 914 12
	lb	a4,-22(s0)
	li	a5,-13
	bne	a4,a5,.L125
	.loc 1 915 18
	li	a5,-13
	j	.L102
.L125:
	.loc 1 917 47
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 917 29
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 917 27
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 932 7
	j	.L166
.L114:
	.loc 1 920 22
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 920 15
	beq	a5,zero,.L166
	.loc 1 922 9
	lui	a5,%hi(ackno)
	lw	a1,%lo(ackno)(a5)
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 922 35
	add	a2,a4,a5
	.loc 1 923 53
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 922 9
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 923 67
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 922 9
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(ip_data+16)
	addi	a4,a4,%lo(ip_data+16)
	lui	a3,%hi(ip_data+20)
	addi	a3,a3,%lo(ip_data+20)
	lw	a0,-52(s0)
	call	tcp_rst
	.loc 1 927 16
	lw	a5,-52(s0)
	lbu	a4,66(a5)
	.loc 1 927 12
	li	a5,5
	bgtu	a4,a5,.L166
	.loc 1 928 22
	lw	a5,-52(s0)
	sh	zero,48(a5)
	.loc 1 929 11
	lw	a0,-52(s0)
	call	tcp_rexmit_rto
	.loc 1 932 7
	j	.L166
.L113:
	.loc 1 934 17
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,2
	.loc 1 934 10
	beq	a5,zero,.L128
	.loc 1 935 25
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 1 935 35
	addi	a4,a5,-1
	.loc 1 935 19
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 935 12
	bne	a4,a5,.L167
	.loc 1 937 11
	lw	a0,-52(s0)
	call	tcp_rexmit
	.loc 1 991 7
	j	.L167
.L128:
	.loc 1 939 24
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 939 17
	beq	a5,zero,.L167
	.loc 1 941 19
	lui	a5,%hi(ackno)
	lw	a4,%lo(ackno)(a5)
	.loc 1 941 55
	lw	a5,-52(s0)
	lw	a5,68(a5)
	.loc 1 941 19
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 941 12
	blt	a5,zero,.L130
	.loc 1 941 121 discriminator 1
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 941 134 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 941 102 discriminator 1
	sub	a5,a4,a5
	.loc 1 941 94 discriminator 1
	blt	a5,zero,.L130
	.loc 1 942 22
	lw	a5,-52(s0)
	li	a4,4
	sb	a4,20(a5)
	.loc 1 945 18
	lw	a5,-52(s0)
	lw	a5,124(a5)
	.loc 1 945 14
	bne	a5,zero,.L131
	.loc 1 947 17
	li	a5,-6
	sb	a5,-22(s0)
	j	.L132
.L131:
	.loc 1 956 25
	lw	a5,-52(s0)
	lw	a5,124(a5)
	.loc 1 956 36
	lw	a5,24(a5)
	.loc 1 956 20
	beq	a5,zero,.L133
	.loc 1 956 26 discriminator 1
	lw	a5,-52(s0)
	lw	a5,124(a5)
	.loc 1 956 37 discriminator 1
	lw	a5,24(a5)
	.loc 1 956 26 discriminator 1
	lw	a4,-52(s0)
	lw	a4,16(a4)
	li	a2,0
	lw	a1,-52(s0)
	mv	a0,a4
	jalr	a5
.LVL7:
	mv	a5,a0
	sb	a5,-22(s0)
	j	.L132
.L133:
	.loc 1 956 94 discriminator 2
	li	a5,-16
	sb	a5,-22(s0)
.L132:
	.loc 1 958 14
	lb	a5,-22(s0)
	beq	a5,zero,.L134
	.loc 1 962 16
	lb	a4,-22(s0)
	li	a5,-13
	beq	a4,a5,.L135
	.loc 1 963 15
	lw	a0,-52(s0)
	call	tcp_abort
.L135:
	.loc 1 965 20
	li	a5,-13
	j	.L102
.L134:
	.loc 1 969 11
	lw	a0,-52(s0)
	call	tcp_receive
	.loc 1 972 26
	lui	a5,%hi(recv_acked)
	lhu	a5,%lo(recv_acked)(a5)
	.loc 1 972 14
	beq	a5,zero,.L136
	.loc 1 973 23
	lui	a5,%hi(recv_acked)
	lhu	a5,%lo(recv_acked)(a5)
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(recv_acked)
	sh	a4,%lo(recv_acked)(a5)
.L136:
	.loc 1 976 52
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 976 46
	slli	a4,a5,2
	.loc 1 976 77
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 976 71
	slli	a5,a5,1
	.loc 1 976 119
	li	a3,4096
	addi	a3,a3,284
	bgeu	a5,a3,.L137
	li	a5,4096
	addi	a5,a5,284
.L137:
	.loc 1 976 24
	bgeu	a4,a5,.L138
	.loc 1 976 145 discriminator 1
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 976 24 discriminator 1
	slli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L139
.L138:
	.loc 1 976 170 discriminator 2
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 976 164 discriminator 2
	slli	a4,a5,1
	.loc 1 976 24 discriminator 2
	li	a5,4096
	addi	a5,a5,284
	bleu	a4,a5,.L140
	.loc 1 976 203 discriminator 4
	lw	a5,-52(s0)
	lhu	a5,50(a5)
	.loc 1 976 24 discriminator 4
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L139
.L140:
	.loc 1 976 24 is_stmt 0 discriminator 5
	li	a5,4096
	addi	a5,a5,284
.L139:
	.loc 1 976 21 is_stmt 1 discriminator 7
	lw	a4,-52(s0)
	sh	a5,72(a4)
	.loc 1 981 26
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,32
	.loc 1 981 14
	beq	a5,zero,.L129
	.loc 1 982 51
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 982 33
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 982 31
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 983 24
	lw	a5,-52(s0)
	li	a4,7
	sb	a4,20(a5)
	.loc 1 981 14
	j	.L129
.L130:
	.loc 1 987 11
	lui	a5,%hi(ackno)
	lw	a1,%lo(ackno)(a5)
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 987 37
	add	a2,a4,a5
	.loc 1 988 55
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 987 11
	lbu	a4,2(a5)
	lbu	a5,3(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 988 69
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 987 11
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(ip_data+16)
	addi	a4,a4,%lo(ip_data+16)
	lui	a3,%hi(ip_data+20)
	addi	a3,a3,%lo(ip_data+20)
	lw	a0,-52(s0)
	call	tcp_rst
	.loc 1 991 7
	j	.L167
.L129:
	j	.L167
.L109:
	.loc 1 995 7
	lw	a0,-52(s0)
	call	tcp_receive
	.loc 1 996 22
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,32
	.loc 1 996 10
	beq	a5,zero,.L168
	.loc 1 997 47
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 997 29
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 997 27
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 998 20
	lw	a5,-52(s0)
	li	a4,7
	sb	a4,20(a5)
	.loc 1 1000 7
	j	.L168
.L111:
	.loc 1 1002 7
	lw	a0,-52(s0)
	call	tcp_receive
	.loc 1 1003 22
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,32
	.loc 1 1003 10
	beq	a5,zero,.L143
	.loc 1 1004 20
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 1004 12
	beq	a5,zero,.L144
	.loc 1 1004 45 discriminator 1
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 1004 39 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1004 29 discriminator 1
	bne	a4,a5,.L144
	.loc 1 1005 16
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1004 56 discriminator 2
	bne	a5,zero,.L144
	.loc 1 1008 49
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1008 31
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1008 29
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1009 11
	lw	a0,-52(s0)
	call	tcp_pcb_purge
	.loc 1 1010 44
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	.loc 1 1010 23
	lw	a4,-52(s0)
	bne	a4,a5,.L145
	.loc 1 1010 99 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 1010 78 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	j	.L146
.L145:
.LBB7:
	.loc 1 1010 162 discriminator 2
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-28(s0)
	.loc 1 1010 145
	j	.L147
.L149:
	.loc 1 1010 61 discriminator 9
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 1010 49 discriminator 9
	lw	a4,-52(s0)
	bne	a4,a5,.L148
	.loc 1 1010 105 discriminator 5
	lw	a5,-52(s0)
	lw	a4,12(a5)
	.loc 1 1010 98 discriminator 5
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 1010 113
	j	.L146
.L148:
	.loc 1 1010 24 discriminator 6
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L147:
	.loc 1 1010 195 discriminator 8
	lw	a5,-28(s0)
	bne	a5,zero,.L149
.L146:
.LBE7:
	.loc 1 1010 138 discriminator 10
	lw	a5,-52(s0)
	sw	zero,12(a5)
	.loc 1 1010 48 discriminator 10
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1011 22
	lw	a5,-52(s0)
	li	a4,10
	sb	a4,20(a5)
	.loc 1 1012 28
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a4,%lo(tcp_tw_pcbs)(a5)
	lw	a5,-52(s0)
	sw	a4,12(a5)
	.loc 1 1012 61
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a4,-52(s0)
	sw	a4,%lo(tcp_tw_pcbs)(a5)
	.loc 1 1012 70
	call	tcp_timer_needed
	.loc 1 1021 7
	j	.L169
.L144:
	.loc 1 1014 49
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1014 31
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1014 29
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1015 22
	lw	a5,-52(s0)
	li	a4,8
	sb	a4,20(a5)
	.loc 1 1021 7
	j	.L169
.L143:
	.loc 1 1017 25
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 1017 17
	beq	a5,zero,.L169
	.loc 1 1017 50 discriminator 1
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 1017 44 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1017 34 discriminator 1
	bne	a4,a5,.L169
	.loc 1 1018 21
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1017 61 discriminator 2
	bne	a5,zero,.L169
	.loc 1 1019 20
	lw	a5,-52(s0)
	li	a4,6
	sb	a4,20(a5)
	.loc 1 1021 7
	j	.L169
.L110:
	.loc 1 1023 7
	lw	a0,-52(s0)
	call	tcp_receive
	.loc 1 1024 22
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	andi	a5,a5,32
	.loc 1 1024 10
	beq	a5,zero,.L170
	.loc 1 1026 47
	lw	a5,-52(s0)
	lhu	a5,26(a5)
	.loc 1 1026 29
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1026 27
	lw	a5,-52(s0)
	sh	a4,26(a5)
	.loc 1 1027 9
	lw	a0,-52(s0)
	call	tcp_pcb_purge
	.loc 1 1028 42
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	.loc 1 1028 21
	lw	a4,-52(s0)
	bne	a4,a5,.L153
	.loc 1 1028 97 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 1028 76 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	j	.L154
.L153:
.LBB8:
	.loc 1 1028 160 discriminator 2
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-32(s0)
	.loc 1 1028 143
	j	.L155
.L157:
	.loc 1 1028 59 discriminator 9
	lw	a5,-32(s0)
	lw	a5,12(a5)
	.loc 1 1028 47 discriminator 9
	lw	a4,-52(s0)
	bne	a4,a5,.L156
	.loc 1 1028 103 discriminator 5
	lw	a5,-52(s0)
	lw	a4,12(a5)
	.loc 1 1028 96 discriminator 5
	lw	a5,-32(s0)
	sw	a4,12(a5)
	.loc 1 1028 111
	j	.L154
.L156:
	.loc 1 1028 22 discriminator 6
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
.L155:
	.loc 1 1028 193 discriminator 8
	lw	a5,-32(s0)
	bne	a5,zero,.L157
.L154:
.LBE8:
	.loc 1 1028 136 discriminator 10
	lw	a5,-52(s0)
	sw	zero,12(a5)
	.loc 1 1028 46 discriminator 10
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1029 20
	lw	a5,-52(s0)
	li	a4,10
	sb	a4,20(a5)
	.loc 1 1030 26
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a4,%lo(tcp_tw_pcbs)(a5)
	lw	a5,-52(s0)
	sw	a4,12(a5)
	.loc 1 1030 59
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a4,-52(s0)
	sw	a4,%lo(tcp_tw_pcbs)(a5)
	.loc 1 1030 68
	call	tcp_timer_needed
	.loc 1 1032 7
	j	.L170
.L108:
	.loc 1 1034 7
	lw	a0,-52(s0)
	call	tcp_receive
	.loc 1 1035 18
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 1035 10
	beq	a5,zero,.L171
	.loc 1 1035 42 discriminator 1
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 1035 36 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1035 27 discriminator 1
	bne	a4,a5,.L171
	.loc 1 1035 58 discriminator 2
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1035 52 discriminator 2
	bne	a5,zero,.L171
	.loc 1 1037 9
	lw	a0,-52(s0)
	call	tcp_pcb_purge
	.loc 1 1038 42
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	.loc 1 1038 21
	lw	a4,-52(s0)
	bne	a4,a5,.L159
	.loc 1 1038 97 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	lw	a4,12(a5)
	.loc 1 1038 76 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	sw	a4,%lo(tcp_active_pcbs)(a5)
	j	.L160
.L159:
.LBB9:
	.loc 1 1038 160 discriminator 2
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-36(s0)
	.loc 1 1038 143
	j	.L161
.L163:
	.loc 1 1038 59 discriminator 9
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1038 47 discriminator 9
	lw	a4,-52(s0)
	bne	a4,a5,.L162
	.loc 1 1038 103 discriminator 5
	lw	a5,-52(s0)
	lw	a4,12(a5)
	.loc 1 1038 96 discriminator 5
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 1 1038 111
	j	.L160
.L162:
	.loc 1 1038 22 discriminator 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
.L161:
	.loc 1 1038 193 discriminator 8
	lw	a5,-36(s0)
	bne	a5,zero,.L163
.L160:
.LBE9:
	.loc 1 1038 136 discriminator 10
	lw	a5,-52(s0)
	sw	zero,12(a5)
	.loc 1 1038 46 discriminator 10
	lui	a5,%hi(tcp_active_pcbs_changed)
	li	a4,1
	sb	a4,%lo(tcp_active_pcbs_changed)(a5)
	.loc 1 1039 20
	lw	a5,-52(s0)
	li	a4,10
	sb	a4,20(a5)
	.loc 1 1040 26
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a4,%lo(tcp_tw_pcbs)(a5)
	lw	a5,-52(s0)
	sw	a4,12(a5)
	.loc 1 1040 59
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a4,-52(s0)
	sw	a4,%lo(tcp_tw_pcbs)(a5)
	.loc 1 1040 68
	call	tcp_timer_needed
	.loc 1 1042 7
	j	.L171
.L106:
	.loc 1 1044 7
	lw	a0,-52(s0)
	call	tcp_receive
	.loc 1 1045 18
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 1045 10
	beq	a5,zero,.L172
	.loc 1 1045 42 discriminator 1
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 1045 36 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1045 27 discriminator 1
	bne	a4,a5,.L172
	.loc 1 1045 58 discriminator 2
	lw	a5,-52(s0)
	lw	a5,108(a5)
	.loc 1 1045 52 discriminator 2
	bne	a5,zero,.L172
	.loc 1 1048 20
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	ori	a5,a5,16
	andi	a4,a5,0xff
	lui	a5,%hi(recv_flags)
	sb	a4,%lo(recv_flags)(a5)
	.loc 1 1050 7
	j	.L172
.L165:
	.loc 1 1052 7
	nop
	j	.L127
.L166:
	.loc 1 932 7
	nop
	j	.L127
.L167:
	.loc 1 991 7
	nop
	j	.L127
.L168:
	.loc 1 1000 7
	nop
	j	.L127
.L169:
	.loc 1 1021 7
	nop
	j	.L127
.L170:
	.loc 1 1032 7
	nop
	j	.L127
.L171:
	.loc 1 1042 7
	nop
	j	.L127
.L172:
	.loc 1 1050 7
	nop
.L127:
	.loc 1 1054 10
	li	a5,0
.L102:
	.loc 1 1055 1
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
.LFE9:
	.size	tcp_process, .-tcp_process
	.section	.text.tcp_oos_insert_segment,"ax",@progbits
	.align	1
	.type	tcp_oos_insert_segment, @function
tcp_oos_insert_segment:
.LFB10:
	.loc 1 1065 1
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
	.loc 1 1070 32
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1070 16
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1070 8 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1070 74 discriminator 1
	andi	a5,a5,1
	.loc 1 1070 6 discriminator 1
	beq	a5,zero,.L176
	.loc 1 1072 5
	lw	a0,-40(s0)
	call	tcp_segs_free
	.loc 1 1073 10
	sw	zero,-40(s0)
	j	.L175
.L179:
	.loc 1 1081 36
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1081 20
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1081 12 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1081 78 discriminator 1
	andi	a5,a5,1
	.loc 1 1081 10 discriminator 1
	beq	a5,zero,.L177
	.loc 1 1082 52
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1082 61
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 1082 84
	li	a0,1
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1082 14 discriminator 1
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1082 44 discriminator 1
	or	a4,s1,a4
	slli	a4,a4,16
	srli	a4,a4,16
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
.L177:
	.loc 1 1084 15
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 1085 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-40(s0)
	.loc 1 1086 7
	lw	a0,-20(s0)
	call	tcp_seg_free
.L176:
	.loc 1 1077 17
	lw	a5,-40(s0)
	beq	a5,zero,.L178
	.loc 1 1078 46
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a4,a5
	.loc 1 1078 25
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a4,a4,a5
	.loc 1 1078 69
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1078 77
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	mv	a3,a5
	.loc 1 1078 91
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 1078 56
	add	a5,a3,a5
	.loc 1 1078 17
	sub	a5,a4,a5
	.loc 1 1077 17 discriminator 1
	bge	a5,zero,.L179
.L178:
	.loc 1 1088 8
	lw	a5,-40(s0)
	beq	a5,zero,.L175
	.loc 1 1089 31
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1089 39
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1089 70
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a3,a5
	.loc 1 1089 50
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a5,a3,a5
	.loc 1 1089 11
	sub	a5,a4,a5
	.loc 1 1088 14 discriminator 1
	bge	a5,zero,.L175
	.loc 1 1091 31
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1091 39
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 1091 19
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1091 17
	lw	a5,-36(s0)
	sh	a4,8(a5)
	.loc 1 1092 7
	lw	a5,-36(s0)
	lw	a4,4(a5)
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
.L175:
	.loc 1 1095 14
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 1096 1
	nop
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
.LFE10:
	.size	tcp_oos_insert_segment, .-tcp_oos_insert_segment
	.section	.text.tcp_free_acked_segments,"ax",@progbits
	.align	1
	.type	tcp_free_acked_segments, @function
tcp_free_acked_segments:
.LFB11:
	.loc 1 1103 1
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
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 1 1110 9
	j	.L181
.L185:
	.loc 1 1118 10
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 1 1119 14
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-56(s0)
	.loc 1 1121 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1121 12
	mv	a0,a5
	call	pbuf_clen
	mv	a5,a0
	sh	a5,-38(s0)
	.loc 1 1126 36
	lw	a5,-52(s0)
	lhu	a5,102(a5)
	.loc 1 1126 25
	lhu	a4,-38(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1126 23
	lw	a5,-52(s0)
	sh	a4,102(a5)
	.loc 1 1127 51
	lw	a5,-36(s0)
	lhu	a4,8(a5)
	.loc 1 1127 18
	lui	a5,%hi(recv_acked)
	lhu	a5,%lo(recv_acked)(a5)
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1127 16
	lui	a5,%hi(recv_acked)
	sh	a4,%lo(recv_acked)(a5)
	.loc 1 1128 5
	lw	a0,-36(s0)
	call	tcp_seg_free
.L181:
	.loc 1 1110 26
	lw	a5,-56(s0)
	beq	a5,zero,.L182
	.loc 1 1111 23
	lui	a5,%hi(ackno)
	lw	s1,%lo(ackno)(a5)
	.loc 1 1111 67
	lw	a5,-56(s0)
	lw	a5,16(a5)
	.loc 1 1111 48
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	s2,a0
	.loc 1 1111 97 discriminator 1
	lw	a5,-56(s0)
	lhu	a5,8(a5)
	mv	s3,a5
	.loc 1 1111 139 discriminator 1
	lw	a5,-56(s0)
	lw	a5,16(a5)
	.loc 1 1111 117 discriminator 1
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1111 109 discriminator 2
	andi	a5,a5,0xff
	.loc 1 1111 181 discriminator 2
	andi	a5,a5,3
	.loc 1 1111 211 discriminator 2
	beq	a5,zero,.L183
	.loc 1 1111 211 is_stmt 0 discriminator 3
	li	a5,1
	j	.L184
.L183:
	.loc 1 1111 211 discriminator 4
	li	a5,0
.L184:
	.loc 1 1111 103 is_stmt 1 discriminator 6
	add	a5,a5,s3
	.loc 1 1111 40 discriminator 6
	add	a5,s2,a5
	.loc 1 1111 15 discriminator 6
	sub	a5,s1,a5
	.loc 1 1110 26
	bge	a5,zero,.L185
.L182:
	.loc 1 1138 10
	lw	a5,-56(s0)
	.loc 1 1139 1
	mv	a0,a5
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
.LFE11:
	.size	tcp_free_acked_segments, .-tcp_free_acked_segments
	.section	.rodata
	.align	2
.LC0:
	.string	"unacked"
	.align	2
.LC1:
	.string	"unsent"
	.section	.text.tcp_receive,"ax",@progbits
	.align	1
	.type	tcp_receive, @function
tcp_receive:
.LFB12:
	.loc 1 1155 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	.loc 1 1162 13
	lui	a5,%hi(flags)
	lbu	a5,%lo(flags)(a5)
	andi	a5,a5,16
	.loc 1 1162 6
	beq	a5,zero,.L188
	.loc 1 1163 25
	lw	a5,-84(s0)
	lhu	a5,96(a5)
	mv	a4,a5
	.loc 1 1163 40
	lw	a5,-84(s0)
	lw	a5,88(a5)
	.loc 1 1163 20
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 1166 30
	lw	a5,-84(s0)
	lw	a4,84(a5)
	.loc 1 1166 43
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 1166 11
	sub	a5,a4,a5
	.loc 1 1166 8
	blt	a5,zero,.L189
	.loc 1 1167 13
	lw	a5,-84(s0)
	lw	a4,84(a5)
	.loc 1 1167 23
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 1166 80 discriminator 1
	bne	a4,a5,.L190
	.loc 1 1167 56
	lw	a5,-84(s0)
	lw	a4,88(a5)
	.loc 1 1167 69
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1167 37
	sub	a5,a4,a5
	.loc 1 1167 32
	blt	a5,zero,.L189
.L190:
	.loc 1 1168 13
	lw	a5,-84(s0)
	lw	a4,88(a5)
	.loc 1 1168 23
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1167 107 discriminator 1
	bne	a4,a5,.L191
	.loc 1 1168 49
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a4,14(a5)
	lbu	a5,15(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1168 61
	lw	a5,-84(s0)
	lhu	a5,96(a5)
	.loc 1 1168 32
	bleu	a4,a5,.L191
.L189:
	.loc 1 1169 29
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	lbu	a4,14(a5)
	lbu	a5,15(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1169 20
	lw	a5,-84(s0)
	sh	a4,96(a5)
	.loc 1 1172 14
	lw	a5,-84(s0)
	lhu	a4,98(a5)
	.loc 1 1172 33
	lw	a5,-84(s0)
	lhu	a5,96(a5)
	.loc 1 1172 10
	bgeu	a4,a5,.L192
	.loc 1 1173 31
	lw	a5,-84(s0)
	lhu	a4,96(a5)
	.loc 1 1173 26
	lw	a5,-84(s0)
	sh	a4,98(a5)
.L192:
	.loc 1 1175 20
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	lw	a5,-84(s0)
	sw	a4,84(a5)
	.loc 1 1176 20
	lui	a5,%hi(ackno)
	lw	a4,%lo(ackno)(a5)
	lw	a5,-84(s0)
	sw	a4,88(a5)
.L191:
	.loc 1 1210 33
	lw	a5,-84(s0)
	lw	a4,68(a5)
	.loc 1 1210 46
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1210 14
	sub	a5,a4,a5
	.loc 1 1210 8
	blt	a5,zero,.L193
	.loc 1 1212 18
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	.loc 1 1212 10
	bne	a5,zero,.L194
	.loc 1 1214 16
	lw	a5,-84(s0)
	lw	a5,88(a5)
	.loc 1 1214 31
	lw	a4,-84(s0)
	lhu	a4,96(a4)
	.loc 1 1214 26
	add	a5,a5,a4
	.loc 1 1214 12
	lw	a4,-44(s0)
	bne	a4,a5,.L194
	.loc 1 1216 18
	lw	a5,-84(s0)
	lh	a5,48(a5)
	.loc 1 1216 14
	blt	a5,zero,.L194
	.loc 1 1218 20
	lw	a5,-84(s0)
	lw	a4,68(a5)
	.loc 1 1218 30
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1218 16
	bne	a4,a5,.L194
	.loc 1 1219 29
	lw	a5,-84(s0)
	lbu	a4,67(a5)
	.loc 1 1219 18
	li	a5,255
	beq	a4,a5,.L195
	.loc 1 1220 22
	lw	a5,-84(s0)
	lbu	a5,67(a5)
	.loc 1 1220 17
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-84(s0)
	sb	a4,67(a5)
.L195:
	.loc 1 1222 22
	lw	a5,-84(s0)
	lbu	a4,67(a5)
	.loc 1 1222 18
	li	a5,3
	bleu	a4,a5,.L196
	.loc 1 1224 45
	lw	a5,-84(s0)
	lhu	a4,72(a5)
	.loc 1 1224 57
	lw	a5,-84(s0)
	lhu	a5,50(a5)
	.loc 1 1224 26
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1224 70
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1224 25
	bltu	a4,a5,.L197
	.loc 1 1224 111 discriminator 1
	lw	a5,-84(s0)
	lhu	a4,72(a5)
	.loc 1 1224 123 discriminator 1
	lw	a5,-84(s0)
	lhu	a5,50(a5)
	.loc 1 1224 92 discriminator 1
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1224 90 discriminator 1
	lw	a5,-84(s0)
	sh	a4,72(a5)
	j	.L196
.L197:
	.loc 1 1224 150 discriminator 2
	lw	a5,-84(s0)
	li	a4,-1
	sh	a4,72(a5)
.L196:
	.loc 1 1226 22
	lw	a5,-84(s0)
	lbu	a4,67(a5)
	.loc 1 1226 18
	li	a5,2
	bleu	a4,a5,.L194
	.loc 1 1228 17
	lw	a0,-84(s0)
	call	tcp_rexmit_fast
	j	.L194
.L193:
	.loc 1 1234 22
	lui	a5,%hi(ackno)
	lw	a4,%lo(ackno)(a5)
	.loc 1 1234 58
	lw	a5,-84(s0)
	lw	a5,68(a5)
	.loc 1 1234 22
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1234 15
	blt	a5,zero,.L198
	.loc 1 1234 124 discriminator 1
	lw	a5,-84(s0)
	lw	a4,80(a5)
	.loc 1 1234 137 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1234 105 discriminator 1
	sub	a5,a4,a5
	.loc 1 1234 97 discriminator 1
	blt	a5,zero,.L198
.LBB10:
	.loc 1 1241 14
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1241 22
	andi	a5,a5,4
	.loc 1 1241 10
	beq	a5,zero,.L199
	.loc 1 1242 47
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1242 29
	andi	a5,a5,-5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1242 27
	lw	a5,-84(s0)
	sh	a4,26(a5)
	.loc 1 1243 24
	lw	a5,-84(s0)
	lhu	a4,74(a5)
	.loc 1 1243 19
	lw	a5,-84(s0)
	sh	a4,72(a5)
	.loc 1 1244 26
	lw	a5,-84(s0)
	sh	zero,106(a5)
.L199:
	.loc 1 1248 17
	lw	a5,-84(s0)
	sb	zero,66(a5)
	.loc 1 1251 30
	lw	a5,-84(s0)
	lh	a5,60(a5)
	.loc 1 1251 41
	srai	a5,a5,3
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1251 46
	lw	a5,-84(s0)
	lh	a5,62(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1251 41
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1251 18
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1251 16
	lw	a5,-84(s0)
	sh	a4,64(a5)
	.loc 1 1254 15
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1254 42
	lw	a5,-84(s0)
	lw	a5,68(a5)
	.loc 1 1254 15
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1254 13
	sub	a5,a4,a5
	sh	a5,-46(s0)
	.loc 1 1257 20
	lw	a5,-84(s0)
	sb	zero,67(a5)
	.loc 1 1258 20
	lui	a5,%hi(ackno)
	lw	a4,%lo(ackno)(a5)
	lw	a5,-84(s0)
	sw	a4,68(a5)
	.loc 1 1262 14
	lw	a5,-84(s0)
	lbu	a4,20(a5)
	.loc 1 1262 10
	li	a5,3
	bleu	a4,a5,.L200
	.loc 1 1263 16
	lw	a5,-84(s0)
	lhu	a4,72(a5)
	.loc 1 1263 28
	lw	a5,-84(s0)
	lhu	a5,74(a5)
	.loc 1 1263 12
	bgeu	a4,a5,.L201
.LBB11:
	.loc 1 1266 30
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1266 38
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 1266 16
	beq	a5,zero,.L202
	.loc 1 1266 16 is_stmt 0 discriminator 1
	li	a5,1
	sb	a5,-19(s0)
	j	.L203
.L202:
	.loc 1 1266 16 discriminator 2
	li	a5,2
	sb	a5,-19(s0)
.L203:
	.loc 1 1268 35 is_stmt 1
	lbu	a5,-19(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1268 64
	lw	a5,-84(s0)
	lhu	a5,50(a5)
	.loc 1 1268 35
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1268 20
	mv	a2,a5
	lhu	a5,-46(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L204
	mv	a5,a2
.L204:
	sh	a5,-48(s0)
	.loc 1 1269 39
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1269 20
	lhu	a4,-48(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1269 64
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1269 19
	bltu	a4,a5,.L205
	.loc 1 1269 105 discriminator 1
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1269 86 discriminator 1
	lhu	a4,-48(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1269 84 discriminator 1
	lw	a5,-84(s0)
	sh	a4,72(a5)
	j	.L200
.L205:
	.loc 1 1269 144 discriminator 2
	lw	a5,-84(s0)
	li	a4,-1
	sh	a4,72(a5)
	j	.L200
.L201:
.LBE11:
	.loc 1 1273 39
	lw	a5,-84(s0)
	lhu	a5,106(a5)
	.loc 1 1273 20
	lhu	a4,-46(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1273 68
	lw	a5,-84(s0)
	lhu	a5,106(a5)
	.loc 1 1273 19
	bltu	a4,a5,.L206
	.loc 1 1273 123 discriminator 1
	lw	a5,-84(s0)
	lhu	a5,106(a5)
	.loc 1 1273 104 discriminator 1
	lhu	a4,-46(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1273 102 discriminator 1
	lw	a5,-84(s0)
	sh	a4,106(a5)
	j	.L207
.L206:
	.loc 1 1273 173 discriminator 2
	lw	a5,-84(s0)
	li	a4,-1
	sh	a4,106(a5)
.L207:
	.loc 1 1274 18
	lw	a5,-84(s0)
	lhu	a4,106(a5)
	.loc 1 1274 38
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1274 14
	bltu	a4,a5,.L200
	.loc 1 1275 51
	lw	a5,-84(s0)
	lhu	a4,106(a5)
	.loc 1 1275 70
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1275 32
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1275 30
	lw	a5,-84(s0)
	sh	a4,106(a5)
	.loc 1 1276 41
	lw	a5,-84(s0)
	lhu	a4,72(a5)
	.loc 1 1276 53
	lw	a5,-84(s0)
	lhu	a5,50(a5)
	.loc 1 1276 22
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1276 66
	lw	a5,-84(s0)
	lhu	a5,72(a5)
	.loc 1 1276 21
	bltu	a4,a5,.L208
	.loc 1 1276 107 discriminator 1
	lw	a5,-84(s0)
	lhu	a4,72(a5)
	.loc 1 1276 119 discriminator 1
	lw	a5,-84(s0)
	lhu	a5,50(a5)
	.loc 1 1276 88 discriminator 1
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1276 86 discriminator 1
	lw	a5,-84(s0)
	sh	a4,72(a5)
	j	.L200
.L208:
	.loc 1 1276 146 discriminator 2
	lw	a5,-84(s0)
	li	a4,-1
	sh	a4,72(a5)
.L200:
	.loc 1 1290 22
	lw	a5,-84(s0)
	lw	a4,112(a5)
	lw	a5,-84(s0)
	lw	a5,108(a5)
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	mv	a1,a4
	lw	a0,-84(s0)
	call	tcp_free_acked_segments
	mv	a4,a0
	.loc 1 1290 20 discriminator 1
	lw	a5,-84(s0)
	sw	a4,112(a5)
	.loc 1 1297 21
	lw	a5,-84(s0)
	lw	a4,108(a5)
	lw	a5,-84(s0)
	lw	a5,112(a5)
	mv	a3,a5
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	mv	a1,a4
	lw	a0,-84(s0)
	call	tcp_free_acked_segments
	mv	a4,a0
	.loc 1 1297 19 discriminator 1
	lw	a5,-84(s0)
	sw	a4,108(a5)
	.loc 1 1301 14
	lw	a5,-84(s0)
	lw	a5,112(a5)
	.loc 1 1301 10
	bne	a5,zero,.L209
	.loc 1 1302 20
	lw	a5,-84(s0)
	li	a4,-1
	sh	a4,48(a5)
	j	.L210
.L209:
	.loc 1 1304 20
	lw	a5,-84(s0)
	sh	zero,48(a5)
.L210:
	.loc 1 1307 20
	lw	a5,-84(s0)
	sb	zero,28(a5)
	.loc 1 1310 14
	lw	a5,-84(s0)
	lw	a5,108(a5)
	.loc 1 1310 10
	bne	a5,zero,.L211
	.loc 1 1311 30
	lw	a5,-84(s0)
	sh	zero,104(a5)
.L211:
	.loc 1 1322 41
	lw	a5,-84(s0)
	lhu	a4,100(a5)
	.loc 1 1322 22
	lui	a5,%hi(recv_acked)
	lhu	a5,%lo(recv_acked)(a5)
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1322 20
	lw	a5,-84(s0)
	sh	a4,100(a5)
	.loc 1 1324 14
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1324 22
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 1324 10
	beq	a5,zero,.L286
	.loc 1 1329 16
	lw	a5,-84(s0)
	lw	a5,112(a5)
	.loc 1 1329 12
	bne	a5,zero,.L213
	.loc 1 1330 19
	lw	a5,-84(s0)
	lw	a5,108(a5)
	.loc 1 1330 14
	beq	a5,zero,.L214
	.loc 1 1331 51
	lw	a5,-84(s0)
	lw	a5,108(a5)
	.loc 1 1331 59
	lw	a5,16(a5)
	.loc 1 1331 37
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1331 90 discriminator 1
	lw	a5,-84(s0)
	lw	a5,76(a5)
	.loc 1 1331 21 discriminator 1
	sub	a5,a4,a5
	.loc 1 1330 36 discriminator 1
	blt	a5,zero,.L286
.L214:
	.loc 1 1332 51
	lw	a5,-84(s0)
	lhu	a4,26(a5)
	.loc 1 1332 33
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1332 31
	lw	a5,-84(s0)
	sh	a4,26(a5)
.LBE10:
	.loc 1 1234 178
	j	.L286
.L213:
.LBB12:
	.loc 1 1334 55
	lw	a5,-84(s0)
	lw	a5,112(a5)
	.loc 1 1334 64
	lw	a5,16(a5)
	.loc 1 1334 41
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 1334 95 discriminator 1
	lw	a5,-84(s0)
	lw	a5,76(a5)
	.loc 1 1334 25 discriminator 1
	sub	a5,a4,a5
	.loc 1 1334 19 discriminator 1
	blt	a5,zero,.L286
	.loc 1 1335 49
	lw	a5,-84(s0)
	lhu	a4,26(a5)
	.loc 1 1335 31
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1335 29
	lw	a5,-84(s0)
	sh	a4,26(a5)
.LBE12:
	.loc 1 1234 178
	j	.L286
.L198:
	.loc 1 1341 7
	lw	a0,-84(s0)
	call	tcp_send_empty_ack
	j	.L194
.L286:
	.loc 1 1234 178
	nop
.L194:
	.loc 1 1350 12
	lw	a5,-84(s0)
	lw	a5,52(a5)
	.loc 1 1350 8
	beq	a5,zero,.L188
	.loc 1 1350 45 discriminator 1
	lw	a5,-84(s0)
	lw	a4,56(a5)
	.loc 1 1350 56 discriminator 1
	lui	a5,%hi(ackno)
	lw	a5,%lo(ackno)(a5)
	.loc 1 1350 26 discriminator 1
	sub	a5,a4,a5
	.loc 1 1350 21 discriminator 1
	bge	a5,zero,.L188
	.loc 1 1353 29
	lui	a5,%hi(tcp_ticks)
	lw	a5,%lo(tcp_ticks)(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1353 34
	lw	a5,-84(s0)
	lw	a5,52(a5)
	.loc 1 1353 29
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1353 9
	sh	a5,-18(s0)
	.loc 1 1359 21
	lhu	a4,-18(s0)
	.loc 1 1359 27
	lw	a5,-84(s0)
	lh	a5,60(a5)
	.loc 1 1359 21
	srai	a5,a5,3
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1359 9
	sh	a5,-18(s0)
	.loc 1 1360 28
	lw	a5,-84(s0)
	lh	a5,60(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1360 33
	lhu	a5,-18(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1360 17
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1360 15
	lw	a5,-84(s0)
	sh	a4,60(a5)
	.loc 1 1361 10
	lh	a5,-18(s0)
	bge	a5,zero,.L215
	.loc 1 1362 13
	lhu	a5,-18(s0)
	neg	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1362 11
	sh	a5,-18(s0)
.L215:
	.loc 1 1364 21
	lhu	a4,-18(s0)
	.loc 1 1364 27
	lw	a5,-84(s0)
	lh	a5,62(a5)
	.loc 1 1364 21
	srai	a5,a5,2
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1364 9
	sh	a5,-18(s0)
	.loc 1 1365 28
	lw	a5,-84(s0)
	lh	a5,62(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1365 33
	lhu	a5,-18(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1365 17
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1365 15
	lw	a5,-84(s0)
	sh	a4,62(a5)
	.loc 1 1366 30
	lw	a5,-84(s0)
	lh	a5,60(a5)
	.loc 1 1366 41
	srai	a5,a5,3
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1366 46
	lw	a5,-84(s0)
	lh	a5,62(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1366 41
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1366 18
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1366 16
	lw	a5,-84(s0)
	sh	a4,64(a5)
	.loc 1 1371 19
	lw	a5,-84(s0)
	sw	zero,52(a5)
.L188:
	.loc 1 1379 15
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	.loc 1 1379 6
	beq	a5,zero,.L216
	.loc 1 1379 27 discriminator 1
	lw	a5,-84(s0)
	lbu	a4,20(a5)
	.loc 1 1379 20 discriminator 1
	li	a5,6
	bgtu	a4,a5,.L216
	.loc 1 1410 34
	lw	a5,-84(s0)
	lw	a4,36(a5)
	.loc 1 1410 15
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1410 8
	blt	a5,zero,.L217
	.loc 1 1410 120 discriminator 1
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a4,a4,a5
	.loc 1 1410 147 discriminator 1
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1410 98 discriminator 1
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1410 90 discriminator 1
	blt	a5,zero,.L217
.LBB13:
	.loc 1 1431 20
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 1432 24
	lw	a5,-84(s0)
	lw	a4,36(a5)
	.loc 1 1432 34
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 1432 13
	sub	a5,a4,a5
	sw	a5,-52(s0)
	.loc 1 1436 11
	lw	a5,-52(s0)
	sh	a5,-26(s0)
	.loc 1 1438 12
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	a5,8(a5)
	.loc 1 1438 17
	lhu	a4,-26(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sh	a4,8(a5)
	.loc 1 1439 34
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,4(a5)
	.loc 1 1439 36
	lhu	a5,8(a5)
	.loc 1 1439 19
	lhu	a4,-26(s0)
	sub	a5,a5,a4
	sh	a5,-54(s0)
	.loc 1 1440 13
	j	.L218
.L219:
	.loc 1 1441 17
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1441 13
	lhu	a4,-26(s0)
	sub	a5,a4,a5
	sh	a5,-26(s0)
	.loc 1 1443 20
	lw	a5,-24(s0)
	lhu	a4,-54(s0)
	sh	a4,8(a5)
	.loc 1 1444 16
	lw	a5,-24(s0)
	sh	zero,10(a5)
	.loc 1 1445 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L218:
	.loc 1 1440 15
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1440 21
	lhu	a4,-26(s0)
	bgtu	a4,a5,.L219
	.loc 1 1448 7
	lhu	a5,-26(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	pbuf_remove_header
	.loc 1 1449 40
	lw	a5,-84(s0)
	lw	a4,36(a5)
	.loc 1 1449 35
	lui	a5,%hi(seqno)
	sw	a4,%lo(seqno)(a5)
	.loc 1 1449 12
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1449 27
	lui	a4,%hi(seqno)
	lw	a4,%lo(seqno)(a4)
	andi	a3,a4,255
	lbu	a2,4(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,4(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
.LBE13:
	.loc 1 1410 184
	j	.L220
.L217:
	.loc 1 1451 21
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1451 49
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1451 13
	sub	a5,a4,a5
	.loc 1 1451 10
	bge	a5,zero,.L220
	.loc 1 1456 47
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1456 29
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1456 27
	lw	a5,-84(s0)
	sh	a4,26(a5)
.L220:
	.loc 1 1463 23
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1463 51
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1463 15
	sub	a5,a4,a5
	.loc 1 1463 8
	blt	a5,zero,.L221
	.loc 1 1463 113 discriminator 1
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1463 128 discriminator 1
	lw	a4,-84(s0)
	lhu	a4,40(a4)
	.loc 1 1463 123 discriminator 1
	add	a4,a5,a4
	.loc 1 1463 94 discriminator 1
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1463 86 discriminator 1
	blt	a5,zero,.L221
	.loc 1 1465 14
	lw	a5,-84(s0)
	lw	a4,36(a5)
	.loc 1 1465 24
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 1465 10
	bne	a4,a5,.L222
	.loc 1 1469 27
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	s1,8(a5)
	.loc 1 1469 67
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1469 47
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1469 39 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1469 109 discriminator 1
	andi	a5,a5,3
	.loc 1 1469 33 discriminator 1
	beq	a5,zero,.L223
	.loc 1 1469 33 is_stmt 0 discriminator 2
	li	a5,1
	j	.L224
.L223:
	.loc 1 1469 33 discriminator 3
	li	a5,0
.L224:
	.loc 1 1469 33 discriminator 5
	add	a5,a5,s1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1469 16 is_stmt 1 discriminator 5
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
	.loc 1 1471 25
	lw	a5,-84(s0)
	lhu	a4,40(a5)
	.loc 1 1471 20
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	.loc 1 1471 12
	bgeu	a4,a5,.L225
	.loc 1 1476 41
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1476 24
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1476 16 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1476 82 discriminator 1
	andi	a5,a5,1
	.loc 1 1476 14 discriminator 1
	beq	a5,zero,.L226
	.loc 1 1479 58
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1479 66
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1479 87
	li	a5,-16384
	addi	a5,a5,255
	and	a5,a4,a5
	slli	s1,a5,16
	srai	s1,s1,16
	.loc 1 1479 212
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1479 195
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1479 175 discriminator 1
	andi	a5,a5,0xff
	andi	a5,a5,62
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1479 175 is_stmt 0 discriminator 2
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 1479 173 is_stmt 1 discriminator 2
	or	a5,s1,a5
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1479 19 discriminator 2
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1479 173 discriminator 2
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 1479 48 discriminator 2
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
.L226:
	.loc 1 1483 33
	lw	a5,-84(s0)
	lhu	a4,40(a5)
	.loc 1 1483 21
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sh	a4,8(a5)
	.loc 1 1484 41
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1484 24
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1484 16 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1484 82 discriminator 1
	andi	a5,a5,2
	.loc 1 1484 14 discriminator 1
	beq	a5,zero,.L227
	.loc 1 1485 18
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	a5,8(a5)
	.loc 1 1485 23
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sh	a4,8(a5)
.L227:
	.loc 1 1487 11
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a4,4(a5)
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
	.loc 1 1488 29
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	s1,8(a5)
	.loc 1 1488 69
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1488 49
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1488 41 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1488 111 discriminator 1
	andi	a5,a5,3
	.loc 1 1488 35 discriminator 1
	beq	a5,zero,.L228
	.loc 1 1488 35 is_stmt 0 discriminator 2
	li	a5,1
	j	.L229
.L228:
	.loc 1 1488 35 discriminator 3
	li	a5,0
.L229:
	.loc 1 1488 35 discriminator 5
	add	a5,a5,s1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1488 18 is_stmt 1 discriminator 5
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
.L225:
	.loc 1 1496 16
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1496 12
	beq	a5,zero,.L230
	.loc 1 1497 41
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1497 24
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1497 16 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1497 82 discriminator 1
	andi	a5,a5,1
	.loc 1 1497 14 discriminator 1
	beq	a5,zero,.L231
	.loc 1 1503 19
	j	.L232
.L233:
.LBB14:
	.loc 1 1504 31
	lw	a5,-84(s0)
	lw	a5,116(a5)
	sw	a5,-76(s0)
	.loc 1 1505 31
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1505 38
	lw	a4,0(a5)
	.loc 1 1505 26
	lw	a5,-84(s0)
	sw	a4,116(a5)
	.loc 1 1506 15
	lw	a0,-76(s0)
	call	tcp_seg_free
.L232:
.LBE14:
	.loc 1 1503 23
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1503 31
	bne	a5,zero,.L233
	j	.L230
.L231:
.LBB15:
	.loc 1 1509 29
	lw	a5,-84(s0)
	lw	a5,116(a5)
	sw	a5,-32(s0)
	.loc 1 1512 19
	j	.L234
.L239:
.LBB16:
	.loc 1 1517 45
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 1 1517 29
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1517 21 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1517 87 discriminator 1
	andi	a5,a5,1
	.loc 1 1517 18 discriminator 1
	beq	a5,zero,.L235
	.loc 1 1518 46
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1518 29
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1518 21 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1518 87 discriminator 1
	andi	a5,a5,2
	.loc 1 1517 101 discriminator 2
	bne	a5,zero,.L235
	.loc 1 1519 61
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1519 69
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 1519 92
	li	a0,1
	call	lwip_htons
	mv	a5,a0
	mv	a4,a5
	.loc 1 1519 23 discriminator 1
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1519 52 discriminator 1
	or	a4,s1,a4
	slli	a4,a4,16
	srli	a4,a4,16
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	.loc 1 1520 35
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	s1,8(a5)
	.loc 1 1520 75
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1520 55
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1520 47 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1520 117 discriminator 1
	andi	a5,a5,3
	.loc 1 1520 41 discriminator 1
	beq	a5,zero,.L236
	.loc 1 1520 41 is_stmt 0 discriminator 2
	li	a5,1
	j	.L237
.L236:
	.loc 1 1520 41 discriminator 3
	li	a5,0
.L237:
	.loc 1 1520 41 discriminator 5
	add	a5,a5,s1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1520 24 is_stmt 1 discriminator 5
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
.L235:
	.loc 1 1522 19
	lw	a5,-32(s0)
	sw	a5,-72(s0)
	.loc 1 1523 20
	lw	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 1524 15
	lw	a0,-72(s0)
	call	tcp_seg_free
.L234:
.LBE16:
	.loc 1 1512 25
	lw	a5,-32(s0)
	beq	a5,zero,.L238
	.loc 1 1513 33
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a4,a4,a5
	.loc 1 1513 71
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 1 1513 79
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	mv	a3,a5
	.loc 1 1513 93
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	.loc 1 1513 59
	add	a5,a3,a5
	.loc 1 1513 25
	sub	a5,a4,a5
	.loc 1 1512 25 discriminator 1
	bge	a5,zero,.L239
.L238:
	.loc 1 1528 16
	lw	a5,-32(s0)
	beq	a5,zero,.L240
	.loc 1 1529 39
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 1 1529 47
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1529 58
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a3,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a5,a3,a5
	.loc 1 1529 19
	sub	a5,a4,a5
	.loc 1 1528 22 discriminator 1
	bge	a5,zero,.L240
	.loc 1 1532 39
	lw	a5,-32(s0)
	lw	a5,16(a5)
	.loc 1 1532 47
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 1532 27
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1532 25
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sh	a4,8(a5)
	.loc 1 1533 45
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1533 28
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1533 20 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1533 86 discriminator 1
	andi	a5,a5,2
	.loc 1 1533 18 discriminator 1
	beq	a5,zero,.L241
	.loc 1 1534 22
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	a5,8(a5)
	.loc 1 1534 27
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sh	a4,8(a5)
.L241:
	.loc 1 1536 15
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a4,4(a5)
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
	.loc 1 1537 33
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	s1,8(a5)
	.loc 1 1537 73
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1537 53
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1537 45 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1537 115 discriminator 1
	andi	a5,a5,3
	.loc 1 1537 39 discriminator 1
	beq	a5,zero,.L242
	.loc 1 1537 39 is_stmt 0 discriminator 2
	li	a5,1
	j	.L243
.L242:
	.loc 1 1537 39 discriminator 3
	li	a5,0
.L243:
	.loc 1 1537 39 discriminator 5
	add	a5,a5,s1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1537 22 is_stmt 1 discriminator 5
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
.L240:
	.loc 1 1541 24
	lw	a5,-84(s0)
	lw	a4,-32(s0)
	sw	a4,116(a5)
.L230:
.LBE15:
	.loc 1 1546 30
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a4,a5
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a4,a4,a5
	.loc 1 1546 22
	lw	a5,-84(s0)
	sw	a4,36(a5)
	.loc 1 1550 12
	lw	a5,-84(s0)
	lhu	a4,40(a5)
	.loc 1 1550 22
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-84(s0)
	sh	a4,40(a5)
	.loc 1 1552 9
	lw	a0,-84(s0)
	call	tcp_update_rcv_ann_wnd
	.loc 1 1563 18
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,4(a5)
	.loc 1 1563 20
	lhu	a5,8(a5)
	.loc 1 1563 12
	beq	a5,zero,.L244
	.loc 1 1564 28
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a4,4(a5)
	.loc 1 1564 21
	lui	a5,%hi(recv_data)
	sw	a4,%lo(recv_data)(a5)
	.loc 1 1568 19
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	sw	zero,4(a5)
.L244:
	.loc 1 1570 39
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lw	a5,16(a5)
	.loc 1 1570 22
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1570 14 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1570 80 discriminator 1
	andi	a5,a5,1
	.loc 1 1570 12 discriminator 1
	beq	a5,zero,.L246
	.loc 1 1572 22
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	ori	a5,a5,32
	andi	a4,a5,0xff
	lui	a5,%hi(recv_flags)
	sb	a4,%lo(recv_flags)(a5)
	.loc 1 1578 15
	j	.L246
.L258:
.LBB17:
	.loc 1 1581 27
	lw	a5,-84(s0)
	lw	a5,116(a5)
	sw	a5,-80(s0)
	.loc 1 1582 22
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1582 29
	lw	a5,16(a5)
	.loc 1 1582 37
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1582 17
	lui	a5,%hi(seqno)
	sw	a4,%lo(seqno)(a5)
	.loc 1 1584 34
	lw	a5,-80(s0)
	lhu	a5,8(a5)
	mv	s1,a5
	.loc 1 1584 72
	lw	a5,-80(s0)
	lw	a5,16(a5)
	.loc 1 1584 54
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1584 46 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1584 114 discriminator 1
	andi	a5,a5,3
	.loc 1 1584 144 discriminator 1
	beq	a5,zero,.L247
	.loc 1 1584 144 is_stmt 0 discriminator 2
	li	a5,1
	j	.L248
.L247:
	.loc 1 1584 144 discriminator 3
	li	a5,0
.L248:
	.loc 1 1584 40 is_stmt 1 discriminator 5
	add	a4,a5,s1
	.loc 1 1584 14 discriminator 5
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1584 24 discriminator 5
	add	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,36(a5)
	.loc 1 1585 83
	lw	a5,-80(s0)
	lw	a5,16(a5)
	.loc 1 1585 65
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	.loc 1 1587 34
	lw	a5,-80(s0)
	lhu	a5,8(a5)
	mv	s1,a5
	.loc 1 1587 72
	lw	a5,-80(s0)
	lw	a5,16(a5)
	.loc 1 1587 54
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1587 46 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1587 114 discriminator 1
	andi	a5,a5,3
	.loc 1 1587 144 discriminator 1
	beq	a5,zero,.L251
	.loc 1 1587 144 is_stmt 0 discriminator 2
	li	a5,1
	j	.L252
.L251:
	.loc 1 1587 144 discriminator 3
	li	a5,0
.L252:
	.loc 1 1587 40 is_stmt 1 discriminator 5
	add	a3,a5,s1
	.loc 1 1587 14 discriminator 5
	lw	a5,-84(s0)
	lhu	a4,40(a5)
	.loc 1 1587 24 discriminator 5
	slli	a5,a3,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-84(s0)
	sh	a4,40(a5)
	.loc 1 1589 11
	lw	a0,-84(s0)
	call	tcp_update_rcv_ann_wnd
	.loc 1 1591 19
	lw	a5,-80(s0)
	lw	a5,4(a5)
	.loc 1 1591 22
	lhu	a5,8(a5)
	.loc 1 1591 14
	beq	a5,zero,.L253
	.loc 1 1597 17
	lui	a5,%hi(recv_data)
	lw	a5,%lo(recv_data)(a5)
	.loc 1 1597 16
	beq	a5,zero,.L254
	.loc 1 1598 15
	lui	a5,%hi(recv_data)
	lw	a4,%lo(recv_data)(a5)
	lw	a5,-80(s0)
	lw	a5,4(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_cat
	j	.L255
.L254:
	.loc 1 1600 31
	lw	a5,-80(s0)
	lw	a4,4(a5)
	.loc 1 1600 25
	lui	a5,%hi(recv_data)
	sw	a4,%lo(recv_data)(a5)
.L255:
	.loc 1 1602 21
	lw	a5,-80(s0)
	sw	zero,4(a5)
.L253:
	.loc 1 1604 40
	lw	a5,-80(s0)
	lw	a5,16(a5)
	.loc 1 1604 24
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1604 16 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1604 82 discriminator 1
	andi	a5,a5,1
	.loc 1 1604 14 discriminator 1
	beq	a5,zero,.L256
	.loc 1 1606 24
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	ori	a5,a5,32
	andi	a4,a5,0xff
	lui	a5,%hi(recv_flags)
	sb	a4,%lo(recv_flags)(a5)
	.loc 1 1607 20
	lw	a5,-84(s0)
	lbu	a4,20(a5)
	.loc 1 1607 16
	li	a5,4
	bne	a4,a5,.L256
	.loc 1 1608 26
	lw	a5,-84(s0)
	li	a4,7
	sb	a4,20(a5)
.L256:
	.loc 1 1612 28
	lw	a5,-80(s0)
	lw	a4,0(a5)
	.loc 1 1612 22
	lw	a5,-84(s0)
	sw	a4,116(a5)
	.loc 1 1613 11
	lw	a0,-80(s0)
	call	tcp_seg_free
.L246:
.LBE17:
	.loc 1 1578 19
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1578 34
	beq	a5,zero,.L257
	.loc 1 1579 19
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1579 26
	lw	a5,16(a5)
	.loc 1 1579 34
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1579 48
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1578 34 discriminator 1
	beq	a4,a5,.L258
.L257:
	.loc 1 1631 22
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1631 30
	andi	a5,a5,1
	.loc 1 1631 16
	beq	a5,zero,.L259
	.loc 1 1631 79 discriminator 1
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1631 61 discriminator 1
	andi	a5,a5,-2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1631 59 discriminator 1
	lw	a5,-84(s0)
	sh	a4,26(a5)
	.loc 1 1631 174 discriminator 1
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1631 156 discriminator 1
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1631 154 discriminator 1
	lw	a5,-84(s0)
	sh	a4,26(a5)
	.loc 1 1465 10
	j	.L283
.L259:
	.loc 1 1631 253 discriminator 2
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1631 235 discriminator 2
	ori	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1631 233 discriminator 2
	lw	a5,-84(s0)
	sh	a4,26(a5)
	.loc 1 1465 10
	j	.L283
.L222:
	.loc 1 1655 16
	lw	a5,-84(s0)
	lw	a5,116(a5)
	.loc 1 1655 12
	bne	a5,zero,.L261
	.loc 1 1656 24
	lui	a5,%hi(inseg)
	addi	a0,a5,%lo(inseg)
	call	tcp_seg_copy
	mv	a4,a0
	.loc 1 1656 22 discriminator 1
	lw	a5,-84(s0)
	sw	a4,116(a5)
	j	.L262
.L261:
.LBB18:
	.loc 1 1682 34
	sw	zero,-40(s0)
	.loc 1 1683 21
	lw	a5,-84(s0)
	lw	a5,116(a5)
	sw	a5,-36(s0)
	.loc 1 1683 11
	j	.L263
.L282:
	.loc 1 1684 30
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1684 38
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1684 23
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 1684 16
	bne	a4,a5,.L264
	.loc 1 1689 24
	lui	a5,%hi(inseg)
	addi	a5,a5,%lo(inseg)
	lhu	a4,8(a5)
	.loc 1 1689 35
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 1689 18
	bleu	a4,a5,.L287
.LBB19:
	.loc 1 1696 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1696 20
	beq	a5,zero,.L288
	.loc 1 1703 24
	lui	a5,%hi(inseg)
	addi	a0,a5,%lo(inseg)
	call	tcp_seg_copy
	sw	a0,-68(s0)
	.loc 1 1704 20
	lw	a5,-68(s0)
	beq	a5,zero,.L289
	.loc 1 1705 22
	lw	a5,-40(s0)
	beq	a5,zero,.L268
	.loc 1 1706 32
	lw	a5,-40(s0)
	lw	a4,-68(s0)
	sw	a4,0(a5)
	j	.L269
.L268:
	.loc 1 1708 32
	lw	a5,-84(s0)
	lw	a4,-68(s0)
	sw	a4,116(a5)
.L269:
	.loc 1 1710 19
	lw	a1,-36(s0)
	lw	a0,-68(s0)
	call	tcp_oos_insert_segment
	.loc 1 1712 17
	j	.L289
.L264:
.LBE19:
	.loc 1 1720 18
	lw	a5,-40(s0)
	bne	a5,zero,.L270
	.loc 1 1721 31
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1721 60
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1721 68
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	.loc 1 1721 23
	sub	a5,a4,a5
	.loc 1 1721 20
	bge	a5,zero,.L271
.LBB20:
	.loc 1 1726 42
	lui	a5,%hi(inseg)
	addi	a0,a5,%lo(inseg)
	call	tcp_seg_copy
	sw	a0,-64(s0)
	.loc 1 1727 22
	lw	a5,-64(s0)
	beq	a5,zero,.L290
	.loc 1 1728 32
	lw	a5,-84(s0)
	lw	a4,-64(s0)
	sw	a4,116(a5)
	.loc 1 1729 21
	lw	a1,-36(s0)
	lw	a0,-64(s0)
	call	tcp_oos_insert_segment
	.loc 1 1731 19
	j	.L290
.L270:
.LBE20:
	.loc 1 1736 27
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1736 64
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1736 72
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	.loc 1 1736 27
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1736 20
	blt	a5,zero,.L271
	.loc 1 1736 137 discriminator 1
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1736 145 discriminator 1
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1736 117 discriminator 1
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1736 109 discriminator 1
	blt	a5,zero,.L271
.LBB21:
	.loc 1 1742 42
	lui	a5,%hi(inseg)
	addi	a0,a5,%lo(inseg)
	call	tcp_seg_copy
	sw	a0,-60(s0)
	.loc 1 1743 22
	lw	a5,-60(s0)
	beq	a5,zero,.L291
	.loc 1 1744 35
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1744 64
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1744 72
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	mv	a3,a5
	.loc 1 1744 86
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 1744 52
	add	a5,a3,a5
	.loc 1 1744 27
	sub	a5,a4,a5
	.loc 1 1744 24
	bge	a5,zero,.L274
	.loc 1 1746 35
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1746 55
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 1746 63
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	.loc 1 1746 35
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1746 33
	lw	a5,-40(s0)
	sh	a4,8(a5)
	.loc 1 1747 23
	lw	a5,-40(s0)
	lw	a4,4(a5)
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
.L274:
	.loc 1 1749 32
	lw	a5,-40(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	.loc 1 1750 21
	lw	a1,-36(s0)
	lw	a0,-60(s0)
	call	tcp_oos_insert_segment
	.loc 1 1752 19
	j	.L291
.L271:
.LBE21:
	.loc 1 1767 20
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	.loc 1 1772 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1772 18
	bne	a5,zero,.L275
	.loc 1 1773 41
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1773 49
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 1773 60
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	.loc 1 1773 21
	sub	a5,a4,a5
	.loc 1 1772 37 discriminator 1
	bge	a5,zero,.L275
	.loc 1 1774 46
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1774 30
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1774 22 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1774 88 discriminator 1
	andi	a5,a5,1
	.loc 1 1774 20 discriminator 1
	bne	a5,zero,.L292
	.loc 1 1778 30
	lui	a5,%hi(inseg)
	addi	a0,a5,%lo(inseg)
	call	tcp_seg_copy
	mv	a4,a0
	.loc 1 1778 28 discriminator 1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 1779 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1779 20
	beq	a5,zero,.L293
	.loc 1 1780 33
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1780 62
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1780 70
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	mv	a3,a5
	.loc 1 1780 84
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 1780 50
	add	a5,a3,a5
	.loc 1 1780 25
	sub	a5,a4,a5
	.loc 1 1780 22
	bge	a5,zero,.L278
	.loc 1 1782 33
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1782 53
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1782 61
	lbu	a3,4(a5)
	lbu	a2,5(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,6(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	.loc 1 1782 33
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1782 31
	lw	a5,-36(s0)
	sh	a4,8(a5)
	.loc 1 1783 21
	lw	a5,-36(s0)
	lw	a4,4(a5)
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
.L278:
	.loc 1 1786 44
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1786 66
	lw	a4,-84(s0)
	lhu	a4,40(a4)
	.loc 1 1786 33
	add	a4,a5,a4
	.loc 1 1786 87
	lui	a5,%hi(tcplen)
	lhu	a5,%lo(tcplen)(a5)
	mv	a3,a5
	.loc 1 1786 79
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	add	a5,a3,a5
	.loc 1 1786 25
	sub	a5,a4,a5
	.loc 1 1786 22
	bge	a5,zero,.L293
	.loc 1 1791 50
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1791 56
	lw	a5,16(a5)
	.loc 1 1791 34
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1791 26 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1791 98 discriminator 1
	andi	a5,a5,1
	.loc 1 1791 24 discriminator 1
	beq	a5,zero,.L279
	.loc 1 1794 73
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1794 79
	lw	a5,16(a5)
	.loc 1 1794 88
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1794 109
	li	a5,-16384
	addi	a5,a5,255
	and	a5,a4,a5
	slli	s1,a5,16
	srai	s1,s1,16
	.loc 1 1794 233
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1794 239
	lw	a5,16(a5)
	.loc 1 1794 217
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1794 197 discriminator 1
	andi	a5,a5,0xff
	andi	a5,a5,62
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1794 197 is_stmt 0 discriminator 2
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 1794 195 is_stmt 1 discriminator 2
	or	a5,s1,a5
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1794 28 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1794 34 discriminator 2
	lw	a5,16(a5)
	.loc 1 1794 195 discriminator 2
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 1794 64 discriminator 2
	andi	a3,a4,255
	lbu	a2,12(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,12(a5)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
.L279:
	.loc 1 1797 50
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1797 60
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1797 65
	lw	a5,-84(s0)
	lhu	a5,40(a5)
	.loc 1 1797 60
	add	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 1 1797 39
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1797 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1797 39
	sub	a4,a3,a4
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 1797 37
	sh	a4,8(a5)
	.loc 1 1798 38
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1798 21
	lw	a4,4(a5)
	.loc 1 1798 53
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1798 21
	lhu	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	pbuf_realloc
	.loc 1 1799 36
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1799 43
	lhu	s1,8(a5)
	.loc 1 1799 80
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1799 87
	lw	a5,16(a5)
	.loc 1 1799 63
	lbu	a4,12(a5)
	lbu	a5,13(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 1799 55 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1799 129 discriminator 1
	andi	a5,a5,3
	.loc 1 1799 49 discriminator 1
	beq	a5,zero,.L280
	.loc 1 1799 49 is_stmt 0 discriminator 2
	li	a5,1
	j	.L281
.L280:
	.loc 1 1799 49 discriminator 3
	li	a5,0
.L281:
	.loc 1 1799 49 discriminator 5
	add	a5,a5,s1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1799 28 is_stmt 1 discriminator 5
	lui	a5,%hi(tcplen)
	sh	a4,%lo(tcplen)(a5)
	.loc 1 1804 17
	j	.L293
.L275:
	.loc 1 1683 53 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
.L263:
	.loc 1 1683 40 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L282
	j	.L262
.L287:
	.loc 1 1717 17
	nop
	j	.L262
.L288:
.LBB22:
	.loc 1 1697 19
	nop
	j	.L262
.L289:
	.loc 1 1712 17
	nop
	j	.L262
.L290:
.LBE22:
.LBB23:
	.loc 1 1731 19
	nop
	j	.L262
.L291:
.LBE23:
.LBB24:
	.loc 1 1752 19
	nop
	j	.L262
.L292:
.LBE24:
	.loc 1 1776 19
	nop
	j	.L262
.L293:
	.loc 1 1804 17
	nop
.L262:
.LBE18:
	.loc 1 1888 9
	lw	a0,-84(s0)
	call	tcp_send_empty_ack
	.loc 1 1465 10
	j	.L283
.L221:
	.loc 1 1892 7
	lw	a0,-84(s0)
	call	tcp_send_empty_ack
	.loc 1 1463 8
	j	.L284
.L283:
	j	.L284
.L216:
	.loc 1 1897 24
	lui	a5,%hi(seqno)
	lw	a4,%lo(seqno)(a5)
	.loc 1 1897 52
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1897 16
	sub	a5,a4,a5
	.loc 1 1897 8
	blt	a5,zero,.L285
	.loc 1 1897 114 discriminator 1
	lw	a5,-84(s0)
	lw	a5,36(a5)
	.loc 1 1897 129 discriminator 1
	lw	a4,-84(s0)
	lhu	a4,40(a4)
	.loc 1 1897 124 discriminator 1
	add	a4,a5,a4
	.loc 1 1897 95 discriminator 1
	lui	a5,%hi(seqno)
	lw	a5,%lo(seqno)(a5)
	sub	a5,a4,a5
	addi	a5,a5,-1
	.loc 1 1897 9 discriminator 1
	bge	a5,zero,.L294
.L285:
	.loc 1 1898 45
	lw	a5,-84(s0)
	lhu	a5,26(a5)
	.loc 1 1898 27
	ori	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1898 25
	lw	a5,-84(s0)
	sh	a4,26(a5)
	.loc 1 1901 1
	j	.L294
.L284:
.L294:
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	tcp_receive, .-tcp_receive
	.section	.text.tcp_get_next_optbyte,"ax",@progbits
	.align	1
	.type	tcp_get_next_optbyte, @function
tcp_get_next_optbyte:
.LFB13:
	.loc 1 1905 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1906 28
	lui	a5,%hi(tcp_optidx)
	lhu	a5,%lo(tcp_optidx)(a5)
	addi	a4,a5,1
	slli	a3,a4,16
	srli	a3,a3,16
	lui	a4,%hi(tcp_optidx)
	sh	a3,%lo(tcp_optidx)(a4)
	.loc 1 1906 9
	sh	a5,-18(s0)
	.loc 1 1907 20
	lui	a5,%hi(tcphdr_opt2)
	lw	a5,%lo(tcphdr_opt2)(a5)
	.loc 1 1907 6
	beq	a5,zero,.L296
	.loc 1 1907 39 discriminator 1
	lui	a5,%hi(tcphdr_opt1len)
	lhu	a5,%lo(tcphdr_opt1len)(a5)
	.loc 1 1907 28 discriminator 1
	lhu	a4,-18(s0)
	bgeu	a4,a5,.L297
.L296:
.LBB25:
	.loc 1 1908 18
	lui	a5,%hi(tcphdr)
	lw	a5,%lo(tcphdr)(a5)
	.loc 1 1908 11
	addi	a5,a5,20
	sw	a5,-24(s0)
	.loc 1 1909 16
	lhu	a5,-18(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	j	.L298
.L297:
.LBE25:
.LBB26:
	.loc 1 1911 16
	lhu	a5,-18(s0)
	andi	a4,a5,0xff
	lui	a5,%hi(tcphdr_opt1len)
	lhu	a5,%lo(tcphdr_opt1len)(a5)
	andi	a5,a5,0xff
	.loc 1 1911 10
	sub	a5,a4,a5
	sb	a5,-19(s0)
	.loc 1 1912 23
	lui	a5,%hi(tcphdr_opt2)
	lw	a4,%lo(tcphdr_opt2)(a5)
	lbu	a5,-19(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
.L298:
.LBE26:
	.loc 1 1914 1
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
.LFE13:
	.size	tcp_get_next_optbyte, .-tcp_get_next_optbyte
	.section	.text.tcp_parseopt,"ax",@progbits
	.align	1
	.type	tcp_parseopt, @function
tcp_parseopt:
.LFB14:
	.loc 1 1926 1
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
	.loc 1 1936 21
	lui	a5,%hi(tcphdr_optlen)
	lhu	a5,%lo(tcphdr_optlen)(a5)
	.loc 1 1936 6
	beq	a5,zero,.L299
	.loc 1 1937 21
	lui	a5,%hi(tcp_optidx)
	sh	zero,%lo(tcp_optidx)(a5)
	.loc 1 1937 5
	j	.L301
.L312:
.LBB27:
	.loc 1 1938 18
	call	tcp_get_next_optbyte
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1939 7
	lbu	a5,-17(s0)
	li	a4,2
	beq	a5,a4,.L302
	li	a4,2
	bgt	a5,a4,.L303
	beq	a5,zero,.L313
	li	a4,1
	beq	a5,a4,.L314
	j	.L303
.L302:
	.loc 1 1950 15
	call	tcp_get_next_optbyte
	mv	a5,a0
	mv	a4,a5
	.loc 1 1950 14 discriminator 1
	li	a5,4
	bne	a4,a5,.L315
	.loc 1 1950 67 discriminator 2
	lui	a5,%hi(tcp_optidx)
	lhu	a5,%lo(tcp_optidx)(a5)
	addi	a5,a5,1
	lui	a4,%hi(tcphdr_optlen)
	lhu	a4,%lo(tcphdr_optlen)(a4)
	.loc 1 1950 43 discriminator 2
	bge	a5,a4,.L315
	.loc 1 1956 25
	call	tcp_get_next_optbyte
	mv	a5,a0
	.loc 1 1956 15 discriminator 1
	slli	a5,a5,8
	sh	a5,-20(s0)
	.loc 1 1957 18
	call	tcp_get_next_optbyte
	mv	a5,a0
	.loc 1 1957 18 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 1957 15 is_stmt 1 discriminator 1
	lhu	a5,-20(s0)
	or	a5,a4,a5
	sh	a5,-20(s0)
	.loc 1 1959 20
	lhu	a4,-20(s0)
	li	a5,688
	bgtu	a4,a5,.L309
	.loc 1 1959 51 discriminator 1
	lhu	a5,-20(s0)
	beq	a5,zero,.L309
	.loc 1 1959 20 discriminator 3
	lhu	a5,-20(s0)
	.loc 1 1959 20 is_stmt 0
	j	.L310
.L309:
	.loc 1 1959 20 discriminator 4
	li	a5,688
.L310:
	.loc 1 1959 20 discriminator 6
	lw	a4,-36(s0)
	sh	a5,50(a4)
	.loc 1 1960 11 is_stmt 1
	j	.L301
.L303:
	.loc 1 2029 18
	call	tcp_get_next_optbyte
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 2030 14
	lbu	a4,-21(s0)
	li	a5,1
	bleu	a4,a5,.L316
	.loc 1 2038 22
	lbu	a5,-21(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(tcp_optidx)
	lhu	a5,%lo(tcp_optidx)(a5)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,-2
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(tcp_optidx)
	sh	a4,%lo(tcp_optidx)(a5)
	j	.L301
.L314:
	.loc 1 1947 11
	nop
.L301:
.LBE27:
	.loc 1 1937 37 discriminator 1
	lui	a5,%hi(tcp_optidx)
	lhu	a4,%lo(tcp_optidx)(a5)
	lui	a5,%hi(tcphdr_optlen)
	lhu	a5,%lo(tcphdr_optlen)(a5)
	bltu	a4,a5,.L312
	j	.L299
.L313:
.LBB28:
	.loc 1 1943 11
	nop
	j	.L299
.L315:
	.loc 1 1953 13
	nop
	j	.L299
.L316:
	.loc 1 2034 13
	nop
.L299:
.LBE28:
	.loc 1 2042 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	tcp_parseopt, .-tcp_parseopt
	.section	.text.tcp_trigger_input_pcb_close,"ax",@progbits
	.align	1
	.globl	tcp_trigger_input_pcb_close
	.type	tcp_trigger_input_pcb_close, @function
tcp_trigger_input_pcb_close:
.LFB15:
	.loc 1 2046 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 2047 14
	lui	a5,%hi(recv_flags)
	lbu	a5,%lo(recv_flags)(a5)
	ori	a5,a5,16
	andi	a4,a5,0xff
	lui	a5,%hi(recv_flags)
	sb	a4,%lo(recv_flags)(a5)
	.loc 1 2048 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	tcp_trigger_input_pcb_close, .-tcp_trigger_input_pcb_close
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet_chksum.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x199c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x27
	.4byte	.LASF323
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x29
	.byte	0x4
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x14
	.4byte	0x86
	.uleb128 0x6
	.4byte	0x8d
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x40
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x4e
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xbb
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x97
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xc7
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x80
	.byte	0x11
	.4byte	0xa3
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x82
	.byte	0x11
	.4byte	0xaf
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x5
	.byte	0x35
	.byte	0xf
	.4byte	0xf7
	.uleb128 0x1d
	.4byte	.LASF117
	.4byte	0x39
	.byte	0x5
	.byte	0x38
	.4byte	0x185
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x6
	.byte	0x43
	.byte	0xf
	.4byte	0xf7
	.uleb128 0x21
	.byte	0x5
	.4byte	0x32
	.byte	0x7
	.byte	0x35
	.4byte	0x204
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF41
	.sleb128 -2
	.uleb128 0xa
	.4byte	.LASF42
	.sleb128 -3
	.uleb128 0xa
	.4byte	.LASF43
	.sleb128 -4
	.uleb128 0xa
	.4byte	.LASF44
	.sleb128 -5
	.uleb128 0xa
	.4byte	.LASF45
	.sleb128 -6
	.uleb128 0xa
	.4byte	.LASF46
	.sleb128 -7
	.uleb128 0xa
	.4byte	.LASF47
	.sleb128 -8
	.uleb128 0xa
	.4byte	.LASF48
	.sleb128 -9
	.uleb128 0xa
	.4byte	.LASF49
	.sleb128 -10
	.uleb128 0xa
	.4byte	.LASF50
	.sleb128 -11
	.uleb128 0xa
	.4byte	.LASF51
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF52
	.sleb128 -13
	.uleb128 0xa
	.4byte	.LASF53
	.sleb128 -14
	.uleb128 0xa
	.4byte	.LASF54
	.sleb128 -15
	.uleb128 0xa
	.4byte	.LASF55
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xeb
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x285
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x28a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x8
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xdf
	.byte	0xd
	.uleb128 0x8
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xdf
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xdf
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.4byte	0x210
	.uleb128 0x6
	.4byte	0x210
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x2a9
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x9
	.byte	0x39
	.byte	0x19
	.4byte	0x28f
	.uleb128 0x14
	.4byte	0x2a9
	.uleb128 0x2a
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x126
	.byte	0x14
	.4byte	0x2a9
	.uleb128 0x14
	.4byte	0x2ba
	.uleb128 0x21
	.byte	0x7
	.4byte	0x39
	.byte	0xb
	.byte	0x34
	.4byte	0x339
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xa
	.byte	0xc
	.byte	0x62
	.4byte	0x387
	.uleb128 0x8
	.string	"err"
	.byte	0xc
	.byte	0x66
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xc
	.byte	0x67
	.byte	0xe
	.4byte	0x185
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xc
	.byte	0x68
	.byte	0xe
	.4byte	0x185
	.byte	0x4
	.uleb128 0x8
	.string	"max"
	.byte	0xc
	.byte	0x69
	.byte	0xe
	.4byte	0x185
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xc
	.byte	0x6a
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x339
	.uleb128 0x6
	.4byte	0xdf
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x18
	.byte	0xc
	.byte	0x40
	.4byte	0x439
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xc
	.byte	0x41
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x8
	.string	"fw"
	.byte	0xc
	.byte	0x43
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xc
	.byte	0x44
	.byte	0x9
	.4byte	0xf7
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xc
	.byte	0x45
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xc
	.byte	0x46
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xc
	.byte	0x47
	.byte	0x9
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xc
	.byte	0x48
	.byte	0x9
	.4byte	0xf7
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xc
	.byte	0x49
	.byte	0x9
	.4byte	0xf7
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xc
	.byte	0x4a
	.byte	0x9
	.4byte	0xf7
	.byte	0x12
	.uleb128 0x8
	.string	"err"
	.byte	0xc
	.byte	0x4b
	.byte	0x9
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xc
	.byte	0x4c
	.byte	0x9
	.4byte	0xf7
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x1c
	.byte	0xc
	.byte	0x50
	.4byte	0x4fc
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xc
	.byte	0x51
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xc
	.byte	0x52
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xc
	.byte	0x53
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xc
	.byte	0x54
	.byte	0x9
	.4byte	0xf7
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xc
	.byte	0x55
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xc
	.byte	0x56
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xc
	.byte	0x57
	.byte	0x9
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xc
	.byte	0x58
	.byte	0x9
	.4byte	0xf7
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xc
	.byte	0x59
	.byte	0x9
	.4byte	0xf7
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xc
	.byte	0x5a
	.byte	0x9
	.4byte	0xf7
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xc
	.byte	0x5b
	.byte	0x9
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xc
	.byte	0x5c
	.byte	0x9
	.4byte	0xf7
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xc
	.byte	0x5d
	.byte	0x9
	.4byte	0xf7
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xc
	.byte	0x5e
	.byte	0x9
	.4byte	0xf7
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x6
	.byte	0xc
	.byte	0x6e
	.4byte	0x530
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xc
	.byte	0x6f
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.uleb128 0x8
	.string	"max"
	.byte	0xc
	.byte	0x70
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x8
	.string	"err"
	.byte	0xc
	.byte	0x71
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x12
	.byte	0xc
	.byte	0x75
	.4byte	0x564
	.uleb128 0x8
	.string	"sem"
	.byte	0xc
	.byte	0x76
	.byte	0x18
	.4byte	0x4fc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x77
	.byte	0x18
	.4byte	0x4fc
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xc
	.byte	0x78
	.byte	0x18
	.4byte	0x4fc
	.byte	0xc
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF111
	.2byte	0x108
	.byte	0xc
	.byte	0xeb
	.byte	0x8
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xc
	.byte	0xee
	.byte	0x16
	.4byte	0x391
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xc
	.byte	0xf2
	.byte	0x16
	.4byte	0x391
	.byte	0x18
	.uleb128 0x8
	.string	"ip"
	.byte	0xc
	.byte	0xfa
	.byte	0x16
	.4byte	0x391
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xc
	.byte	0xfe
	.byte	0x16
	.4byte	0x391
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x102
	.byte	0x15
	.4byte	0x439
	.byte	0x60
	.uleb128 0xc
	.string	"udp"
	.byte	0xc
	.2byte	0x106
	.byte	0x16
	.4byte	0x391
	.byte	0x7c
	.uleb128 0xc
	.string	"tcp"
	.byte	0xc
	.2byte	0x10a
	.byte	0x16
	.4byte	0x391
	.byte	0x94
	.uleb128 0xc
	.string	"mem"
	.byte	0xc
	.2byte	0x10e
	.byte	0x14
	.4byte	0x339
	.byte	0xac
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x112
	.byte	0x15
	.4byte	0x5fa
	.byte	0xb8
	.uleb128 0xc
	.string	"sys"
	.byte	0xc
	.2byte	0x116
	.byte	0x14
	.4byte	0x530
	.byte	0xf4
	.byte	0
	.uleb128 0x1a
	.4byte	0x387
	.4byte	0x60a
	.uleb128 0x1b
	.4byte	0x6a
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0xc
	.2byte	0x133
	.byte	0x16
	.4byte	0x564
	.uleb128 0x1d
	.4byte	.LASF118
	.4byte	0x39
	.byte	0xd
	.byte	0x71
	.4byte	0x63f
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF123
	.4byte	0x39
	.byte	0xd
	.byte	0x9f
	.4byte	0x65b
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x660
	.uleb128 0x2c
	.4byte	.LASF126
	.byte	0x54
	.byte	0xd
	.2byte	0x10d
	.byte	0x8
	.4byte	0x786
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xd
	.2byte	0x110
	.byte	0x11
	.4byte	0x65b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xd
	.2byte	0x115
	.byte	0xd
	.4byte	0x2ba
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xd
	.2byte	0x116
	.byte	0xd
	.4byte	0x2ba
	.byte	0x8
	.uleb128 0xc
	.string	"gw"
	.byte	0xd
	.2byte	0x117
	.byte	0xd
	.4byte	0x2ba
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xd
	.2byte	0x129
	.byte	0x12
	.4byte	0x78b
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xd
	.2byte	0x12f
	.byte	0x13
	.4byte	0x7b0
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xd
	.2byte	0x134
	.byte	0x17
	.4byte	0x7df
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xd
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x804
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xd
	.2byte	0x144
	.byte	0x1c
	.4byte	0x804
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xd
	.2byte	0x14e
	.byte	0x9
	.4byte	0x84a
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xd
	.2byte	0x152
	.byte	0xf
	.4byte	0x92
	.byte	0x38
	.uleb128 0xc
	.string	"mtu"
	.byte	0xd
	.2byte	0x158
	.byte	0x9
	.4byte	0xf7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x15e
	.byte	0x8
	.4byte	0x85a
	.byte	0x3e
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xd
	.2byte	0x160
	.byte	0x8
	.4byte	0xdf
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xd
	.2byte	0x162
	.byte	0x8
	.4byte	0xdf
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xd
	.2byte	0x164
	.byte	0x8
	.4byte	0x86a
	.byte	0x46
	.uleb128 0xc
	.string	"num"
	.byte	0xd
	.2byte	0x167
	.byte	0x8
	.4byte	0xdf
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xd
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x820
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0xd
	.2byte	0x185
	.byte	0xf
	.4byte	0x87f
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.4byte	0x660
	.uleb128 0x5
	.4byte	.LASF142
	.byte	0xd
	.byte	0xb5
	.byte	0x11
	.4byte	0x797
	.uleb128 0x6
	.4byte	0x79c
	.uleb128 0x13
	.4byte	0x204
	.4byte	0x7b0
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0x65b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0xd
	.byte	0xc0
	.byte	0x11
	.4byte	0x7bc
	.uleb128 0x6
	.4byte	0x7c1
	.uleb128 0x13
	.4byte	0x204
	.4byte	0x7da
	.uleb128 0x1
	.4byte	0x65b
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0x7da
	.byte	0
	.uleb128 0x6
	.4byte	0x2b5
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0xd
	.byte	0xd7
	.byte	0x11
	.4byte	0x7eb
	.uleb128 0x6
	.4byte	0x7f0
	.uleb128 0x13
	.4byte	0x204
	.4byte	0x804
	.uleb128 0x1
	.4byte	0x65b
	.uleb128 0x1
	.4byte	0x28a
	.byte	0
	.uleb128 0x5
	.4byte	.LASF145
	.byte	0xd
	.byte	0xd9
	.byte	0x10
	.4byte	0x810
	.uleb128 0x6
	.4byte	0x815
	.uleb128 0x22
	.4byte	0x820
	.uleb128 0x1
	.4byte	0x65b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF146
	.byte	0xd
	.byte	0xdc
	.byte	0x11
	.4byte	0x82c
	.uleb128 0x6
	.4byte	0x831
	.uleb128 0x13
	.4byte	0x204
	.4byte	0x84a
	.uleb128 0x1
	.4byte	0x65b
	.uleb128 0x1
	.4byte	0x7da
	.uleb128 0x1
	.4byte	0x63f
	.byte	0
	.uleb128 0x1a
	.4byte	0x84
	.4byte	0x85a
	.uleb128 0x1b
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.4byte	0xdf
	.4byte	0x86a
	.uleb128 0x1b
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.4byte	0x86
	.4byte	0x87a
	.uleb128 0x1b
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.string	"acd"
	.uleb128 0x6
	.4byte	0x87a
	.uleb128 0x6
	.4byte	0x2c7
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x4
	.byte	0xe
	.byte	0x35
	.4byte	0x8a3
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF148
	.byte	0xe
	.byte	0x3d
	.byte	0x20
	.4byte	0x889
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x14
	.byte	0xe
	.byte	0x49
	.4byte	0x93e
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xe
	.byte	0x4b
	.byte	0x8
	.4byte	0xdf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xe
	.byte	0x4d
	.byte	0x8
	.4byte	0xdf
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xe
	.byte	0x4f
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x8
	.string	"_id"
	.byte	0xe
	.byte	0x51
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0xe
	.byte	0x53
	.byte	0x9
	.4byte	0xf7
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xe
	.byte	0x59
	.byte	0x8
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0xe
	.byte	0x5b
	.byte	0x8
	.4byte	0xdf
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0xe
	.byte	0x5d
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x8
	.string	"src"
	.byte	0xe
	.byte	0x5f
	.byte	0x10
	.4byte	0x8a3
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0xe
	.byte	0x60
	.byte	0x10
	.4byte	0x8a3
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.4byte	0x8af
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x18
	.byte	0xf
	.byte	0x76
	.4byte	0x99e
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0xf
	.byte	0x79
	.byte	0x11
	.4byte	0x65b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xf
	.byte	0x7b
	.byte	0x11
	.4byte	0x65b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0xf
	.byte	0x7e
	.byte	0x18
	.4byte	0x99e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0xf
	.byte	0x85
	.byte	0x9
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0xf
	.byte	0x87
	.byte	0xd
	.4byte	0x2ba
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0xf
	.byte	0x89
	.byte	0xd
	.4byte	0x2ba
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x93e
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0xf
	.byte	0x8b
	.byte	0x1a
	.4byte	0x943
	.uleb128 0x5
	.4byte	.LASF167
	.byte	0x10
	.byte	0x46
	.byte	0x11
	.4byte	0x9bb
	.uleb128 0x6
	.4byte	0x9c0
	.uleb128 0x13
	.4byte	0x204
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0x204
	.byte	0
	.uleb128 0x6
	.4byte	0x9de
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xa4
	.byte	0x10
	.byte	0xf2
	.4byte	0xd32
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x10
	.byte	0xf4
	.byte	0xd
	.4byte	0x2ba
	.byte	0
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x10
	.byte	0xf4
	.byte	0x21
	.4byte	0x2ba
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x10
	.byte	0xf4
	.byte	0x31
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x10
	.byte	0xf4
	.byte	0x41
	.4byte	0xdf
	.byte	0x9
	.uleb128 0x8
	.string	"tos"
	.byte	0x10
	.byte	0xf4
	.byte	0x52
	.4byte	0xdf
	.byte	0xa
	.uleb128 0x8
	.string	"ttl"
	.byte	0x10
	.byte	0xf4
	.byte	0x5c
	.4byte	0xdf
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x10
	.byte	0xf6
	.byte	0x13
	.4byte	0x9d9
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x10
	.byte	0xf6
	.byte	0x1f
	.4byte	0x84
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x10
	.byte	0xf6
	.byte	0x3c
	.4byte	0x133
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x10
	.byte	0xf6
	.byte	0x48
	.4byte	0xdf
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x10
	.byte	0xf6
	.byte	0x54
	.4byte	0xf7
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x10
	.byte	0xf9
	.byte	0x9
	.4byte	0xf7
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x10
	.byte	0xfb
	.byte	0xe
	.4byte	0xe90
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x10
	.2byte	0x116
	.byte	0x8
	.4byte	0xdf
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x10
	.2byte	0x116
	.byte	0x11
	.4byte	0xdf
	.byte	0x1d
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x10
	.2byte	0x117
	.byte	0x8
	.4byte	0xdf
	.byte	0x1e
	.uleb128 0xc
	.string	"tmr"
	.byte	0x10
	.2byte	0x118
	.byte	0x9
	.4byte	0x10f
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0x10
	.2byte	0x11b
	.byte	0x9
	.4byte	0x10f
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x10
	.2byte	0x11c
	.byte	0x11
	.4byte	0x127
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x10
	.2byte	0x11d
	.byte	0x11
	.4byte	0x127
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0x10
	.2byte	0x11e
	.byte	0x9
	.4byte	0x10f
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0x10
	.2byte	0x127
	.byte	0x9
	.4byte	0x103
	.byte	0x30
	.uleb128 0xc
	.string	"mss"
	.byte	0x10
	.2byte	0x129
	.byte	0x9
	.4byte	0xf7
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0x10
	.2byte	0x12c
	.byte	0x9
	.4byte	0x10f
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x10
	.2byte	0x12d
	.byte	0x9
	.4byte	0x10f
	.byte	0x38
	.uleb128 0xc
	.string	"sa"
	.byte	0x10
	.2byte	0x12e
	.byte	0x9
	.4byte	0x103
	.byte	0x3c
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.2byte	0x12e
	.byte	0xd
	.4byte	0x103
	.byte	0x3e
	.uleb128 0xc
	.string	"rto"
	.byte	0x10
	.2byte	0x130
	.byte	0x9
	.4byte	0x103
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x10
	.2byte	0x131
	.byte	0x8
	.4byte	0xdf
	.byte	0x42
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x10
	.2byte	0x134
	.byte	0x8
	.4byte	0xdf
	.byte	0x43
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0x10
	.2byte	0x135
	.byte	0x9
	.4byte	0x10f
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0x10
	.2byte	0x138
	.byte	0x11
	.4byte	0x127
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0x10
	.2byte	0x139
	.byte	0x11
	.4byte	0x127
	.byte	0x4a
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x10
	.2byte	0x13c
	.byte	0x9
	.4byte	0x10f
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x10
	.2byte	0x13f
	.byte	0x9
	.4byte	0x10f
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x10
	.2byte	0x140
	.byte	0x9
	.4byte	0x10f
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0x10
	.2byte	0x140
	.byte	0x12
	.4byte	0x10f
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0x10
	.2byte	0x142
	.byte	0x9
	.4byte	0x10f
	.byte	0x5c
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x10
	.2byte	0x143
	.byte	0x11
	.4byte	0x127
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x10
	.2byte	0x144
	.byte	0x11
	.4byte	0x127
	.byte	0x62
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0x10
	.2byte	0x146
	.byte	0x11
	.4byte	0x127
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0x10
	.2byte	0x148
	.byte	0x9
	.4byte	0xf7
	.byte	0x66
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0x10
	.2byte	0x14c
	.byte	0x9
	.4byte	0xf7
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0x10
	.2byte	0x14f
	.byte	0x11
	.4byte	0x127
	.byte	0x6a
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x10
	.2byte	0x152
	.byte	0x13
	.4byte	0xf06
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x10
	.2byte	0x153
	.byte	0x13
	.4byte	0xf06
	.byte	0x70
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x10
	.2byte	0x155
	.byte	0x13
	.4byte	0xf06
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x10
	.2byte	0x158
	.byte	0x10
	.4byte	0x28a
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0x10
	.2byte	0x15b
	.byte	0x1a
	.4byte	0xde2
	.byte	0x7c
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x10
	.2byte	0x160
	.byte	0xf
	.4byte	0xd66
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x10
	.2byte	0x162
	.byte	0xf
	.4byte	0xd37
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0x10
	.2byte	0x164
	.byte	0x14
	.4byte	0xdd6
	.byte	0x88
	.uleb128 0x3
	.4byte	.LASF210
	.byte	0x10
	.2byte	0x166
	.byte	0xf
	.4byte	0xd90
	.byte	0x8c
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0x10
	.2byte	0x168
	.byte	0xe
	.4byte	0xdb5
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0x10
	.2byte	0x171
	.byte	0x9
	.4byte	0x10f
	.byte	0x94
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0x10
	.2byte	0x173
	.byte	0x9
	.4byte	0x10f
	.byte	0x98
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x10
	.2byte	0x174
	.byte	0x9
	.4byte	0x10f
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x10
	.2byte	0x178
	.byte	0x8
	.4byte	0xdf
	.byte	0xa0
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x10
	.2byte	0x17a
	.byte	0x8
	.4byte	0xdf
	.byte	0xa1
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x10
	.2byte	0x17c
	.byte	0x8
	.4byte	0xdf
	.byte	0xa2
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x10
	.2byte	0x17f
	.byte	0x8
	.4byte	0xdf
	.byte	0xa3
	.byte	0
	.uleb128 0x14
	.4byte	0x9de
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0x10
	.byte	0x52
	.byte	0x11
	.4byte	0xd43
	.uleb128 0x6
	.4byte	0xd48
	.uleb128 0x13
	.4byte	0x204
	.4byte	0xd66
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0x204
	.byte	0
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0x10
	.byte	0x60
	.byte	0x11
	.4byte	0xd72
	.uleb128 0x6
	.4byte	0xd77
	.uleb128 0x13
	.4byte	0x204
	.4byte	0xd90
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0xf7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0x10
	.byte	0x6c
	.byte	0x11
	.4byte	0xd9c
	.uleb128 0x6
	.4byte	0xda1
	.uleb128 0x13
	.4byte	0x204
	.4byte	0xdb5
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0x10
	.byte	0x78
	.byte	0x10
	.4byte	0xdc1
	.uleb128 0x6
	.4byte	0xdc6
	.uleb128 0x22
	.4byte	0xdd6
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x204
	.byte	0
	.uleb128 0x5
	.4byte	.LASF223
	.byte	0x10
	.byte	0x86
	.byte	0x11
	.4byte	0x9bb
	.uleb128 0x6
	.4byte	0xde7
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x1c
	.byte	0x10
	.byte	0xdf
	.4byte	0xe90
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x10
	.byte	0xe1
	.byte	0xd
	.4byte	0x2ba
	.byte	0
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x10
	.byte	0xe1
	.byte	0x21
	.4byte	0x2ba
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x10
	.byte	0xe1
	.byte	0x31
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x10
	.byte	0xe1
	.byte	0x41
	.4byte	0xdf
	.byte	0x9
	.uleb128 0x8
	.string	"tos"
	.byte	0x10
	.byte	0xe1
	.byte	0x52
	.4byte	0xdf
	.byte	0xa
	.uleb128 0x8
	.string	"ttl"
	.byte	0x10
	.byte	0xe1
	.byte	0x5c
	.4byte	0xdf
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x10
	.byte	0xe3
	.byte	0x1a
	.4byte	0xde2
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x10
	.byte	0xe3
	.byte	0x26
	.4byte	0x84
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x10
	.byte	0xe3
	.byte	0x43
	.4byte	0x133
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x10
	.byte	0xe3
	.byte	0x4f
	.4byte	0xdf
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x10
	.byte	0xe3
	.byte	0x5b
	.4byte	0xf7
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0x10
	.byte	0xe7
	.byte	0x11
	.4byte	0x9af
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF226
	.byte	0x10
	.byte	0xce
	.byte	0xf
	.4byte	0xf7
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x14
	.byte	0x11
	.byte	0xfa
	.4byte	0xf06
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x11
	.byte	0xfb
	.byte	0x13
	.4byte	0xf06
	.byte	0
	.uleb128 0x8
	.string	"p"
	.byte	0x11
	.byte	0xfc
	.byte	0x10
	.4byte	0x28a
	.byte	0x4
	.uleb128 0x8
	.string	"len"
	.byte	0x11
	.byte	0xfd
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x11
	.2byte	0x104
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF229
	.byte	0x11
	.2byte	0x105
	.byte	0x8
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x11
	.2byte	0x107
	.byte	0x8
	.4byte	0xdf
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF230
	.byte	0x11
	.2byte	0x10e
	.byte	0x13
	.4byte	0xf80
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xe9c
	.uleb128 0xb
	.4byte	.LASF231
	.byte	0x14
	.byte	0x12
	.byte	0x38
	.4byte	0xf80
	.uleb128 0x8
	.string	"src"
	.byte	0x12
	.byte	0x39
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0x12
	.byte	0x3a
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF232
	.byte	0x12
	.byte	0x3b
	.byte	0x9
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF233
	.byte	0x12
	.byte	0x3c
	.byte	0x9
	.4byte	0x10f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF234
	.byte	0x12
	.byte	0x3d
	.byte	0x9
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x8
	.string	"wnd"
	.byte	0x12
	.byte	0x3e
	.byte	0x9
	.4byte	0xf7
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF228
	.byte	0x12
	.byte	0x3f
	.byte	0x9
	.4byte	0xf7
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0x12
	.byte	0x40
	.byte	0x9
	.4byte	0xf7
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0xf0b
	.uleb128 0x15
	.4byte	.LASF236
	.byte	0x11
	.2byte	0x143
	.byte	0x18
	.4byte	0x9d9
	.uleb128 0x15
	.4byte	.LASF237
	.byte	0x11
	.2byte	0x144
	.byte	0xe
	.4byte	0x10f
	.uleb128 0x15
	.4byte	.LASF238
	.byte	0x11
	.2byte	0x145
	.byte	0xd
	.4byte	0xdf
	.uleb128 0x2f
	.4byte	.LASF324
	.byte	0x4
	.byte	0x11
	.2byte	0x148
	.byte	0x7
	.4byte	0xfd3
	.uleb128 0x23
	.4byte	.LASF239
	.2byte	0x149
	.byte	0x1a
	.4byte	0xde2
	.uleb128 0x23
	.4byte	.LASF240
	.2byte	0x14a
	.byte	0x13
	.4byte	0x9d9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF241
	.byte	0x11
	.2byte	0x14d
	.byte	0x20
	.4byte	0xfac
	.uleb128 0x15
	.4byte	.LASF242
	.byte	0x11
	.2byte	0x14e
	.byte	0x18
	.4byte	0x9d9
	.uleb128 0x15
	.4byte	.LASF243
	.byte	0x11
	.2byte	0x151
	.byte	0x18
	.4byte	0x9d9
	.uleb128 0x6
	.4byte	0x9d9
	.uleb128 0x9
	.4byte	.LASF244
	.byte	0x4a
	.byte	0x17
	.4byte	0xe9c
	.uleb128 0x5
	.byte	0x3
	.4byte	inseg
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0x4b
	.byte	0x18
	.4byte	0xf80
	.uleb128 0x5
	.byte	0x3
	.4byte	tcphdr
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x4c
	.byte	0xe
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	tcphdr_optlen
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0x4d
	.byte	0xe
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	tcphdr_opt1len
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0x4e
	.byte	0xe
	.4byte	0x38c
	.uleb128 0x5
	.byte	0x3
	.4byte	tcphdr_opt2
	.uleb128 0x9
	.4byte	.LASF248
	.byte	0x4f
	.byte	0xe
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_optidx
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0x50
	.byte	0xe
	.4byte	0x10f
	.uleb128 0x5
	.byte	0x3
	.4byte	seqno
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0x50
	.byte	0x15
	.4byte	0x10f
	.uleb128 0x5
	.byte	0x3
	.4byte	ackno
	.uleb128 0x9
	.4byte	.LASF249
	.byte	0x51
	.byte	0x16
	.4byte	0x127
	.uleb128 0x5
	.byte	0x3
	.4byte	recv_acked
	.uleb128 0x9
	.4byte	.LASF250
	.byte	0x52
	.byte	0xe
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	tcplen
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x53
	.byte	0xd
	.4byte	0xdf
	.uleb128 0x5
	.byte	0x3
	.4byte	flags
	.uleb128 0x9
	.4byte	.LASF251
	.byte	0x55
	.byte	0xd
	.4byte	0xdf
	.uleb128 0x5
	.byte	0x3
	.4byte	recv_flags
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0x56
	.byte	0x15
	.4byte	0x28a
	.uleb128 0x5
	.byte	0x3
	.4byte	recv_data
	.uleb128 0x30
	.4byte	0xf85
	.byte	0x1
	.byte	0x58
	.byte	0x11
	.uleb128 0x5
	.byte	0x3
	.4byte	tcp_input_pcb
	.uleb128 0x10
	.4byte	.LASF253
	.byte	0x11
	.2byte	0x1bb
	.byte	0x11
	.4byte	0xf06
	.4byte	0x1101
	.uleb128 0x1
	.4byte	0xf06
	.byte	0
	.uleb128 0x11
	.4byte	.LASF255
	.byte	0x8
	.2byte	0x127
	.4byte	0x1118
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0x28a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF254
	.byte	0x11
	.byte	0x58
	.byte	0x7
	.4byte	0x10f
	.4byte	0x112e
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF256
	.byte	0x57
	.4byte	0x113e
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0x8
	.2byte	0x126
	.byte	0x7
	.4byte	0xf7
	.4byte	0x1155
	.uleb128 0x1
	.4byte	0x1155
	.byte	0
	.uleb128 0x6
	.4byte	0x285
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0x8
	.2byte	0x11a
	.4byte	0x1171
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0xf7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0x11
	.2byte	0x1b9
	.4byte	0x1183
	.uleb128 0x1
	.4byte	0xf06
	.byte	0
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0x11
	.2byte	0x1b6
	.4byte	0x1195
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF261
	.byte	0x11
	.byte	0x53
	.byte	0x7
	.4byte	0x204
	.4byte	0x11ab
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF262
	.byte	0x56
	.4byte	0x11bb
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0x11
	.2byte	0x1ba
	.4byte	0x11cd
	.uleb128 0x1
	.4byte	0xf06
	.byte	0
	.uleb128 0x11
	.4byte	.LASF264
	.byte	0x11
	.2byte	0x1d0
	.4byte	0x11fd
	.uleb128 0x1
	.4byte	0x11fd
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x884
	.uleb128 0x1
	.4byte	0x884
	.uleb128 0x1
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0xf7
	.byte	0
	.uleb128 0x6
	.4byte	0xd32
	.uleb128 0x1c
	.4byte	.LASF265
	.byte	0x51
	.4byte	0x1217
	.uleb128 0x1
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0x11
	.2byte	0x1cc
	.byte	0x7
	.4byte	0x204
	.4byte	0x1233
	.uleb128 0x1
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0xdf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0x11
	.2byte	0x1df
	.byte	0x7
	.4byte	0xf7
	.4byte	0x1254
	.uleb128 0x1
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0x65b
	.uleb128 0x1
	.4byte	0x884
	.byte	0
	.uleb128 0xf
	.4byte	.LASF268
	.byte	0x13
	.byte	0x41
	.byte	0xf
	.4byte	0x65b
	.4byte	0x126a
	.uleb128 0x1
	.4byte	0x7da
	.byte	0
	.uleb128 0x31
	.4byte	.LASF325
	.byte	0x11
	.2byte	0x1f9
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF269
	.byte	0x11
	.2byte	0x1d7
	.byte	0x7
	.4byte	0x10f
	.4byte	0x128a
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF270
	.byte	0x11
	.byte	0x4f
	.byte	0x12
	.4byte	0x9d9
	.4byte	0x12a0
	.uleb128 0x1
	.4byte	0xdf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF271
	.byte	0x11
	.2byte	0x1d3
	.4byte	0x12d0
	.uleb128 0x1
	.4byte	0x65b
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x884
	.uleb128 0x1
	.4byte	0x884
	.uleb128 0x1
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0xf7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0x10
	.2byte	0x1de
	.byte	0x7
	.4byte	0x204
	.4byte	0x12e7
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF273
	.byte	0x11
	.2byte	0x1e6
	.byte	0x7
	.4byte	0x204
	.4byte	0x130d
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0x204
	.byte	0
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0x10
	.2byte	0x1d5
	.4byte	0x131f
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF275
	.byte	0x50
	.4byte	0x132f
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0x11
	.2byte	0x1b7
	.4byte	0x1346
	.uleb128 0x1
	.4byte	0xffa
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF277
	.byte	0x11
	.byte	0x52
	.byte	0x7
	.4byte	0x204
	.4byte	0x135c
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF278
	.byte	0x11
	.byte	0x59
	.byte	0x7
	.4byte	0x204
	.4byte	0x1372
	.uleb128 0x1
	.4byte	0x9d9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF279
	.byte	0x8
	.2byte	0x125
	.byte	0x6
	.4byte	0xdf
	.4byte	0x1389
	.uleb128 0x1
	.4byte	0x28a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF280
	.byte	0x14
	.byte	0x65
	.byte	0x7
	.4byte	0x10f
	.4byte	0x139f
	.uleb128 0x1
	.4byte	0x10f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF281
	.byte	0x8
	.2byte	0x122
	.byte	0x6
	.4byte	0xdf
	.4byte	0x13bb
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xf
	.4byte	.LASF282
	.byte	0x14
	.byte	0x60
	.byte	0x7
	.4byte	0xf7
	.4byte	0x13d1
	.uleb128 0x1
	.4byte	0xf7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF283
	.byte	0x15
	.byte	0x5f
	.byte	0x7
	.4byte	0xf7
	.4byte	0x13fb
	.uleb128 0x1
	.4byte	0x28a
	.uleb128 0x1
	.4byte	0xdf
	.uleb128 0x1
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0x884
	.uleb128 0x1
	.4byte	0x884
	.byte	0
	.uleb128 0xf
	.4byte	.LASF284
	.byte	0x9
	.byte	0xa0
	.byte	0x6
	.4byte	0xdf
	.4byte	0x1416
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x1416
	.byte	0
	.uleb128 0x6
	.4byte	0x786
	.uleb128 0x32
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x7fd
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF288
	.2byte	0x785
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1486
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x785
	.byte	0x1e
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF285
	.2byte	0x787
	.byte	0x8
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xe
	.string	"mss"
	.2byte	0x788
	.byte	0x9
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LLRL5
	.uleb128 0xe
	.string	"opt"
	.2byte	0x792
	.byte	0xc
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x770
	.byte	0x1
	.4byte	0xdf
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e7
	.uleb128 0x7
	.4byte	.LASF286
	.2byte	0x772
	.byte	0x9
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x14cd
	.uleb128 0x7
	.4byte	.LASF287
	.2byte	0x774
	.byte	0xb
	.4byte	0x38c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0xe
	.string	"idx"
	.2byte	0x777
	.byte	0xa
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF289
	.2byte	0x482
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1695
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x482
	.byte	0x1d
	.4byte	0x9d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xe
	.string	"m"
	.2byte	0x484
	.byte	0x9
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x7
	.4byte	.LASF290
	.2byte	0x485
	.byte	0x9
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.4byte	.LLRL1
	.4byte	0x1569
	.uleb128 0x7
	.4byte	.LASF291
	.2byte	0x4d4
	.byte	0x15
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x17
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x7
	.4byte	.LASF292
	.2byte	0x4f0
	.byte	0x19
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF293
	.2byte	0x4f2
	.byte	0x10
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x15b1
	.uleb128 0xe
	.string	"p"
	.2byte	0x597
	.byte	0x14
	.4byte	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF294
	.2byte	0x598
	.byte	0xd
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF295
	.2byte	0x599
	.byte	0xd
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0xe
	.string	"off"
	.2byte	0x599
	.byte	0x1a
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x12
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x15cf
	.uleb128 0x7
	.4byte	.LASF296
	.2byte	0x5e0
	.byte	0x1f
	.4byte	0xf06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x12
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x1606
	.uleb128 0x7
	.4byte	.LASF57
	.2byte	0x5e5
	.byte	0x1d
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0xe
	.string	"tmp"
	.2byte	0x5eb
	.byte	0x1f
	.4byte	0xf06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x1624
	.uleb128 0x7
	.4byte	.LASF297
	.2byte	0x62d
	.byte	0x1b
	.4byte	0xf06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x17
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x7
	.4byte	.LASF57
	.2byte	0x692
	.byte	0x1b
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF298
	.2byte	0x692
	.byte	0x22
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LLRL2
	.4byte	0x1665
	.uleb128 0x7
	.4byte	.LASF297
	.2byte	0x69a
	.byte	0x21
	.4byte	0xf06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x1f
	.4byte	.LLRL3
	.4byte	0x167e
	.uleb128 0x7
	.4byte	.LASF297
	.2byte	0x6be
	.byte	0x23
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1e
	.4byte	.LLRL4
	.uleb128 0x7
	.4byte	.LASF297
	.2byte	0x6ce
	.byte	0x23
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF300
	.2byte	0x44d
	.4byte	0xf06
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1709
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x44d
	.byte	0x29
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.4byte	.LASF301
	.2byte	0x44d
	.byte	0x3e
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LASF302
	.2byte	0x44d
	.byte	0x54
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.4byte	.LASF303
	.2byte	0x44e
	.byte	0x29
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.4byte	.LASF57
	.2byte	0x450
	.byte	0x13
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF304
	.2byte	0x451
	.byte	0x9
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x18
	.4byte	.LASF305
	.2byte	0x428
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x174c
	.uleb128 0x19
	.4byte	.LASF297
	.2byte	0x428
	.byte	0x28
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF57
	.2byte	0x428
	.byte	0x3e
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF306
	.2byte	0x42a
	.byte	0x13
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF307
	.2byte	0x317
	.4byte	0x204
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17f5
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x317
	.byte	0x1d
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF308
	.2byte	0x319
	.byte	0x13
	.4byte	0xf06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF309
	.2byte	0x31a
	.byte	0x8
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xe
	.string	"err"
	.2byte	0x31b
	.byte	0x9
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x12
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x17be
	.uleb128 0x7
	.4byte	.LASF310
	.2byte	0x3f2
	.byte	0x84
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x17db
	.uleb128 0x7
	.4byte	.LASF310
	.2byte	0x404
	.byte	0x82
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x17
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x7
	.4byte	.LASF310
	.2byte	0x40e
	.byte	0x82
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF311
	.2byte	0x2e6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181a
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x2e6
	.byte	0x24
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF312
	.2byte	0x276
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1884
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x276
	.byte	0x29
	.4byte	0xde2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF313
	.2byte	0x278
	.byte	0x13
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"iss"
	.2byte	0x279
	.byte	0x9
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"rc"
	.2byte	0x27a
	.byte	0x9
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x17
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0xe
	.string	"err"
	.2byte	0x298
	.byte	0xd
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF314
	.2byte	0x258
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ad
	.uleb128 0x16
	.string	"pcb"
	.2byte	0x258
	.byte	0x29
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF327
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.string	"p"
	.byte	0x76
	.byte	0x18
	.4byte	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"inp"
	.byte	0x76
	.byte	0x29
	.4byte	0x65b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"pcb"
	.byte	0x78
	.byte	0x13
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF298
	.byte	0x78
	.byte	0x19
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF315
	.byte	0x79
	.byte	0x1a
	.4byte	0xde2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF316
	.byte	0x7b
	.byte	0x13
	.4byte	0x9d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF317
	.byte	0x7c
	.byte	0x1a
	.4byte	0xde2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF318
	.byte	0x7e
	.byte	0x8
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x25
	.string	"err"
	.byte	0x7f
	.byte	0x9
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x26
	.4byte	.LASF319
	.2byte	0x24c
	.4byte	.L3
	.uleb128 0x26
	.4byte	.LASF320
	.2byte	0x233
	.4byte	.L43
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x196d
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xa2
	.byte	0xb
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x12
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1989
	.uleb128 0x9
	.4byte	.LASF321
	.byte	0xbf
	.byte	0xb
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1e
	.4byte	.LLRL0
	.uleb128 0x7
	.4byte	.LASF322
	.2byte	0x1c8
	.byte	0x11
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x17
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB12-.LBB10
	.uleb128 .LBE12-.LBB10
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB22-.LBB19
	.uleb128 .LBE22-.LBB19
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB20
	.byte	0x4
	.uleb128 .LBB20-.LBB20
	.uleb128 .LBE20-.LBB20
	.byte	0x4
	.uleb128 .LBB23-.LBB20
	.uleb128 .LBE23-.LBB20
	.byte	0
.LLRL4:
	.byte	0x5
	.4byte	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB24-.LBB21
	.uleb128 .LBE24-.LBB21
	.byte	0
.LLRL5:
	.byte	0x5
	.4byte	.LBB27
	.byte	0x4
	.uleb128 .LBB27-.LBB27
	.uleb128 .LBE27-.LBB27
	.byte	0x4
	.uleb128 .LBB28-.LBB27
	.uleb128 .LBE28-.LBB27
	.byte	0
.LLRL6:
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
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF322:
	.string	"acked16"
.LASF239:
	.string	"listen_pcbs"
.LASF71:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF297:
	.string	"cseg"
.LASF249:
	.string	"recv_acked"
.LASF172:
	.string	"so_options"
.LASF243:
	.string	"tcp_tw_pcbs"
.LASF129:
	.string	"input"
.LASF279:
	.string	"pbuf_free"
.LASF306:
	.string	"old_seg"
.LASF313:
	.string	"npcb"
.LASF217:
	.string	"persist_probe"
.LASF235:
	.string	"urgp"
.LASF207:
	.string	"listener"
.LASF121:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF160:
	.string	"current_input_netif"
.LASF167:
	.string	"tcp_accept_fn"
.LASF61:
	.string	"flags"
.LASF292:
	.string	"increase"
.LASF54:
	.string	"ERR_CLSD"
.LASF47:
	.string	"ERR_USE"
.LASF55:
	.string	"ERR_ARG"
.LASF103:
	.string	"rx_report"
.LASF37:
	.string	"TIME_WAIT"
.LASF284:
	.string	"ip4_addr_isbroadcast_u32"
.LASF10:
	.string	"unsigned int"
.LASF171:
	.string	"netif_idx"
.LASF57:
	.string	"next"
.LASF56:
	.string	"err_t"
.LASF283:
	.string	"ip_chksum_pseudo"
.LASF131:
	.string	"linkoutput"
.LASF269:
	.string	"tcp_next_iss"
.LASF261:
	.string	"tcp_rexmit"
.LASF298:
	.string	"prev"
.LASF22:
	.string	"u16_t"
.LASF154:
	.string	"_ttl"
.LASF326:
	.string	"tcp_trigger_input_pcb_close"
.LASF245:
	.string	"tcphdr_optlen"
.LASF112:
	.string	"link"
.LASF296:
	.string	"old_ooseq"
.LASF183:
	.string	"rcv_ann_right_edge"
.LASF84:
	.string	"stats_mem"
.LASF299:
	.string	"tcp_get_next_optbyte"
.LASF266:
	.string	"tcp_enqueue_flags"
.LASF161:
	.string	"current_ip4_header"
.LASF280:
	.string	"lwip_htonl"
.LASF143:
	.string	"netif_output_fn"
.LASF282:
	.string	"lwip_htons"
.LASF218:
	.string	"keep_cnt_sent"
.LASF82:
	.string	"MEMP_PBUF_POOL"
.LASF165:
	.string	"lwip_stats"
.LASF305:
	.string	"tcp_oos_insert_segment"
.LASF200:
	.string	"snd_queuelen"
.LASF220:
	.string	"tcp_sent_fn"
.LASF53:
	.string	"ERR_RST"
.LASF244:
	.string	"inseg"
.LASF214:
	.string	"keep_cnt"
.LASF276:
	.string	"tcp_pcb_remove"
.LASF321:
	.string	"opt2len"
.LASF48:
	.string	"ERR_ALREADY"
.LASF107:
	.string	"stats_syselem"
.LASF232:
	.string	"seqno"
.LASF142:
	.string	"netif_input_fn"
.LASF295:
	.string	"new_tot_len"
.LASF19:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF190:
	.string	"cwnd"
.LASF78:
	.string	"MEMP_IGMP_GROUP"
.LASF238:
	.string	"tcp_active_pcbs_changed"
.LASF225:
	.string	"accept"
.LASF76:
	.string	"MEMP_TCPIP_MSG_API"
.LASF97:
	.string	"opterr"
.LASF175:
	.string	"local_port"
.LASF109:
	.string	"mutex"
.LASF317:
	.string	"lpcb_any"
.LASF275:
	.string	"tcp_free"
.LASF223:
	.string	"tcp_connected_fn"
.LASF147:
	.string	"ip4_addr_packed"
.LASF87:
	.string	"illegal"
.LASF15:
	.string	"int16_t"
.LASF137:
	.string	"hwaddr"
.LASF113:
	.string	"etharp"
.LASF227:
	.string	"tcp_seg"
.LASF9:
	.string	"long long unsigned int"
.LASF303:
	.string	"dbg_other_seg_list"
.LASF304:
	.string	"clen"
.LASF115:
	.string	"igmp"
.LASF186:
	.string	"rtseq"
.LASF163:
	.string	"current_iphdr_src"
.LASF315:
	.string	"lpcb"
.LASF66:
	.string	"ip4_addr_t"
.LASF117:
	.string	"tcp_state"
.LASF229:
	.string	"chksum_swapped"
.LASF184:
	.string	"rtime"
.LASF138:
	.string	"hwaddr_len"
.LASF153:
	.string	"_offset"
.LASF318:
	.string	"hdrlen_bytes"
.LASF45:
	.string	"ERR_VAL"
.LASF291:
	.string	"acked"
.LASF180:
	.string	"rcv_nxt"
.LASF77:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF86:
	.string	"used"
.LASF204:
	.string	"unacked"
.LASF111:
	.string	"stats_"
.LASF118:
	.string	"lwip_internal_netif_client_data_index"
.LASF36:
	.string	"LAST_ACK"
.LASF60:
	.string	"type_internal"
.LASF59:
	.string	"tot_len"
.LASF13:
	.string	"size_t"
.LASF267:
	.string	"tcp_eff_send_mss_netif"
.LASF58:
	.string	"payload"
.LASF271:
	.string	"tcp_rst_netif"
.LASF309:
	.string	"acceptable"
.LASF130:
	.string	"output"
.LASF209:
	.string	"connected"
.LASF319:
	.string	"dropped"
.LASF63:
	.string	"pbuf"
.LASF310:
	.string	"tcp_tmp_pcb"
.LASF260:
	.string	"tcp_pcb_purge"
.LASF35:
	.string	"CLOSING"
.LASF327:
	.string	"tcp_input"
.LASF189:
	.string	"lastack"
.LASF83:
	.string	"MEMP_MAX"
.LASF21:
	.string	"s8_t"
.LASF25:
	.string	"s32_t"
.LASF301:
	.string	"seg_list"
.LASF75:
	.string	"MEMP_NETCONN"
.LASF257:
	.string	"pbuf_clen"
.LASF268:
	.string	"ip4_route"
.LASF102:
	.string	"rx_general"
.LASF46:
	.string	"ERR_WOULDBLOCK"
.LASF42:
	.string	"ERR_TIMEOUT"
.LASF242:
	.string	"tcp_active_pcbs"
.LASF237:
	.string	"tcp_ticks"
.LASF188:
	.string	"dupacks"
.LASF272:
	.string	"tcp_output"
.LASF174:
	.string	"prio"
.LASF158:
	.string	"ip_globals"
.LASF81:
	.string	"MEMP_PBUF"
.LASF210:
	.string	"poll"
.LASF135:
	.string	"client_data"
.LASF12:
	.string	"char"
.LASF258:
	.string	"pbuf_realloc"
.LASF38:
	.string	"mem_size_t"
.LASF146:
	.string	"netif_igmp_mac_filter_fn"
.LASF140:
	.string	"igmp_mac_filter"
.LASF88:
	.string	"stats_proto"
.LASF307:
	.string	"tcp_process"
.LASF34:
	.string	"CLOSE_WAIT"
.LASF203:
	.string	"unsent"
.LASF285:
	.string	"data"
.LASF250:
	.string	"tcplen"
.LASF125:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF302:
	.string	"dbg_list_name"
.LASF208:
	.string	"sent"
.LASF17:
	.string	"uint8_t"
.LASF194:
	.string	"snd_wl1"
.LASF195:
	.string	"snd_wl2"
.LASF253:
	.string	"tcp_seg_copy"
.LASF155:
	.string	"_proto"
.LASF222:
	.string	"tcp_err_fn"
.LASF325:
	.string	"tcp_timer_needed"
.LASF311:
	.string	"tcp_timewait_input"
.LASF324:
	.string	"tcp_listen_pcbs_t"
.LASF281:
	.string	"pbuf_remove_header"
.LASF136:
	.string	"hostname"
.LASF196:
	.string	"snd_lbb"
.LASF133:
	.string	"link_callback"
.LASF273:
	.string	"tcp_recv_null"
.LASF74:
	.string	"MEMP_NETBUF"
.LASF128:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF224:
	.string	"tcp_pcb_listen"
.LASF233:
	.string	"ackno"
.LASF51:
	.string	"ERR_IF"
.LASF132:
	.string	"status_callback"
.LASF236:
	.string	"tcp_input_pcb"
.LASF216:
	.string	"persist_backoff"
.LASF177:
	.string	"polltmr"
.LASF70:
	.string	"MEMP_TCP_PCB"
.LASF116:
	.string	"memp"
.LASF20:
	.string	"u8_t"
.LASF150:
	.string	"_v_hl"
.LASF241:
	.string	"tcp_listen_pcbs"
.LASF290:
	.string	"right_wnd_edge"
.LASF246:
	.string	"tcphdr_opt1len"
.LASF96:
	.string	"proterr"
.LASF176:
	.string	"remote_port"
.LASF166:
	.string	"ip_data"
.LASF182:
	.string	"rcv_ann_wnd"
.LASF92:
	.string	"chkerr"
.LASF308:
	.string	"rseg"
.LASF219:
	.string	"tcp_recv_fn"
.LASF162:
	.string	"current_ip_header_tot_len"
.LASF274:
	.string	"tcp_abort"
.LASF73:
	.string	"MEMP_ALTCP_PCB"
.LASF124:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF254:
	.string	"tcp_update_rcv_ann_wnd"
.LASF221:
	.string	"tcp_poll_fn"
.LASF202:
	.string	"bytes_acked"
.LASF11:
	.string	"long double"
.LASF18:
	.string	"uint16_t"
.LASF226:
	.string	"tcpflags_t"
.LASF211:
	.string	"errf"
.LASF197:
	.string	"snd_wnd"
.LASF62:
	.string	"if_idx"
.LASF148:
	.string	"ip4_addr_p_t"
.LASF263:
	.string	"tcp_seg_free"
.LASF264:
	.string	"tcp_rst"
.LASF251:
	.string	"recv_flags"
.LASF205:
	.string	"ooseq"
.LASF231:
	.string	"tcp_hdr"
.LASF41:
	.string	"ERR_BUF"
.LASF159:
	.string	"current_netif"
.LASF316:
	.string	"lpcb_prev"
.LASF27:
	.string	"CLOSED"
.LASF24:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF114:
	.string	"icmp"
.LASF6:
	.string	"long int"
.LASF95:
	.string	"rterr"
.LASF85:
	.string	"avail"
.LASF320:
	.string	"aborted"
.LASF79:
	.string	"MEMP_SYS_TIMEOUT"
.LASF181:
	.string	"rcv_wnd"
.LASF185:
	.string	"rttest"
.LASF277:
	.string	"tcp_send_empty_ack"
.LASF287:
	.string	"opts"
.LASF312:
	.string	"tcp_listen_input"
.LASF179:
	.string	"last_timer"
.LASF69:
	.string	"MEMP_UDP_PCB"
.LASF169:
	.string	"local_ip"
.LASF110:
	.string	"mbox"
.LASF201:
	.string	"unsent_oversize"
.LASF44:
	.string	"ERR_INPROGRESS"
.LASF149:
	.string	"ip_hdr"
.LASF64:
	.string	"ip4_addr"
.LASF31:
	.string	"ESTABLISHED"
.LASF49:
	.string	"ERR_ISCONN"
.LASF98:
	.string	"cachehit"
.LASF198:
	.string	"snd_wnd_max"
.LASF139:
	.string	"name"
.LASF144:
	.string	"netif_linkoutput_fn"
.LASF293:
	.string	"num_seg"
.LASF191:
	.string	"ssthresh"
.LASF199:
	.string	"snd_buf"
.LASF178:
	.string	"pollinterval"
.LASF68:
	.string	"MEMP_RAW_PCB"
.LASF234:
	.string	"_hdrlen_rsvd_flags"
.LASF93:
	.string	"lenerr"
.LASF151:
	.string	"_tos"
.LASF7:
	.string	"long unsigned int"
.LASF123:
	.string	"netif_mac_filter_action"
.LASF252:
	.string	"recv_data"
.LASF230:
	.string	"tcphdr"
.LASF23:
	.string	"s16_t"
.LASF16:
	.string	"int32_t"
.LASF278:
	.string	"tcp_process_refused_data"
.LASF289:
	.string	"tcp_receive"
.LASF206:
	.string	"refused_data"
.LASF26:
	.string	"tcpwnd_size_t"
.LASF100:
	.string	"rx_v1"
.LASF192:
	.string	"rto_end"
.LASF108:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"FIN_WAIT_1"
.LASF33:
	.string	"FIN_WAIT_2"
.LASF94:
	.string	"memerr"
.LASF72:
	.string	"MEMP_TCP_SEG"
.LASF145:
	.string	"netif_status_callback_fn"
.LASF29:
	.string	"SYN_SENT"
.LASF248:
	.string	"tcp_optidx"
.LASF212:
	.string	"keep_idle"
.LASF173:
	.string	"callback_arg"
.LASF28:
	.string	"LISTEN"
.LASF262:
	.string	"tcp_rexmit_rto"
.LASF65:
	.string	"addr"
.LASF104:
	.string	"tx_join"
.LASF89:
	.string	"xmit"
.LASF91:
	.string	"drop"
.LASF134:
	.string	"state"
.LASF122:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF126:
	.string	"netif"
.LASF52:
	.string	"ERR_ABRT"
.LASF286:
	.string	"optidx"
.LASF228:
	.string	"chksum"
.LASF141:
	.string	"acd_list"
.LASF247:
	.string	"tcphdr_opt2"
.LASF105:
	.string	"tx_leave"
.LASF39:
	.string	"ERR_OK"
.LASF90:
	.string	"recv"
.LASF119:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"signed char"
.LASF193:
	.string	"snd_nxt"
.LASF168:
	.string	"tcp_pcb"
.LASF5:
	.string	"short unsigned int"
.LASF99:
	.string	"stats_igmp"
.LASF50:
	.string	"ERR_CONN"
.LASF215:
	.string	"persist_cnt"
.LASF164:
	.string	"current_iphdr_dest"
.LASF170:
	.string	"remote_ip"
.LASF43:
	.string	"ERR_RTE"
.LASF265:
	.string	"tcp_abandon"
.LASF256:
	.string	"tcp_rexmit_fast"
.LASF213:
	.string	"keep_intvl"
.LASF152:
	.string	"_len"
.LASF67:
	.string	"ip_addr_t"
.LASF259:
	.string	"tcp_segs_free"
.LASF80:
	.string	"MEMP_NETDB"
.LASF255:
	.string	"pbuf_cat"
.LASF106:
	.string	"tx_report"
.LASF270:
	.string	"tcp_alloc"
.LASF294:
	.string	"off32"
.LASF288:
	.string	"tcp_parseopt"
.LASF156:
	.string	"_chksum"
.LASF323:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF187:
	.string	"nrtx"
.LASF120:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF40:
	.string	"ERR_MEM"
.LASF157:
	.string	"dest"
.LASF30:
	.string	"SYN_RCVD"
.LASF127:
	.string	"ip_addr"
.LASF240:
	.string	"pcbs"
.LASF314:
	.string	"tcp_input_delayed_close"
.LASF101:
	.string	"rx_group"
.LASF300:
	.string	"tcp_free_acked_segments"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/tcp_in.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
