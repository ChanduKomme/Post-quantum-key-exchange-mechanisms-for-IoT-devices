	.file	"sha3.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha3.c"
	.section	.rodata.iota_r_packed,"a"
	.align	2
	.type	iota_r_packed, @object
	.size	iota_r_packed, 24
iota_r_packed:
	.base64	"AZLacJsh8VmKiDkqu8vZU1LAGmrx0CF4"
	.section	.rodata.rho,"a"
	.align	2
	.type	rho, @object
	.size	rho, 24
rho:
	.word	1057104933
	.word	471087625
	.word	742209045
	.word	655955731
	.word	824916014
	.word	1040386098
	.section	.rodata.pi,"a"
	.align	2
	.type	pi, @object
	.size	pi, 24
pi:
	.word	285935370
	.word	268763922
	.word	68687112
	.word	219354895
	.word	236192268
	.word	17172758
	.section	.text.keccak_f1600,"ax",@progbits
	.align	1
	.type	keccak_f1600, @function
keccak_f1600:
.LFB15:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha3.c"
	.loc 1 102 1
	.cfi_startproc
	addi	sp,sp,-1168
	.cfi_def_cfa_offset 1168
	sw	ra,1164(sp)
	sw	s0,1160(sp)
	sw	s1,1156(sp)
	sw	s2,1152(sp)
	sw	s3,1148(sp)
	sw	s4,1144(sp)
	sw	s5,1140(sp)
	sw	s6,1136(sp)
	sw	s7,1132(sp)
	sw	s8,1128(sp)
	sw	s9,1124(sp)
	sw	s10,1120(sp)
	sw	s11,1116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	addi	s0,sp,1168
	.cfi_def_cfa 8, 0
	sw	a0,-340(s0)
	.loc 1 104 15
	lw	a5,-340(s0)
	sw	a5,-76(s0)
.LBB5:
	.loc 1 107 14
	sw	zero,-72(s0)
	.loc 1 107 5
	j	.L2
.L25:
.LBB6:
	.loc 1 112 16
	sw	zero,-68(s0)
	.loc 1 112 9
	j	.L3
.L4:
	.loc 1 113 24
	lw	a5,-68(s0)
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 113 31
	lw	a5,-68(s0)
	addi	a5,a5,5
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 113 28
	xor	a1,a2,a4
	sw	a1,-352(s0)
	xor	a5,a3,a5
	sw	a5,-348(s0)
	.loc 1 113 42
	lw	a5,-68(s0)
	addi	a5,a5,10
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 113 39
	lw	a2,-352(s0)
	lw	a3,-348(s0)
	mv	a1,a2
	xor	a1,a1,a4
	sw	a1,-360(s0)
	xor	a5,a3,a5
	sw	a5,-356(s0)
	.loc 1 113 54
	lw	a5,-68(s0)
	addi	a5,a5,15
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 113 51
	lw	a2,-360(s0)
	lw	a3,-356(s0)
	mv	a1,a2
	xor	a1,a1,a4
	sw	a1,-368(s0)
	xor	a5,a3,a5
	sw	a5,-364(s0)
	.loc 1 113 66
	lw	a5,-68(s0)
	addi	a5,a5,20
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 113 63
	lw	a2,-368(s0)
	lw	a3,-364(s0)
	mv	a1,a2
	xor	a1,a1,a4
	sw	a1,-376(s0)
	xor	a5,a3,a5
	sw	a5,-372(s0)
	.loc 1 113 21
	lw	a5,-68(s0)
	addi	a4,s0,-336
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a3,-376(s0)
	lw	a4,-372(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 112 29 discriminator 3
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L3:
	.loc 1 112 23 discriminator 1
	lw	a4,-68(s0)
	li	a5,4
	ble	a4,a5,.L4
	.loc 1 115 16
	sw	zero,-68(s0)
	.loc 1 115 9
	j	.L5
.L6:
	.loc 1 116 25
	lw	a5,-68(s0)
	addi	a3,a5,4
	.loc 1 116 30
	li	a5,1717985280
	addi	a5,a5,1639
	mulh	a5,a3,a5
	srai	a4,a5,1
	srai	a5,a3,31
	sub	a4,a4,a5
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	sub	a4,a3,a5
	.loc 1 116 21
	addi	a3,s0,-336
	slli	a5,a4,3
	add	a5,a5,a3
	lw	a0,0(a5)
	lw	a1,4(a5)
	.loc 1 116 48
	lw	a5,-68(s0)
	addi	a3,a5,1
	.loc 1 116 53
	li	a5,1717985280
	addi	a5,a5,1639
	mulh	a5,a3,a5
	srai	a4,a5,1
	srai	a5,a3,31
	sub	a4,a4,a5
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	sub	a4,a3,a5
	.loc 1 116 44
	addi	a3,s0,-336
	slli	a5,a4,3
	add	a5,a5,a3
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 116 76
	srli	a2,a5,31
	slli	a3,a4,1
	add	a3,a2,a3
	sw	a3,-384(s0)
	srli	a3,a4,31
	slli	a5,a5,1
	add	a5,a3,a5
	sw	a5,-380(s0)
	.loc 1 116 15
	lw	a3,-384(s0)
	lw	a4,-380(s0)
	mv	a5,a3
	xor	a5,a0,a5
	sw	a5,-88(s0)
	mv	a5,a4
	xor	a5,a1,a5
	sw	a5,-84(s0)
	.loc 1 117 14
	lw	a5,-68(s0)
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a5,-68(s0)
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a4,a5,a4
	.loc 1 117 18
	lw	a5,-88(s0)
	xor	a5,a5,a2
	sw	a5,-392(s0)
	lw	a5,-84(s0)
	xor	a5,a5,a3
	sw	a5,-388(s0)
	lw	a2,-392(s0)
	lw	a3,-388(s0)
	sw	a2,0(a4)
	sw	a3,4(a4)
	.loc 1 117 25
	lw	a5,-68(s0)
	addi	a5,a5,5
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a5,-68(s0)
	addi	a5,a5,5
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a4,a5,a4
	.loc 1 117 33
	lw	a5,-88(s0)
	xor	a5,a5,a2
	sw	a5,-400(s0)
	lw	a5,-84(s0)
	xor	a5,a5,a3
	sw	a5,-396(s0)
	lw	a2,-400(s0)
	lw	a3,-396(s0)
	sw	a2,0(a4)
	sw	a3,4(a4)
	.loc 1 117 40
	lw	a5,-68(s0)
	addi	a5,a5,10
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a5,-68(s0)
	addi	a5,a5,10
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a4,a5,a4
	.loc 1 117 49
	lw	a5,-88(s0)
	xor	a5,a5,a2
	sw	a5,-408(s0)
	lw	a5,-84(s0)
	xor	a5,a5,a3
	sw	a5,-404(s0)
	lw	a2,-408(s0)
	lw	a3,-404(s0)
	sw	a2,0(a4)
	sw	a3,4(a4)
	.loc 1 117 56
	lw	a5,-68(s0)
	addi	a5,a5,15
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a5,-68(s0)
	addi	a5,a5,15
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a4,a5,a4
	.loc 1 117 65
	lw	a5,-88(s0)
	xor	a5,a5,a2
	sw	a5,-416(s0)
	lw	a5,-84(s0)
	xor	a5,a5,a3
	sw	a5,-412(s0)
	lw	a2,-416(s0)
	lw	a3,-412(s0)
	sw	a2,0(a4)
	sw	a3,4(a4)
	.loc 1 117 72
	lw	a5,-68(s0)
	addi	a5,a5,20
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a5,-68(s0)
	addi	a5,a5,20
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a4,a5,a4
	.loc 1 117 81
	lw	a5,-88(s0)
	xor	a5,a5,a2
	sw	a5,-424(s0)
	lw	a5,-84(s0)
	xor	a5,a5,a3
	sw	a5,-420(s0)
	lw	a2,-424(s0)
	lw	a3,-420(s0)
	sw	a2,0(a4)
	sw	a3,4(a4)
	.loc 1 115 29 discriminator 3
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L5:
	.loc 1 115 23 discriminator 1
	lw	a4,-68(s0)
	li	a5,4
	ble	a4,a5,.L6
	.loc 1 143 16
	li	a5,1
	sw	a5,-68(s0)
	.loc 1 143 9
	j	.L7
.L24:
.LBB7:
	.loc 1 144 33
	lw	a5,-68(s0)
	addi	a5,a5,-1
	.loc 1 144 38
	srai	a3,a5,2
	.loc 1 144 22
	lui	a5,%hi(rho)
	addi	a4,a5,%lo(rho)
	slli	a5,a3,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-292(s0)
	.loc 1 152 28
	lw	a5,-68(s0)
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 152 65
	lw	a5,-292(s0)
	srli	a5,a5,24
	.loc 1 152 49
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 152 45
	li	a5,64
	sub	a4,a5,a4
	.loc 1 152 37
	addi	a5,a4,-32
	blt	a5,zero,.L8
	sll	a7,a2,a5
	li	a6,0
	j	.L9
.L8:
	srli	a1,a2,1
	li	a5,31
	sub	a5,a5,a4
	srl	a5,a1,a5
	sll	a7,a3,a4
	add	a7,a5,a7
	sll	a6,a2,a4
.L9:
	.loc 1 152 89
	lw	a5,-68(s0)
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 152 119
	lw	a5,-292(s0)
	srli	a5,a5,24
	.loc 1 152 103
	andi	a5,a5,0xff
	mv	a1,a5
	.loc 1 152 98
	addi	a5,a1,-32
	blt	a5,zero,.L10
	srl	t1,a3,a5
	li	t2,0
	j	.L11
.L10:
	slli	a4,a3,1
	li	a5,31
	sub	a5,a5,a1
	sll	a5,a4,a5
	srl	t1,a2,a1
	add	t1,a5,t1
	srl	t2,a3,a1
.L11:
	.loc 1 152 14
	lw	a5,-68(s0)
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 152 84
	or	a4,a6,t1
	sw	a4,-432(s0)
	or	a4,a7,t2
	sw	a4,-428(s0)
	.loc 1 152 22
	lw	a3,-432(s0)
	lw	a4,-428(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 153 28
	lw	a5,-68(s0)
	addi	a5,a5,1
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 153 65
	lw	a5,-292(s0)
	srli	a5,a5,16
	.loc 1 153 49
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 153 45
	li	a5,64
	sub	a4,a5,a4
	.loc 1 153 37
	addi	a5,a4,-32
	blt	a5,zero,.L12
	sll	t4,a2,a5
	li	t3,0
	j	.L13
.L12:
	srli	a1,a2,1
	li	a5,31
	sub	a5,a5,a4
	srl	a5,a1,a5
	sll	t4,a3,a4
	add	t4,a5,t4
	sll	t3,a2,a4
.L13:
	.loc 1 153 89
	lw	a5,-68(s0)
	addi	a5,a5,1
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 153 119
	lw	a5,-292(s0)
	srli	a5,a5,16
	.loc 1 153 103
	andi	a5,a5,0xff
	mv	a1,a5
	.loc 1 153 98
	addi	a5,a1,-32
	blt	a5,zero,.L14
	srl	t5,a3,a5
	li	t6,0
	j	.L15
.L14:
	slli	a4,a3,1
	li	a5,31
	sub	a5,a5,a1
	sll	a5,a4,a5
	srl	t5,a2,a1
	add	t5,a5,t5
	srl	t6,a3,a1
.L15:
	.loc 1 153 14
	lw	a5,-68(s0)
	addi	a5,a5,1
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 153 84
	or	a4,t3,t5
	sw	a4,-440(s0)
	or	a4,t4,t6
	sw	a4,-436(s0)
	.loc 1 153 22
	lw	a3,-440(s0)
	lw	a4,-436(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 154 28
	lw	a5,-68(s0)
	addi	a5,a5,2
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 154 65
	lw	a5,-292(s0)
	srli	a5,a5,8
	.loc 1 154 49
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 154 45
	li	a5,64
	sub	a4,a5,a4
	.loc 1 154 37
	addi	a5,a4,-32
	blt	a5,zero,.L16
	sll	s3,a2,a5
	li	s2,0
	j	.L17
.L16:
	srli	a1,a2,1
	li	a5,31
	sub	a5,a5,a4
	srl	a5,a1,a5
	sll	s3,a3,a4
	add	s3,a5,s3
	sll	s2,a2,a4
.L17:
	.loc 1 154 88
	lw	a5,-68(s0)
	addi	a5,a5,2
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 154 118
	lw	a5,-292(s0)
	srli	a5,a5,8
	.loc 1 154 102
	andi	a5,a5,0xff
	mv	a1,a5
	.loc 1 154 97
	addi	a5,a1,-32
	blt	a5,zero,.L18
	srl	s4,a3,a5
	li	s5,0
	j	.L19
.L18:
	slli	a4,a3,1
	li	a5,31
	sub	a5,a5,a1
	sll	a5,a4,a5
	srl	s4,a2,a1
	add	s4,a5,s4
	srl	s5,a3,a1
.L19:
	.loc 1 154 14
	lw	a5,-68(s0)
	addi	a5,a5,2
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 154 83
	or	a4,s2,s4
	sw	a4,-448(s0)
	or	a4,s3,s5
	sw	a4,-444(s0)
	.loc 1 154 22
	lw	a3,-448(s0)
	lw	a4,-444(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 155 28
	lw	a5,-68(s0)
	addi	a5,a5,3
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 155 49
	lw	a5,-292(s0)
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 155 45
	li	a5,64
	sub	a4,a5,a4
	.loc 1 155 37
	addi	a5,a4,-32
	blt	a5,zero,.L20
	sll	s7,a2,a5
	li	s6,0
	j	.L21
.L20:
	srli	a1,a2,1
	li	a5,31
	sub	a5,a5,a4
	srl	a5,a1,a5
	sll	s7,a3,a4
	add	s7,a5,s7
	sll	s6,a2,a4
.L21:
	.loc 1 155 81
	lw	a5,-68(s0)
	addi	a5,a5,3
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 155 95
	lw	a5,-292(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	.loc 1 155 90
	addi	a5,a1,-32
	blt	a5,zero,.L22
	srl	s8,a3,a5
	li	s9,0
	j	.L23
.L22:
	slli	a4,a3,1
	li	a5,31
	sub	a5,a5,a1
	sll	a5,a4,a5
	srl	s8,a2,a1
	add	s8,a5,s8
	srl	s9,a3,a1
.L23:
	.loc 1 155 14
	lw	a5,-68(s0)
	addi	a5,a5,3
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 155 76
	or	a4,s6,s8
	sw	a4,-456(s0)
	or	a4,s7,s9
	sw	a4,-452(s0)
	.loc 1 155 22
	lw	a3,-456(s0)
	lw	a4,-452(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
.LBE7:
	.loc 1 143 31 discriminator 3
	lw	a5,-68(s0)
	addi	a5,a5,4
	sw	a5,-68(s0)
.L7:
	.loc 1 143 23 discriminator 1
	lw	a4,-68(s0)
	li	a5,24
	ble	a4,a5,.L24
	.loc 1 160 11
	lw	a5,-76(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	.loc 1 170 18
	li	a5,285933568
	addi	a5,a5,1802
	sw	a5,-92(s0)
.LBB8:
	.loc 1 171 33
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 171 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 171 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	.loc 1 171 64
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 171 62
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 171 90
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 171 101
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE8:
.LBB9:
	.loc 1 171 161
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 171 145
	andi	a5,a5,0xff
	.loc 1 171 143
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 171 135
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	.loc 1 171 199
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 171 183
	andi	a5,a5,0xff
	.loc 1 171 181
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 171 216
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 171 227
	lw	a4,-112(s0)
	lw	a5,-108(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE9:
.LBB10:
	.loc 1 172 49
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 172 33
	andi	a5,a5,0xff
	.loc 1 172 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 172 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	.loc 1 172 88
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 172 72
	andi	a5,a5,0xff
	.loc 1 172 70
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 172 106
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 172 117
	lw	a4,-120(s0)
	lw	a5,-116(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE10:
.LBB11:
	.loc 1 172 177
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 172 161
	andi	a5,a5,0xff
	.loc 1 172 159
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 172 151
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-128(s0)
	sw	a5,-124(s0)
	.loc 1 172 216
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 172 200
	andi	a5,a5,0xff
	.loc 1 172 198
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 172 234
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 172 245
	lw	a4,-128(s0)
	lw	a5,-124(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE11:
	.loc 1 173 11
	li	a5,268763136
	addi	a5,a5,786
	sw	a5,-92(s0)
.LBB12:
	.loc 1 174 33
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 174 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 174 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-136(s0)
	sw	a5,-132(s0)
	.loc 1 174 64
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 174 62
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 174 90
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 174 101
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE12:
.LBB13:
	.loc 1 174 161
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 174 145
	andi	a5,a5,0xff
	.loc 1 174 143
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 174 135
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-144(s0)
	sw	a5,-140(s0)
	.loc 1 174 199
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 174 183
	andi	a5,a5,0xff
	.loc 1 174 181
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 174 216
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 174 227
	lw	a4,-144(s0)
	lw	a5,-140(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE13:
.LBB14:
	.loc 1 175 49
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 175 33
	andi	a5,a5,0xff
	.loc 1 175 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 175 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-152(s0)
	sw	a5,-148(s0)
	.loc 1 175 88
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 175 72
	andi	a5,a5,0xff
	.loc 1 175 70
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 175 106
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 175 117
	lw	a4,-152(s0)
	lw	a5,-148(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE14:
.LBB15:
	.loc 1 175 177
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 175 161
	andi	a5,a5,0xff
	.loc 1 175 159
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 175 151
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-160(s0)
	sw	a5,-156(s0)
	.loc 1 175 216
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 175 200
	andi	a5,a5,0xff
	.loc 1 175 198
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 175 234
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 175 245
	lw	a4,-160(s0)
	lw	a5,-156(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE15:
	.loc 1 176 11
	li	a5,68685824
	addi	a5,a5,1288
	sw	a5,-92(s0)
.LBB16:
	.loc 1 177 33
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 177 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 177 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-168(s0)
	sw	a5,-164(s0)
	.loc 1 177 64
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 177 62
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 177 90
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 177 101
	lw	a4,-168(s0)
	lw	a5,-164(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE16:
.LBB17:
	.loc 1 177 161
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 177 145
	andi	a5,a5,0xff
	.loc 1 177 143
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 177 135
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-176(s0)
	sw	a5,-172(s0)
	.loc 1 177 199
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 177 183
	andi	a5,a5,0xff
	.loc 1 177 181
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 177 216
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 177 227
	lw	a4,-176(s0)
	lw	a5,-172(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE17:
.LBB18:
	.loc 1 178 49
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 178 33
	andi	a5,a5,0xff
	.loc 1 178 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 178 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-184(s0)
	sw	a5,-180(s0)
	.loc 1 178 88
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 178 72
	andi	a5,a5,0xff
	.loc 1 178 70
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 178 106
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 178 117
	lw	a4,-184(s0)
	lw	a5,-180(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE18:
.LBB19:
	.loc 1 178 177
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 178 161
	andi	a5,a5,0xff
	.loc 1 178 159
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 178 151
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-192(s0)
	sw	a5,-188(s0)
	.loc 1 178 216
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 178 200
	andi	a5,a5,0xff
	.loc 1 178 198
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 178 234
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 178 245
	lw	a4,-192(s0)
	lw	a5,-188(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE19:
	.loc 1 179 11
	li	a5,219353088
	addi	a5,a5,1807
	sw	a5,-92(s0)
.LBB20:
	.loc 1 180 33
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 180 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 180 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-200(s0)
	sw	a5,-196(s0)
	.loc 1 180 64
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 180 62
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 180 90
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 180 101
	lw	a4,-200(s0)
	lw	a5,-196(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE20:
.LBB21:
	.loc 1 180 161
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 180 145
	andi	a5,a5,0xff
	.loc 1 180 143
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 180 135
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-208(s0)
	sw	a5,-204(s0)
	.loc 1 180 199
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 180 183
	andi	a5,a5,0xff
	.loc 1 180 181
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 180 216
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 180 227
	lw	a4,-208(s0)
	lw	a5,-204(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE21:
.LBB22:
	.loc 1 181 49
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 181 33
	andi	a5,a5,0xff
	.loc 1 181 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 181 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-216(s0)
	sw	a5,-212(s0)
	.loc 1 181 88
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 181 72
	andi	a5,a5,0xff
	.loc 1 181 70
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 181 106
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 181 117
	lw	a4,-216(s0)
	lw	a5,-212(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE22:
.LBB23:
	.loc 1 181 177
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 181 161
	andi	a5,a5,0xff
	.loc 1 181 159
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 181 151
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-224(s0)
	sw	a5,-220(s0)
	.loc 1 181 216
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 181 200
	andi	a5,a5,0xff
	.loc 1 181 198
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 181 234
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 181 245
	lw	a4,-224(s0)
	lw	a5,-220(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE23:
	.loc 1 182 11
	li	a5,236191744
	addi	a5,a5,524
	sw	a5,-92(s0)
.LBB24:
	.loc 1 183 33
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 183 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 183 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-232(s0)
	sw	a5,-228(s0)
	.loc 1 183 64
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 183 62
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 183 90
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 183 101
	lw	a4,-232(s0)
	lw	a5,-228(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE24:
.LBB25:
	.loc 1 183 161
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 183 145
	andi	a5,a5,0xff
	.loc 1 183 143
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 183 135
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-240(s0)
	sw	a5,-236(s0)
	.loc 1 183 199
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 183 183
	andi	a5,a5,0xff
	.loc 1 183 181
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 183 216
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 183 227
	lw	a4,-240(s0)
	lw	a5,-236(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE25:
.LBB26:
	.loc 1 184 49
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 184 33
	andi	a5,a5,0xff
	.loc 1 184 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 184 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-248(s0)
	sw	a5,-244(s0)
	.loc 1 184 88
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 184 72
	andi	a5,a5,0xff
	.loc 1 184 70
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 184 106
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 184 117
	lw	a4,-248(s0)
	lw	a5,-244(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE26:
.LBB27:
	.loc 1 184 177
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 184 161
	andi	a5,a5,0xff
	.loc 1 184 159
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 184 151
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-256(s0)
	sw	a5,-252(s0)
	.loc 1 184 216
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 184 200
	andi	a5,a5,0xff
	.loc 1 184 198
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 184 234
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 184 245
	lw	a4,-256(s0)
	lw	a5,-252(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE27:
	.loc 1 185 11
	li	a5,17174528
	addi	a5,a5,-1770
	sw	a5,-92(s0)
.LBB28:
	.loc 1 186 33
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 186 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 186 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 1 186 64
	lw	a5,-92(s0)
	andi	a5,a5,0xff
	.loc 1 186 62
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 186 90
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 186 101
	lw	a4,-264(s0)
	lw	a5,-260(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE28:
.LBB29:
	.loc 1 186 161
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 186 145
	andi	a5,a5,0xff
	.loc 1 186 143
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 186 135
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 1 186 199
	lw	a5,-92(s0)
	srli	a5,a5,8
	.loc 1 186 183
	andi	a5,a5,0xff
	.loc 1 186 181
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 186 216
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 186 227
	lw	a4,-272(s0)
	lw	a5,-268(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE29:
.LBB30:
	.loc 1 187 49
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 187 33
	andi	a5,a5,0xff
	.loc 1 187 31
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 187 23
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 1 187 88
	lw	a5,-92(s0)
	srli	a5,a5,16
	.loc 1 187 72
	andi	a5,a5,0xff
	.loc 1 187 70
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 187 106
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 187 117
	lw	a4,-280(s0)
	lw	a5,-276(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE30:
.LBB31:
	.loc 1 187 177
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 187 161
	andi	a5,a5,0xff
	.loc 1 187 159
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 1 187 151
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 1 187 216
	lw	a5,-92(s0)
	srli	a5,a5,24
	.loc 1 187 200
	andi	a5,a5,0xff
	.loc 1 187 198
	slli	a4,a5,3
	lw	a5,-76(s0)
	add	a3,a5,a4
	.loc 1 187 234
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 187 245
	lw	a4,-288(s0)
	lw	a5,-284(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
.LBE31:
	.loc 1 202 20
	lw	a5,-76(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 202 17
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 1 202 33
	lw	a5,-76(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 1 202 49
	lw	a5,-76(s0)
	lw	a4,16(a5)
	lw	a5,20(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 1 202 65
	lw	a5,-76(s0)
	lw	a4,24(a5)
	lw	a5,28(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 1 202 81
	lw	a5,-76(s0)
	lw	a4,32(a5)
	lw	a5,36(a5)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 1 203 10
	lw	a5,-76(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 203 23
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 203 18
	not	a1,a4
	sw	a1,-464(s0)
	not	a5,a5
	sw	a5,-460(s0)
	.loc 1 203 34
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 203 28
	lw	a0,-464(s0)
	lw	a1,-460(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-472(s0)
	and	a5,a1,a5
	sw	a5,-468(s0)
	.loc 1 203 14
	lw	a4,-472(s0)
	lw	a5,-468(s0)
	mv	a1,a4
	xor	a1,a2,a1
	sw	a1,-480(s0)
	xor	a5,a3,a5
	sw	a5,-476(s0)
	lw	a5,-76(s0)
	lw	a3,-480(s0)
	lw	a4,-476(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 204 10
	lw	a5,-76(s0)
	addi	a5,a5,8
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 204 23
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 204 18
	not	a1,a4
	sw	a1,-488(s0)
	not	a5,a5
	sw	a5,-484(s0)
	.loc 1 204 34
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 204 28
	lw	a0,-488(s0)
	lw	a1,-484(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-496(s0)
	and	a5,a1,a5
	sw	a5,-492(s0)
	.loc 1 204 10
	lw	a5,-76(s0)
	addi	a5,a5,8
	.loc 1 204 14
	lw	a0,-496(s0)
	lw	a1,-492(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-504(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-500(s0)
	lw	a3,-504(s0)
	lw	a4,-500(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 205 10
	lw	a5,-76(s0)
	addi	a5,a5,16
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 205 23
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 205 18
	not	a1,a4
	sw	a1,-512(s0)
	not	a5,a5
	sw	a5,-508(s0)
	.loc 1 205 34
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 205 28
	lw	a0,-512(s0)
	lw	a1,-508(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-520(s0)
	and	a5,a1,a5
	sw	a5,-516(s0)
	.loc 1 205 10
	lw	a5,-76(s0)
	addi	a5,a5,16
	.loc 1 205 14
	lw	a0,-520(s0)
	lw	a1,-516(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-528(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-524(s0)
	lw	a3,-528(s0)
	lw	a4,-524(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 206 10
	lw	a5,-76(s0)
	addi	a5,a5,24
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 206 23
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 206 18
	not	a1,a4
	sw	a1,-536(s0)
	not	a5,a5
	sw	a5,-532(s0)
	.loc 1 206 34
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 206 28
	lw	a0,-536(s0)
	lw	a1,-532(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-544(s0)
	and	a5,a1,a5
	sw	a5,-540(s0)
	.loc 1 206 10
	lw	a5,-76(s0)
	addi	a5,a5,24
	.loc 1 206 14
	lw	a0,-544(s0)
	lw	a1,-540(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-552(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-548(s0)
	lw	a3,-552(s0)
	lw	a4,-548(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 207 10
	lw	a5,-76(s0)
	addi	a5,a5,32
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 207 23
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 207 18
	not	a1,a4
	sw	a1,-560(s0)
	not	a5,a5
	sw	a5,-556(s0)
	.loc 1 207 34
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 207 28
	lw	a0,-560(s0)
	lw	a1,-556(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-568(s0)
	and	a5,a1,a5
	sw	a5,-564(s0)
	.loc 1 207 10
	lw	a5,-76(s0)
	addi	a5,a5,32
	.loc 1 207 14
	lw	a0,-568(s0)
	lw	a1,-564(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-576(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-572(s0)
	lw	a3,-576(s0)
	lw	a4,-572(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 209 17
	lw	a5,-76(s0)
	lw	a4,40(a5)
	lw	a5,44(a5)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 1 209 33
	lw	a5,-76(s0)
	lw	a4,48(a5)
	lw	a5,52(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 1 209 49
	lw	a5,-76(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 1 209 65
	lw	a5,-76(s0)
	lw	a4,64(a5)
	lw	a5,68(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 1 209 81
	lw	a5,-76(s0)
	lw	a4,72(a5)
	lw	a5,76(a5)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 1 210 10
	lw	a5,-76(s0)
	addi	a5,a5,40
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 210 23
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 210 18
	not	a1,a4
	sw	a1,-584(s0)
	not	a5,a5
	sw	a5,-580(s0)
	.loc 1 210 34
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 210 28
	lw	a0,-584(s0)
	lw	a1,-580(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-592(s0)
	and	a5,a1,a5
	sw	a5,-588(s0)
	.loc 1 210 10
	lw	a5,-76(s0)
	addi	a5,a5,40
	.loc 1 210 14
	lw	a0,-592(s0)
	lw	a1,-588(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-600(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-596(s0)
	lw	a3,-600(s0)
	lw	a4,-596(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 211 10
	lw	a5,-76(s0)
	addi	a5,a5,48
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 211 23
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 211 18
	not	a1,a4
	sw	a1,-608(s0)
	not	a5,a5
	sw	a5,-604(s0)
	.loc 1 211 34
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 211 28
	lw	a0,-608(s0)
	lw	a1,-604(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-616(s0)
	and	a5,a1,a5
	sw	a5,-612(s0)
	.loc 1 211 10
	lw	a5,-76(s0)
	addi	a5,a5,48
	.loc 1 211 14
	lw	a0,-616(s0)
	lw	a1,-612(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-624(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-620(s0)
	lw	a3,-624(s0)
	lw	a4,-620(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 212 10
	lw	a5,-76(s0)
	addi	a5,a5,56
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 212 23
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 212 18
	not	a1,a4
	sw	a1,-632(s0)
	not	a5,a5
	sw	a5,-628(s0)
	.loc 1 212 34
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 212 28
	lw	a0,-632(s0)
	lw	a1,-628(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-640(s0)
	and	a5,a1,a5
	sw	a5,-636(s0)
	.loc 1 212 10
	lw	a5,-76(s0)
	addi	a5,a5,56
	.loc 1 212 14
	lw	a0,-640(s0)
	lw	a1,-636(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-648(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-644(s0)
	lw	a3,-648(s0)
	lw	a4,-644(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 213 10
	lw	a5,-76(s0)
	addi	a5,a5,64
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 213 23
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 213 18
	not	a1,a4
	sw	a1,-656(s0)
	not	a5,a5
	sw	a5,-652(s0)
	.loc 1 213 34
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 213 28
	lw	a0,-656(s0)
	lw	a1,-652(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-664(s0)
	and	a5,a1,a5
	sw	a5,-660(s0)
	.loc 1 213 10
	lw	a5,-76(s0)
	addi	a5,a5,64
	.loc 1 213 14
	lw	a0,-664(s0)
	lw	a1,-660(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-672(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-668(s0)
	lw	a3,-672(s0)
	lw	a4,-668(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 214 10
	lw	a5,-76(s0)
	addi	a5,a5,72
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 214 23
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 214 18
	not	a1,a4
	sw	a1,-680(s0)
	not	a5,a5
	sw	a5,-676(s0)
	.loc 1 214 34
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 214 28
	lw	a0,-680(s0)
	lw	a1,-676(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-688(s0)
	and	a5,a1,a5
	sw	a5,-684(s0)
	.loc 1 214 10
	lw	a5,-76(s0)
	addi	a5,a5,72
	.loc 1 214 14
	lw	a0,-688(s0)
	lw	a1,-684(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-696(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-692(s0)
	lw	a3,-696(s0)
	lw	a4,-692(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 216 17
	lw	a5,-76(s0)
	lw	a4,80(a5)
	lw	a5,84(a5)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 1 216 34
	lw	a5,-76(s0)
	lw	a4,88(a5)
	lw	a5,92(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 1 216 51
	lw	a5,-76(s0)
	lw	a4,96(a5)
	lw	a5,100(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 1 216 68
	lw	a5,-76(s0)
	lw	a4,104(a5)
	lw	a5,108(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 1 216 85
	lw	a5,-76(s0)
	lw	a4,112(a5)
	lw	a5,116(a5)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 1 217 10
	lw	a5,-76(s0)
	addi	a5,a5,80
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 217 24
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 217 19
	not	a1,a4
	sw	a1,-704(s0)
	not	a5,a5
	sw	a5,-700(s0)
	.loc 1 217 35
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 217 29
	lw	a0,-704(s0)
	lw	a1,-700(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-712(s0)
	and	a5,a1,a5
	sw	a5,-708(s0)
	.loc 1 217 10
	lw	a5,-76(s0)
	addi	a5,a5,80
	.loc 1 217 15
	lw	a0,-712(s0)
	lw	a1,-708(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-720(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-716(s0)
	lw	a3,-720(s0)
	lw	a4,-716(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 218 10
	lw	a5,-76(s0)
	addi	a5,a5,88
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 218 24
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 218 19
	not	a1,a4
	sw	a1,-728(s0)
	not	a5,a5
	sw	a5,-724(s0)
	.loc 1 218 35
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 218 29
	lw	a0,-728(s0)
	lw	a1,-724(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-736(s0)
	and	a5,a1,a5
	sw	a5,-732(s0)
	.loc 1 218 10
	lw	a5,-76(s0)
	addi	a5,a5,88
	.loc 1 218 15
	lw	a0,-736(s0)
	lw	a1,-732(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-744(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-740(s0)
	lw	a3,-744(s0)
	lw	a4,-740(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 219 10
	lw	a5,-76(s0)
	addi	a5,a5,96
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 219 24
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 219 19
	not	a1,a4
	sw	a1,-752(s0)
	not	a5,a5
	sw	a5,-748(s0)
	.loc 1 219 35
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 219 29
	lw	a0,-752(s0)
	lw	a1,-748(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-760(s0)
	and	a5,a1,a5
	sw	a5,-756(s0)
	.loc 1 219 10
	lw	a5,-76(s0)
	addi	a5,a5,96
	.loc 1 219 15
	lw	a0,-760(s0)
	lw	a1,-756(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-768(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-764(s0)
	lw	a3,-768(s0)
	lw	a4,-764(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 220 10
	lw	a5,-76(s0)
	addi	a5,a5,104
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 220 24
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 220 19
	not	a1,a4
	sw	a1,-776(s0)
	not	a5,a5
	sw	a5,-772(s0)
	.loc 1 220 35
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 220 29
	lw	a0,-776(s0)
	lw	a1,-772(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-784(s0)
	and	a5,a1,a5
	sw	a5,-780(s0)
	.loc 1 220 10
	lw	a5,-76(s0)
	addi	a5,a5,104
	.loc 1 220 15
	lw	a0,-784(s0)
	lw	a1,-780(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-792(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-788(s0)
	lw	a3,-792(s0)
	lw	a4,-788(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 221 10
	lw	a5,-76(s0)
	addi	a5,a5,112
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 221 24
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 221 19
	not	a1,a4
	sw	a1,-800(s0)
	not	a5,a5
	sw	a5,-796(s0)
	.loc 1 221 35
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 221 29
	lw	a0,-800(s0)
	lw	a1,-796(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-808(s0)
	and	a5,a1,a5
	sw	a5,-804(s0)
	.loc 1 221 10
	lw	a5,-76(s0)
	addi	a5,a5,112
	.loc 1 221 15
	lw	a0,-808(s0)
	lw	a1,-804(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-816(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-812(s0)
	lw	a3,-816(s0)
	lw	a4,-812(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 223 17
	lw	a5,-76(s0)
	lw	a4,120(a5)
	lw	a5,124(a5)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 1 223 34
	lw	a5,-76(s0)
	lw	a4,128(a5)
	lw	a5,132(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 1 223 51
	lw	a5,-76(s0)
	lw	a4,136(a5)
	lw	a5,140(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 1 223 68
	lw	a5,-76(s0)
	lw	a4,144(a5)
	lw	a5,148(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 1 223 85
	lw	a5,-76(s0)
	lw	a4,152(a5)
	lw	a5,156(a5)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 1 224 10
	lw	a5,-76(s0)
	addi	a5,a5,120
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 224 24
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 224 19
	not	a1,a4
	sw	a1,-824(s0)
	not	a5,a5
	sw	a5,-820(s0)
	.loc 1 224 35
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 224 29
	lw	a0,-824(s0)
	lw	a1,-820(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-832(s0)
	and	a5,a1,a5
	sw	a5,-828(s0)
	.loc 1 224 10
	lw	a5,-76(s0)
	addi	a5,a5,120
	.loc 1 224 15
	lw	a0,-832(s0)
	lw	a1,-828(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-840(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-836(s0)
	lw	a3,-840(s0)
	lw	a4,-836(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 225 10
	lw	a5,-76(s0)
	addi	a5,a5,128
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 225 24
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 225 19
	not	a1,a4
	sw	a1,-848(s0)
	not	a5,a5
	sw	a5,-844(s0)
	.loc 1 225 35
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 225 29
	lw	a0,-848(s0)
	lw	a1,-844(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-856(s0)
	and	a5,a1,a5
	sw	a5,-852(s0)
	.loc 1 225 10
	lw	a5,-76(s0)
	addi	a5,a5,128
	.loc 1 225 15
	lw	a0,-856(s0)
	lw	a1,-852(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-864(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-860(s0)
	lw	a3,-864(s0)
	lw	a4,-860(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 226 10
	lw	a5,-76(s0)
	addi	a5,a5,136
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 226 24
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 226 19
	not	a1,a4
	sw	a1,-872(s0)
	not	a5,a5
	sw	a5,-868(s0)
	.loc 1 226 35
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 226 29
	lw	a0,-872(s0)
	lw	a1,-868(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-880(s0)
	and	a5,a1,a5
	sw	a5,-876(s0)
	.loc 1 226 10
	lw	a5,-76(s0)
	addi	a5,a5,136
	.loc 1 226 15
	lw	a0,-880(s0)
	lw	a1,-876(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-888(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-884(s0)
	lw	a3,-888(s0)
	lw	a4,-884(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 227 10
	lw	a5,-76(s0)
	addi	a5,a5,144
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 227 24
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 227 19
	not	a1,a4
	sw	a1,-896(s0)
	not	a5,a5
	sw	a5,-892(s0)
	.loc 1 227 35
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 227 29
	lw	a0,-896(s0)
	lw	a1,-892(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-904(s0)
	and	a5,a1,a5
	sw	a5,-900(s0)
	.loc 1 227 10
	lw	a5,-76(s0)
	addi	a5,a5,144
	.loc 1 227 15
	lw	a0,-904(s0)
	lw	a1,-900(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-912(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-908(s0)
	lw	a3,-912(s0)
	lw	a4,-908(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 228 10
	lw	a5,-76(s0)
	addi	a5,a5,152
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 228 24
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 228 19
	not	a1,a4
	sw	a1,-920(s0)
	not	a5,a5
	sw	a5,-916(s0)
	.loc 1 228 35
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 228 29
	lw	a0,-920(s0)
	lw	a1,-916(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-928(s0)
	and	a5,a1,a5
	sw	a5,-924(s0)
	.loc 1 228 10
	lw	a5,-76(s0)
	addi	a5,a5,152
	.loc 1 228 15
	lw	a0,-928(s0)
	lw	a1,-924(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-936(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-932(s0)
	lw	a3,-936(s0)
	lw	a4,-932(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 230 17
	lw	a5,-76(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 1 230 34
	lw	a5,-76(s0)
	lw	a4,168(a5)
	lw	a5,172(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 1 230 51
	lw	a5,-76(s0)
	lw	a4,176(a5)
	lw	a5,180(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 1 230 68
	lw	a5,-76(s0)
	lw	a4,184(a5)
	lw	a5,188(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 1 230 85
	lw	a5,-76(s0)
	lw	a4,192(a5)
	lw	a5,196(a5)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 1 231 10
	lw	a5,-76(s0)
	addi	a5,a5,160
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 231 24
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 231 19
	not	a1,a4
	sw	a1,-944(s0)
	not	a5,a5
	sw	a5,-940(s0)
	.loc 1 231 35
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 231 29
	lw	a0,-944(s0)
	lw	a1,-940(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-952(s0)
	and	a5,a1,a5
	sw	a5,-948(s0)
	.loc 1 231 10
	lw	a5,-76(s0)
	addi	a5,a5,160
	.loc 1 231 15
	lw	a0,-952(s0)
	lw	a1,-948(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-960(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-956(s0)
	lw	a3,-960(s0)
	lw	a4,-956(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 232 10
	lw	a5,-76(s0)
	addi	a5,a5,168
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 232 24
	lw	a4,-320(s0)
	lw	a5,-316(s0)
	.loc 1 232 19
	not	a1,a4
	sw	a1,-968(s0)
	not	a5,a5
	sw	a5,-964(s0)
	.loc 1 232 35
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 232 29
	lw	a0,-968(s0)
	lw	a1,-964(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-976(s0)
	and	a5,a1,a5
	sw	a5,-972(s0)
	.loc 1 232 10
	lw	a5,-76(s0)
	addi	a5,a5,168
	.loc 1 232 15
	lw	a0,-976(s0)
	lw	a1,-972(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-984(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-980(s0)
	lw	a3,-984(s0)
	lw	a4,-980(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 233 10
	lw	a5,-76(s0)
	addi	a5,a5,176
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 233 24
	lw	a4,-312(s0)
	lw	a5,-308(s0)
	.loc 1 233 19
	not	a1,a4
	sw	a1,-992(s0)
	not	a5,a5
	sw	a5,-988(s0)
	.loc 1 233 35
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 233 29
	lw	a0,-992(s0)
	lw	a1,-988(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-1000(s0)
	and	a5,a1,a5
	sw	a5,-996(s0)
	.loc 1 233 10
	lw	a5,-76(s0)
	addi	a5,a5,176
	.loc 1 233 15
	lw	a0,-1000(s0)
	lw	a1,-996(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-1008(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-1004(s0)
	lw	a3,-1008(s0)
	lw	a4,-1004(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 234 10
	lw	a5,-76(s0)
	addi	a5,a5,184
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 234 24
	lw	a4,-304(s0)
	lw	a5,-300(s0)
	.loc 1 234 19
	not	a1,a4
	sw	a1,-1016(s0)
	not	a5,a5
	sw	a5,-1012(s0)
	.loc 1 234 35
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 234 29
	lw	a0,-1016(s0)
	lw	a1,-1012(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-1024(s0)
	and	a5,a1,a5
	sw	a5,-1020(s0)
	.loc 1 234 10
	lw	a5,-76(s0)
	addi	a5,a5,184
	.loc 1 234 15
	lw	a0,-1024(s0)
	lw	a1,-1020(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-1032(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-1028(s0)
	lw	a3,-1032(s0)
	lw	a4,-1028(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 235 10
	lw	a5,-76(s0)
	addi	a5,a5,192
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 235 24
	lw	a4,-336(s0)
	lw	a5,-332(s0)
	.loc 1 235 19
	not	a1,a4
	sw	a1,-1040(s0)
	not	a5,a5
	sw	a5,-1036(s0)
	.loc 1 235 35
	lw	a4,-328(s0)
	lw	a5,-324(s0)
	.loc 1 235 29
	lw	a0,-1040(s0)
	lw	a1,-1036(s0)
	mv	t0,a0
	and	t0,t0,a4
	sw	t0,-1048(s0)
	and	a5,a1,a5
	sw	a5,-1044(s0)
	.loc 1 235 10
	lw	a5,-76(s0)
	addi	a5,a5,192
	.loc 1 235 15
	lw	a0,-1048(s0)
	lw	a1,-1044(s0)
	mv	a4,a0
	xor	a4,a2,a4
	sw	a4,-1056(s0)
	mv	a4,a1
	xor	a4,a3,a4
	sw	a4,-1052(s0)
	lw	a3,-1056(s0)
	lw	a4,-1052(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 240 10
	lw	a5,-76(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 240 32
	lui	a5,%hi(iota_r_packed)
	addi	a4,a5,%lo(iota_r_packed)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 240 51
	sw	a5,-1064(s0)
	sw	zero,-1060(s0)
	lw	a5,-1064(s0)
	slli	a5,a5,25
	sw	a5,-1068(s0)
	sw	zero,-1072(s0)
	lw	a0,-1072(s0)
	lw	a1,-1068(s0)
	mv	a5,a0
	andi	a5,a5,0
	sw	a5,-1080(s0)
	li	a5,-2147483648
	mv	a4,a1
	and	a5,a4,a5
	sw	a5,-1076(s0)
	.loc 1 241 32
	lui	a5,%hi(iota_r_packed)
	addi	a4,a5,%lo(iota_r_packed)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 241 51
	sw	a5,-1088(s0)
	sw	zero,-1084(s0)
	lw	a4,-1088(s0)
	lw	a5,-1084(s0)
	mv	a1,a4
	srli	a1,a1,6
	sw	a1,-1092(s0)
	mv	a5,a4
	slli	a5,a5,26
	sw	a5,-1096(s0)
	li	a5,-2147483648
	lw	a0,-1096(s0)
	lw	a1,-1092(s0)
	mv	a4,a0
	and	a5,a4,a5
	sw	a5,-1104(s0)
	mv	a5,a1
	andi	a5,a5,0
	sw	a5,-1100(s0)
	.loc 1 240 57
	lw	a0,-1080(s0)
	lw	a1,-1076(s0)
	mv	t0,a0
	lw	a4,-1104(s0)
	lw	a5,-1100(s0)
	mv	s1,a4
	or	t0,t0,s1
	sw	t0,-1112(s0)
	or	a5,a1,a5
	sw	a5,-1108(s0)
	.loc 1 242 32
	lui	a5,%hi(iota_r_packed)
	addi	a4,a5,%lo(iota_r_packed)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 242 51
	sw	a5,-1120(s0)
	sw	zero,-1116(s0)
	lw	a0,-1120(s0)
	lw	a1,-1116(s0)
	mv	a5,a0
	srli	a5,a5,21
	mv	a4,a1
	slli	s11,a4,11
	add	s11,a5,s11
	mv	a5,a0
	slli	s10,a5,11
	li	a5,32768
	and	a5,s10,a5
	sw	a5,-1128(s0)
	andi	a5,s11,0
	sw	a5,-1124(s0)
	.loc 1 241 57
	lw	a0,-1112(s0)
	lw	a1,-1108(s0)
	mv	s1,a0
	lw	a4,-1128(s0)
	lw	a5,-1124(s0)
	mv	t0,a4
	or	s1,s1,t0
	sw	s1,-1136(s0)
	or	a5,a1,a5
	sw	a5,-1132(s0)
	.loc 1 243 32
	lui	a5,%hi(iota_r_packed)
	addi	a4,a5,%lo(iota_r_packed)
	lw	a5,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 243 40
	sw	a5,-1144(s0)
	sw	zero,-1140(s0)
	lw	a4,-1144(s0)
	lw	a5,-1140(s0)
	mv	a1,a4
	andi	a1,a1,143
	sw	a1,-1152(s0)
	andi	a5,a5,0
	sw	a5,-1148(s0)
	.loc 1 242 57
	lw	a0,-1136(s0)
	lw	a1,-1132(s0)
	mv	s1,a0
	lw	a4,-1152(s0)
	lw	a5,-1148(s0)
	mv	t0,a4
	or	s1,s1,t0
	sw	s1,-1160(s0)
	or	a5,a1,a5
	sw	a5,-1156(s0)
	.loc 1 240 14
	lw	a4,-1160(s0)
	lw	a5,-1156(s0)
	mv	a1,a4
	xor	a1,a2,a1
	sw	a1,-1168(s0)
	xor	a5,a3,a5
	sw	a5,-1164(s0)
	lw	a5,-76(s0)
	lw	a3,-1168(s0)
	lw	a4,-1164(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
.LBE6:
	.loc 1 107 42 discriminator 2
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L2:
	.loc 1 107 31 discriminator 1
	lw	a4,-72(s0)
	li	a5,23
	ble	a4,a5,.L25
.LBE5:
	.loc 1 245 1
	nop
	nop
	lw	ra,1164(sp)
	.cfi_restore 1
	lw	s0,1160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1168
	lw	s1,1156(sp)
	.cfi_restore 9
	lw	s2,1152(sp)
	.cfi_restore 18
	lw	s3,1148(sp)
	.cfi_restore 19
	lw	s4,1144(sp)
	.cfi_restore 20
	lw	s5,1140(sp)
	.cfi_restore 21
	lw	s6,1136(sp)
	.cfi_restore 22
	lw	s7,1132(sp)
	.cfi_restore 23
	lw	s8,1128(sp)
	.cfi_restore 24
	lw	s9,1124(sp)
	.cfi_restore 25
	lw	s10,1120(sp)
	.cfi_restore 26
	lw	s11,1116(sp)
	.cfi_restore 27
	addi	sp,sp,1168
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	keccak_f1600, .-keccak_f1600
	.section	.text.mbedtls_sha3_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_init
	.type	mbedtls_sha3_init, @function
mbedtls_sha3_init:
.LFB16:
	.loc 1 248 1
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
	.loc 1 249 5
	li	a2,208
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 250 1
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
.LFE16:
	.size	mbedtls_sha3_init, .-mbedtls_sha3_init
	.section	.text.mbedtls_sha3_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_free
	.type	mbedtls_sha3_free, @function
mbedtls_sha3_free:
.LFB17:
	.loc 1 253 1
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
	.loc 1 254 8
	lw	a5,-20(s0)
	beq	a5,zero,.L30
	.loc 1 258 5
	li	a1,208
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L27
.L30:
	.loc 1 255 9
	nop
.L27:
	.loc 1 259 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	mbedtls_sha3_free, .-mbedtls_sha3_free
	.section	.text.mbedtls_sha3_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_clone
	.type	mbedtls_sha3_clone, @function
mbedtls_sha3_clone:
.LFB18:
	.loc 1 263 1
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
	.loc 1 264 10
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,208
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 1 265 1
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
.LFE18:
	.size	mbedtls_sha3_clone, .-mbedtls_sha3_clone
	.section	.text.mbedtls_sha3_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_starts
	.type	mbedtls_sha3_starts, @function
mbedtls_sha3_starts:
.LFB19:
	.loc 1 271 1
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
	sb	a5,-21(s0)
	.loc 1 272 5
	lbu	a5,-21(s0)
	li	a4,4
	beq	a5,a4,.L33
	li	a4,4
	bgt	a5,a4,.L34
	li	a4,3
	beq	a5,a4,.L35
	li	a4,3
	bgt	a5,a4,.L34
	li	a4,1
	beq	a5,a4,.L36
	li	a4,2
	beq	a5,a4,.L37
	j	.L34
.L36:
	.loc 1 274 23
	lw	a5,-20(s0)
	li	a4,28
	sh	a4,204(a5)
	.loc 1 275 33
	lw	a5,-20(s0)
	li	a4,144
	sh	a4,206(a5)
	.loc 1 276 13
	j	.L38
.L37:
	.loc 1 278 23
	lw	a5,-20(s0)
	li	a4,32
	sh	a4,204(a5)
	.loc 1 279 33
	lw	a5,-20(s0)
	li	a4,136
	sh	a4,206(a5)
	.loc 1 280 13
	j	.L38
.L35:
	.loc 1 282 23
	lw	a5,-20(s0)
	li	a4,48
	sh	a4,204(a5)
	.loc 1 283 33
	lw	a5,-20(s0)
	li	a4,104
	sh	a4,206(a5)
	.loc 1 284 13
	j	.L38
.L33:
	.loc 1 286 23
	lw	a5,-20(s0)
	li	a4,64
	sh	a4,204(a5)
	.loc 1 287 33
	lw	a5,-20(s0)
	li	a4,72
	sh	a4,206(a5)
	.loc 1 288 13
	j	.L38
.L34:
	.loc 1 290 20
	li	a5,-118
	j	.L39
.L38:
	.loc 1 293 15
	lw	a5,-20(s0)
	.loc 1 293 5
	li	a2,200
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 294 16
	lw	a5,-20(s0)
	sw	zero,200(a5)
	.loc 1 296 12
	li	a5,0
.L39:
	.loc 1 297 1
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
.LFE19:
	.size	mbedtls_sha3_starts, .-mbedtls_sha3_starts
	.section	.text.mbedtls_sha3_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_update
	.type	mbedtls_sha3_update, @function
mbedtls_sha3_update:
.LFB20:
	.loc 1 305 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s2,84(sp)
	sw	s3,80(sp)
	sw	s4,76(sp)
	sw	s5,72(sp)
	sw	s6,68(sp)
	sw	s7,64(sp)
	sw	s8,60(sp)
	sw	s9,56(sp)
	sw	s10,52(sp)
	sw	s11,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	.loc 1 306 8
	lw	a2,-92(s0)
	li	a3,7
	bleu	a2,a3,.L53
.LBB32:
	.loc 1 308 35
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 308 43
	andi	a3,a3,7
	.loc 1 308 29
	li	a2,8
	sub	a3,a2,a3
	.loc 1 308 13
	sw	a3,-52(s0)
	.loc 1 309 12
	lw	a3,-52(s0)
	beq	a3,zero,.L47
	.loc 1 310 13
	j	.L43
.L46:
	.loc 1 311 74
	lw	a3,-88(s0)
	addi	a2,a3,1
	sw	a2,-88(s0)
	.loc 1 311 68
	lbu	a3,0(a3)
	.loc 1 311 56
	mv	a6,a3
	li	a7,0
	.loc 1 311 88
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 311 104
	slli	a3,a3,3
	andi	a3,a3,56
	.loc 1 311 79
	addi	a2,a3,-32
	blt	a2,zero,.L44
	sll	a5,a6,a2
	li	a4,0
	j	.L45
.L44:
	srli	a1,a6,1
	li	a2,31
	sub	a2,a2,a3
	srl	a2,a1,a2
	sll	a5,a7,a3
	add	a5,a2,a5
	sll	a4,a6,a3
.L45:
	.loc 1 311 37
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 311 32
	srli	a3,a3,3
	lw	a2,-84(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	.loc 1 311 37
	lw	a1,-84(s0)
	lw	a1,200(a1)
	.loc 1 311 32
	srli	a1,a1,3
	.loc 1 311 52
	xor	t1,a4,a2
	xor	t2,a5,a3
	lw	a2,-84(s0)
	slli	a3,a1,3
	add	a3,a2,a3
	sw	t1,0(a3)
	sw	t2,4(a3)
	.loc 1 312 21
	lw	a3,-92(s0)
	addi	a3,a3,-1
	sw	a3,-92(s0)
	.loc 1 313 20
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 313 27
	addi	a2,a3,1
	lw	a3,-84(s0)
	sw	a2,200(a3)
	.loc 1 310 48 discriminator 2
	lw	a3,-52(s0)
	addi	a3,a3,-1
	sw	a3,-52(s0)
.L43:
	.loc 1 310 32 discriminator 1
	lw	a3,-52(s0)
	bgt	a3,zero,.L46
	.loc 1 315 34
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 315 47
	lw	a4,-84(s0)
	lhu	a4,206(a4)
	.loc 1 315 42
	remu	a4,a5,a4
	.loc 1 315 29
	lw	a5,-84(s0)
	sw	a4,200(a5)
	.loc 1 315 21
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 315 16
	bne	a5,zero,.L47
	.loc 1 316 17
	lw	a0,-84(s0)
	call	keccak_f1600
	.loc 1 321 15
	j	.L47
.L52:
	lw	a5,-88(s0)
	sw	a5,-72(s0)
.LBB33:
.LBB34:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 2 226 33
	lw	a5,-72(s0)
	sw	a5,-68(s0)
	.loc 2 227 7
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	lbu	a1,1(a5)
	slli	a1,a1,8
	or	a4,a1,a4
	lbu	a1,2(a5)
	slli	a1,a1,16
	or	a4,a1,a4
	lbu	a1,3(a5)
	slli	a1,a1,24
	or	a4,a1,a4
	mv	a2,a4
	lbu	a4,4(a5)
	lbu	a1,5(a5)
	slli	a1,a1,8
	or	a4,a1,a4
	lbu	a1,6(a5)
	slli	a1,a1,16
	or	a4,a1,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a3,a5
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	.loc 2 231 12
	lw	a4,-64(s0)
	lw	a5,-60(s0)
.LBE34:
.LBE33:
	.loc 1 322 193 discriminator 1
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 322 209 discriminator 1
	slli	a3,a3,3
	andi	a3,a3,56
	.loc 1 322 184 discriminator 1
	addi	a2,a3,-32
	blt	a2,zero,.L49
	sll	s5,a4,a2
	li	s4,0
	j	.L50
.L49:
	srli	a1,a4,1
	li	a2,31
	sub	a2,a2,a3
	srl	a2,a1,a2
	sll	s5,a5,a3
	add	s5,a2,s5
	sll	s4,a4,a3
.L50:
	.loc 1 322 33 discriminator 1
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 322 28 discriminator 1
	srli	a5,a5,3
	lw	a4,-84(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 322 33 discriminator 1
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 322 28 discriminator 1
	srli	a3,a3,3
	.loc 1 322 48 discriminator 1
	xor	s10,s4,a4
	xor	s11,s5,a5
	lw	a4,-84(s0)
	slli	a5,a3,3
	add	a5,a4,a5
	sw	s10,0(a5)
	sw	s11,4(a5)
	.loc 1 323 19
	lw	a5,-88(s0)
	addi	a5,a5,8
	sw	a5,-88(s0)
	.loc 1 324 18
	lw	a5,-92(s0)
	addi	a5,a5,-8
	sw	a5,-92(s0)
	.loc 1 325 35
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 325 43
	addi	a5,a5,8
	.loc 1 325 53
	lw	a4,-84(s0)
	lhu	a4,206(a4)
	.loc 1 325 48
	remu	a4,a5,a4
	.loc 1 325 29
	lw	a5,-84(s0)
	sw	a4,200(a5)
	.loc 1 325 21
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 325 16
	bne	a5,zero,.L47
	.loc 1 326 17
	lw	a0,-84(s0)
	call	keccak_f1600
.L47:
	.loc 1 321 21
	lw	a4,-92(s0)
	li	a5,7
	bgtu	a4,a5,.L52
.LBE32:
	.loc 1 332 11
	j	.L53
.L57:
	.loc 1 333 66
	lw	a5,-88(s0)
	addi	a4,a5,1
	sw	a4,-88(s0)
	.loc 1 333 60
	lbu	a5,0(a5)
	.loc 1 333 48
	mv	s6,a5
	li	s7,0
	.loc 1 333 80
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 333 96
	slli	a5,a5,3
	andi	a5,a5,56
	.loc 1 333 71
	addi	a4,a5,-32
	blt	a4,zero,.L54
	sll	s3,s6,a4
	li	s2,0
	j	.L55
.L54:
	srli	a3,s6,1
	li	a4,31
	sub	a4,a4,a5
	srl	a4,a3,a4
	sll	s3,s7,a5
	add	s3,a4,s3
	sll	s2,s6,a5
.L55:
	.loc 1 333 29
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 333 24
	srli	a5,a5,3
	lw	a4,-84(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 333 29
	lw	a3,-84(s0)
	lw	a3,200(a3)
	.loc 1 333 24
	srli	a3,a3,3
	.loc 1 333 44
	xor	s8,s2,a4
	xor	s9,s3,a5
	lw	a4,-84(s0)
	slli	a5,a3,3
	add	a5,a4,a5
	sw	s8,0(a5)
	sw	s9,4(a5)
	.loc 1 334 31
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 334 39
	addi	a5,a5,1
	.loc 1 334 49
	lw	a4,-84(s0)
	lhu	a4,206(a4)
	.loc 1 334 44
	remu	a4,a5,a4
	.loc 1 334 25
	lw	a5,-84(s0)
	sw	a4,200(a5)
	.loc 1 334 17
	lw	a5,-84(s0)
	lw	a5,200(a5)
	.loc 1 334 12
	bne	a5,zero,.L53
	.loc 1 335 13
	lw	a0,-84(s0)
	call	keccak_f1600
.L53:
	.loc 1 332 16
	lw	a5,-92(s0)
	addi	a4,a5,-1
	sw	a4,-92(s0)
	.loc 1 332 19
	bne	a5,zero,.L57
	.loc 1 339 12
	li	a5,0
	.loc 1 340 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s2,84(sp)
	.cfi_restore 18
	lw	s3,80(sp)
	.cfi_restore 19
	lw	s4,76(sp)
	.cfi_restore 20
	lw	s5,72(sp)
	.cfi_restore 21
	lw	s6,68(sp)
	.cfi_restore 22
	lw	s7,64(sp)
	.cfi_restore 23
	lw	s8,60(sp)
	.cfi_restore 24
	lw	s9,56(sp)
	.cfi_restore 25
	lw	s10,52(sp)
	.cfi_restore 26
	lw	s11,48(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	mbedtls_sha3_update, .-mbedtls_sha3_update
	.section	.text.mbedtls_sha3_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_finish
	.type	mbedtls_sha3_finish, @function
mbedtls_sha3_finish:
.LFB21:
	.loc 1 344 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 345 9
	li	a3,-110
	sw	a3,-20(s0)
	.loc 1 348 12
	lw	a3,-36(s0)
	lhu	a3,204(a3)
	.loc 1 348 8
	beq	a3,zero,.L60
	.loc 1 349 16
	lw	a3,-36(s0)
	lhu	a3,204(a3)
	mv	a2,a3
	.loc 1 349 12
	lw	a3,-44(s0)
	bgeu	a3,a2,.L61
	.loc 1 350 17
	li	a5,-118
	sw	a5,-20(s0)
	.loc 1 351 13
	j	.L62
.L61:
	.loc 1 353 19
	lw	a3,-36(s0)
	lhu	a3,204(a3)
	.loc 1 353 14
	sw	a3,-44(s0)
.L60:
	.loc 1 356 25
	lw	a3,-36(s0)
	lw	a3,200(a3)
	.loc 1 356 20
	srli	a3,a3,3
	lw	a2,-36(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	.loc 1 356 71
	lw	a1,-36(s0)
	lw	a1,200(a1)
	.loc 1 356 87
	slli	a1,a1,3
	andi	a1,a1,56
	.loc 1 356 62
	addi	a0,a1,-32
	blt	a0,zero,.L63
	li	a1,6
	sll	a7,a1,a0
	li	a6,0
	j	.L64
.L63:
	li	a0,31
	sub	a0,a0,a1
	li	t5,3
	srl	a0,t5,a0
	mv	a7,a0
	li	a0,6
	sll	a6,a0,a1
.L64:
	.loc 1 356 25
	lw	a1,-36(s0)
	lw	a1,200(a1)
	.loc 1 356 20
	srli	a1,a1,3
	.loc 1 356 40
	xor	t3,a2,a6
	xor	t4,a3,a7
	lw	a2,-36(s0)
	slli	a3,a1,3
	add	a3,a2,a3
	sw	t3,0(a3)
	sw	t4,4(a3)
	.loc 1 357 25
	lw	a3,-36(s0)
	lhu	a3,206(a3)
	.loc 1 357 20
	addi	a3,a3,-1
	srai	a3,a3,3
	lw	a2,-36(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	.loc 1 357 85
	lw	a1,-36(s0)
	lhu	a1,206(a1)
	.loc 1 357 102
	addi	a1,a1,-1
	.loc 1 357 114
	slli	a1,a1,3
	andi	a1,a1,56
	.loc 1 357 76
	addi	a0,a1,-32
	blt	a0,zero,.L65
	li	a1,128
	sll	a5,a1,a0
	li	a4,0
	j	.L66
.L65:
	li	a0,31
	sub	a0,a0,a1
	li	a6,64
	srl	a0,a6,a0
	mv	a5,a0
	li	a0,128
	sll	a4,a0,a1
.L66:
	.loc 1 357 25
	lw	a1,-36(s0)
	lhu	a1,206(a1)
	.loc 1 357 20
	addi	a1,a1,-1
	srai	a1,a1,3
	.loc 1 357 53
	xor	t1,a2,a4
	xor	t2,a3,a5
	lw	a4,-36(s0)
	slli	a5,a1,3
	add	a5,a4,a5
	sw	t1,0(a5)
	sw	t2,4(a5)
	.loc 1 358 5
	lw	a0,-36(s0)
	call	keccak_f1600
	.loc 1 359 16
	lw	a5,-36(s0)
	sw	zero,200(a5)
	.loc 1 361 11
	j	.L67
.L71:
	.loc 1 362 48
	lw	a5,-36(s0)
	lw	a5,200(a5)
	.loc 1 362 57
	srli	a5,a5,3
	.loc 1 362 43
	lw	a4,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 362 72
	lw	a3,-36(s0)
	lw	a3,200(a3)
	.loc 1 362 88
	slli	a3,a3,3
	andi	a3,a3,56
	.loc 1 362 63
	addi	a2,a3,-32
	blt	a2,zero,.L68
	srl	s2,a5,a2
	li	s3,0
	j	.L69
.L68:
	slli	a1,a5,1
	li	a2,31
	sub	a2,a2,a3
	sll	a2,a1,a2
	srl	s2,a4,a3
	add	s2,a2,s2
	srl	s3,a5,a3
.L69:
	.loc 1 362 16
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 362 22
	andi	a4,s2,0xff
	.loc 1 362 19
	sb	a4,0(a5)
	.loc 1 364 31
	lw	a5,-36(s0)
	lw	a5,200(a5)
	.loc 1 364 39
	addi	a5,a5,1
	.loc 1 364 49
	lw	a4,-36(s0)
	lhu	a4,206(a4)
	.loc 1 364 44
	remu	a4,a5,a4
	.loc 1 364 25
	lw	a5,-36(s0)
	sw	a4,200(a5)
	.loc 1 364 17
	lw	a5,-36(s0)
	lw	a5,200(a5)
	.loc 1 364 12
	bne	a5,zero,.L67
	.loc 1 365 13
	lw	a0,-36(s0)
	call	keccak_f1600
.L67:
	.loc 1 361 16
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 361 19
	bne	a5,zero,.L71
	.loc 1 369 9
	sw	zero,-20(s0)
.L62:
	.loc 1 372 5
	lw	a0,-36(s0)
	call	mbedtls_sha3_free
	.loc 1 373 12
	lw	a5,-20(s0)
	.loc 1 374 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	mbedtls_sha3_finish, .-mbedtls_sha3_finish
	.section	.text.mbedtls_sha3,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3
	.type	mbedtls_sha3, @function
mbedtls_sha3:
.LFB22:
	.loc 1 381 1
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	ra,268(sp)
	sw	s0,264(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-248(s0)
	sw	a2,-252(s0)
	sw	a3,-256(s0)
	sw	a4,-260(s0)
	sb	a5,-241(s0)
	.loc 1 382 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 385 5
	addi	a5,s0,-232
	mv	a0,a5
	call	mbedtls_sha3_init
	.loc 1 388 16
	lbu	a4,-241(s0)
	addi	a5,s0,-232
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_sha3_starts
	sw	a0,-20(s0)
	.loc 1 388 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	.loc 1 392 16
	addi	a5,s0,-232
	lw	a2,-252(s0)
	lw	a1,-248(s0)
	mv	a0,a5
	call	mbedtls_sha3_update
	sw	a0,-20(s0)
	.loc 1 392 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L79
	.loc 1 396 16
	addi	a5,s0,-232
	lw	a2,-260(s0)
	lw	a1,-256(s0)
	mv	a0,a5
	call	mbedtls_sha3_finish
	sw	a0,-20(s0)
	.loc 1 400 1
	j	.L75
.L78:
	.loc 1 389 9
	nop
	j	.L75
.L79:
	.loc 1 393 9
	nop
.L75:
	.loc 1 401 5
	addi	a5,s0,-232
	mv	a0,a5
	call	mbedtls_sha3_free
	.loc 1 403 12
	lw	a5,-20(s0)
	.loc 1 404 1
	mv	a0,a5
	lw	ra,268(sp)
	.cfi_restore 1
	lw	s0,264(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	mbedtls_sha3, .-mbedtls_sha3
	.section	.srodata.test_data,"a"
	.align	2
	.type	test_data, @object
	.size	test_data, 8
test_data:
	.string	""
	.zero	3
	.string	"abc"
	.section	.srodata.test_data_len,"a"
	.align	2
	.type	test_data_len, @object
	.size	test_data_len, 8
test_data_len:
	.word	0
	.word	3
	.section	.rodata.test_hash_sha3_224,"a"
	.align	2
	.type	test_hash_sha3_224, @object
	.size	test_hash_sha3_224, 56
test_hash_sha3_224:
	.base64	"a04DQjZn27c7bhVFTw6xq9RZf5obB44/W1prxw=="
	.base64	"5kKCTD+M8krQkjTufTx2b8mjpRaNDJStc7Rv3w=="
	.section	.rodata.test_hash_sha3_256,"a"
	.align	2
	.type	test_hash_sha3_256, @object
	.size	test_hash_sha3_256, 64
test_hash_sha3_256:
	.base64	"p//G+L8e12ZRwUdWoGHWYvWA/03kO0n6gtgKS4D4Q0o="
	.base64	"Ophdp0/iJbIEXBcta9OQvYVfCG4+nVJbRr/iRRFDFTI="
	.section	.rodata.test_hash_sha3_384,"a"
	.align	2
	.type	test_hash_sha3_384, @object
	.size	test_hash_sha3_384, 96
test_hash_sha3_384:
	.base64	"DGOnW4ReT30BEH2FLkwkhcUaUKqqlPxhmV5xu+6YOirDcTgxJkrbR/tr0eBY1fAE"
	.base64	"7AFJgohRb8kmRZ9Y4satjfm0c8sPwIwlltp88OSb5LKY2IzqknrH9Tnx7fIoN20l"
	.section	.rodata.test_hash_sha3_512,"a"
	.align	2
	.type	test_hash_sha3_512, @object
	.size	test_hash_sha3_512, 128
test_hash_sha3_512:
	.base64	"pp9zzKI6msXItWfcGFp1bpfJghZP4lhZ4NHcwUdcgKYVshI68fX5TBHj6UAsOsVY9QAZnZW20+MBdYWGKB3NJg=="
	.base64	"t1GFCxpXFopWk82SS2sJbgj2IYJ0RPcNiE9dAkDScS4Q4RbpGSrzyRp+xXZH45NAVzQLTPQI1aVlkvgnTuxT8A=="
	.section	.rodata.long_kat_hash_sha3_224,"a"
	.align	2
	.type	long_kat_hash_sha3_224, @object
	.size	long_kat_hash_sha3_224, 28
long_kat_hash_sha3_224:
	.base64	"1pM1uTMlGS5RapEubRmhXLUcbtXBUkPnp/1lPA=="
	.section	.rodata.long_kat_hash_sha3_256,"a"
	.align	2
	.type	long_kat_hash_sha3_256, @object
	.size	long_kat_hash_sha3_256, 32
long_kat_hash_sha3_256:
	.base64	"XIh1rkdKNjS6T9VeyFv/1mHzKsp1xtaZ0M3LbBFYkcE="
	.section	.rodata.long_kat_hash_sha3_384,"a"
	.align	2
	.type	long_kat_hash_sha3_384, @object
	.size	long_kat_hash_sha3_384, 48
long_kat_hash_sha3_384:
	.base64	"7uniTXjBhVM3mDRR35fIrZ7t8lbGM0+OlI0lLV4OdoR6oHdN25CoQhkNLFWLS4NA"
	.section	.rodata.long_kat_hash_sha3_512,"a"
	.align	2
	.type	long_kat_hash_sha3_512, @object
	.size	long_kat_hash_sha3_512, 64
long_kat_hash_sha3_512:
	.base64	"PDqHbaFANKtgYnwHe7mPfhIKKlNwIS3/szhaGNTziFntMR0KnVFBzpzFxm7mibJmqKoYrOgoKg4NtZbJCwp7hw=="
	.section	.rodata
	.align	2
.LC0:
	.string	"  %s test %d error code: %d\n"
	.align	2
.LC1:
	.string	"  %s test %d failed\n"
	.align	2
.LC2:
	.string	"  %s test %d passed\n"
	.section	.text.mbedtls_sha3_kat_test,"ax",@progbits
	.align	1
	.type	mbedtls_sha3_kat_test, @function
mbedtls_sha3_kat_test:
.LFB23:
	.loc 1 540 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	mv	a5,a2
	sw	a3,-112(s0)
	sb	a5,-105(s0)
	.loc 1 545 36
	lw	a5,-112(s0)
	slli	a4,a5,2
	lui	a5,%hi(test_data)
	addi	a5,a5,%lo(test_data)
	add	a1,a4,a5
	.loc 1 545 61
	lui	a5,%hi(test_data_len)
	addi	a4,a5,%lo(test_data_len)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	.loc 1 544 14
	addi	a3,s0,-84
	lbu	a5,-105(s0)
	li	a4,64
	mv	a0,a5
	call	mbedtls_sha3
	sw	a0,-20(s0)
	.loc 1 547 8
	lw	a5,-20(s0)
	beq	a5,zero,.L81
	.loc 1 548 12
	lw	a5,-100(s0)
	beq	a5,zero,.L82
	.loc 1 549 13
	lw	a3,-20(s0)
	lw	a2,-112(s0)
	lw	a1,-104(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L82:
	.loc 1 553 16
	lw	a5,-20(s0)
	j	.L93
.L81:
	.loc 1 556 5
	lbu	a5,-105(s0)
	li	a4,4
	beq	a5,a4,.L84
	li	a4,4
	bgt	a5,a4,.L94
	li	a4,3
	beq	a5,a4,.L86
	li	a4,3
	bgt	a5,a4,.L94
	li	a4,1
	beq	a5,a4,.L87
	li	a4,2
	beq	a5,a4,.L88
	.loc 1 570 13
	j	.L94
.L87:
	.loc 1 558 53
	lw	a4,-112(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(test_hash_sha3_224)
	addi	a4,a4,%lo(test_hash_sha3_224)
	add	a4,a5,a4
	.loc 1 558 22
	addi	a5,s0,-84
	li	a2,28
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 559 13
	j	.L89
.L88:
	.loc 1 561 53
	lw	a5,-112(s0)
	slli	a4,a5,5
	lui	a5,%hi(test_hash_sha3_256)
	addi	a5,a5,%lo(test_hash_sha3_256)
	add	a4,a4,a5
	.loc 1 561 22
	addi	a5,s0,-84
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 562 13
	j	.L89
.L86:
	.loc 1 564 53
	lw	a4,-112(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,4
	lui	a4,%hi(test_hash_sha3_384)
	addi	a4,a4,%lo(test_hash_sha3_384)
	add	a4,a5,a4
	.loc 1 564 22
	addi	a5,s0,-84
	li	a2,48
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 565 13
	j	.L89
.L84:
	.loc 1 567 53
	lw	a5,-112(s0)
	slli	a4,a5,6
	lui	a5,%hi(test_hash_sha3_512)
	addi	a5,a5,%lo(test_hash_sha3_512)
	add	a4,a4,a5
	.loc 1 567 22
	addi	a5,s0,-84
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 568 13
	j	.L89
.L94:
	.loc 1 570 13
	nop
.L89:
	.loc 1 573 8
	lw	a5,-20(s0)
	beq	a5,zero,.L90
	.loc 1 574 12
	lw	a5,-100(s0)
	beq	a5,zero,.L91
	.loc 1 575 13
	lw	a2,-112(s0)
	lw	a1,-104(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L91:
	.loc 1 578 16
	li	a5,-1
	j	.L93
.L90:
	.loc 1 581 8
	lw	a5,-100(s0)
	beq	a5,zero,.L92
	.loc 1 582 9
	lw	a2,-112(s0)
	lw	a1,-104(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L92:
	.loc 1 585 12
	li	a5,0
.L93:
	.loc 1 586 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	mbedtls_sha3_kat_test, .-mbedtls_sha3_kat_test
	.section	.rodata
	.align	2
.LC3:
	.string	"  %s long KAT test "
	.align	2
.LC4:
	.string	"setup failed\n "
	.align	2
.LC5:
	.string	"update error code: %i\n"
	.align	2
.LC6:
	.string	"finish error code: %d\n"
	.align	2
.LC7:
	.string	"failed\n"
	.align	2
.LC8:
	.string	"passed\n"
	.section	.text.mbedtls_sha3_long_kat_test,"ax",@progbits
	.align	1
	.type	mbedtls_sha3_long_kat_test, @function
mbedtls_sha3_long_kat_test:
.LFB24:
	.loc 1 591 1
	.cfi_startproc
	addi	sp,sp,-1312
	.cfi_def_cfa_offset 1312
	sw	ra,1308(sp)
	sw	s0,1304(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1312
	.cfi_def_cfa 8, 0
	sw	a0,-1300(s0)
	sw	a1,-1304(s0)
	mv	a5,a2
	sb	a5,-1305(s0)
	.loc 1 595 9
	sw	zero,-20(s0)
	.loc 1 597 5
	addi	a5,s0,-1232
	li	a2,1000
	li	a1,97
	mv	a0,a5
	call	memset
	.loc 1 599 8
	lw	a5,-1300(s0)
	beq	a5,zero,.L96
	.loc 1 600 9
	lw	a1,-1304(s0)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L96:
	.loc 1 603 5
	addi	a5,s0,-232
	mv	a0,a5
	call	mbedtls_sha3_init
	.loc 1 605 14
	lbu	a4,-1305(s0)
	addi	a5,s0,-232
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_sha3_starts
	sw	a0,-20(s0)
	.loc 1 606 8
	lw	a5,-20(s0)
	beq	a5,zero,.L97
	.loc 1 607 12
	lw	a5,-1300(s0)
	beq	a5,zero,.L97
	.loc 1 608 13
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L97:
.LBB35:
	.loc 1 613 14
	sw	zero,-24(s0)
	.loc 1 613 5
	j	.L98
.L102:
	.loc 1 614 18
	addi	a4,s0,-1232
	addi	a5,s0,-232
	li	a2,1000
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_sha3_update
	sw	a0,-20(s0)
	.loc 1 615 12
	lw	a5,-20(s0)
	beq	a5,zero,.L99
	.loc 1 616 16
	lw	a5,-1300(s0)
	beq	a5,zero,.L113
	.loc 1 617 17
	lw	a1,-20(s0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 620 13
	j	.L113
.L99:
	.loc 1 613 32 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L98:
	.loc 1 613 23 discriminator 1
	lw	a4,-24(s0)
	li	a5,999
	ble	a4,a5,.L102
.LBE35:
	.loc 1 624 14
	addi	a4,s0,-1296
	addi	a5,s0,-232
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_sha3_finish
	sw	a0,-20(s0)
	.loc 1 625 8
	lw	a5,-20(s0)
	beq	a5,zero,.L103
	.loc 1 626 12
	lw	a5,-1300(s0)
	beq	a5,zero,.L114
	.loc 1 627 13
	lw	a1,-20(s0)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 630 9
	j	.L114
.L103:
	.loc 1 633 5
	lbu	a5,-1305(s0)
	li	a4,4
	beq	a5,a4,.L105
	li	a4,4
	bgt	a5,a4,.L115
	li	a4,3
	beq	a5,a4,.L107
	li	a4,3
	bgt	a5,a4,.L115
	li	a4,1
	beq	a5,a4,.L108
	li	a4,2
	beq	a5,a4,.L109
	.loc 1 647 13
	j	.L115
.L108:
	.loc 1 635 22
	addi	a4,s0,-1296
	li	a2,28
	lui	a5,%hi(long_kat_hash_sha3_224)
	addi	a1,a5,%lo(long_kat_hash_sha3_224)
	mv	a0,a4
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 636 13
	j	.L110
.L109:
	.loc 1 638 22
	addi	a4,s0,-1296
	li	a2,32
	lui	a5,%hi(long_kat_hash_sha3_256)
	addi	a1,a5,%lo(long_kat_hash_sha3_256)
	mv	a0,a4
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 639 13
	j	.L110
.L107:
	.loc 1 641 22
	addi	a4,s0,-1296
	li	a2,48
	lui	a5,%hi(long_kat_hash_sha3_384)
	addi	a1,a5,%lo(long_kat_hash_sha3_384)
	mv	a0,a4
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 642 13
	j	.L110
.L105:
	.loc 1 644 22
	addi	a4,s0,-1296
	li	a2,64
	lui	a5,%hi(long_kat_hash_sha3_512)
	addi	a1,a5,%lo(long_kat_hash_sha3_512)
	mv	a0,a4
	call	memcmp
	sw	a0,-20(s0)
	.loc 1 645 13
	j	.L110
.L115:
	.loc 1 647 13
	nop
.L110:
	.loc 1 650 8
	lw	a5,-20(s0)
	beq	a5,zero,.L111
	.loc 1 651 12
	lw	a5,-1300(s0)
	beq	a5,zero,.L111
	.loc 1 652 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L111:
	.loc 1 656 8
	lw	a5,-1300(s0)
	beq	a5,zero,.L116
	.loc 1 657 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	j	.L101
.L113:
.LBB36:
	.loc 1 620 13
	nop
	j	.L101
.L114:
.LBE36:
	.loc 1 630 9
	nop
	j	.L101
.L116:
	.loc 1 660 1
	nop
.L101:
	.loc 1 661 5
	addi	a5,s0,-232
	mv	a0,a5
	call	mbedtls_sha3_free
	.loc 1 662 12
	lw	a5,-20(s0)
	.loc 1 663 1
	mv	a0,a5
	lw	ra,1308(sp)
	.cfi_restore 1
	lw	s0,1304(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1312
	addi	sp,sp,1312
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	mbedtls_sha3_long_kat_test, .-mbedtls_sha3_long_kat_test
	.section	.rodata
	.align	2
.LC9:
	.string	"SHA3-224"
	.align	2
.LC10:
	.string	"SHA3-256"
	.align	2
.LC11:
	.string	"SHA3-384"
	.align	2
.LC12:
	.string	"SHA3-512"
	.align	2
.LC13:
	.string	"\n"
	.section	.text.mbedtls_sha3_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_sha3_self_test
	.type	mbedtls_sha3_self_test, @function
mbedtls_sha3_self_test:
.LFB25:
	.loc 1 666 1
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
	.loc 1 670 12
	sw	zero,-20(s0)
	.loc 1 670 5
	j	.L118
.L124:
	.loc 1 671 18
	lw	a3,-20(s0)
	li	a2,1
	lui	a5,%hi(.LC9)
	addi	a1,a5,%lo(.LC9)
	lw	a0,-36(s0)
	call	mbedtls_sha3_kat_test
	mv	a5,a0
	.loc 1 671 12 discriminator 1
	beq	a5,zero,.L119
	.loc 1 673 20
	li	a5,1
	j	.L120
.L119:
	.loc 1 676 18
	lw	a3,-20(s0)
	li	a2,2
	lui	a5,%hi(.LC10)
	addi	a1,a5,%lo(.LC10)
	lw	a0,-36(s0)
	call	mbedtls_sha3_kat_test
	mv	a5,a0
	.loc 1 676 12 discriminator 1
	beq	a5,zero,.L121
	.loc 1 678 20
	li	a5,1
	j	.L120
.L121:
	.loc 1 681 18
	lw	a3,-20(s0)
	li	a2,3
	lui	a5,%hi(.LC11)
	addi	a1,a5,%lo(.LC11)
	lw	a0,-36(s0)
	call	mbedtls_sha3_kat_test
	mv	a5,a0
	.loc 1 681 12 discriminator 1
	beq	a5,zero,.L122
	.loc 1 683 20
	li	a5,1
	j	.L120
.L122:
	.loc 1 686 18
	lw	a3,-20(s0)
	li	a2,4
	lui	a5,%hi(.LC12)
	addi	a1,a5,%lo(.LC12)
	lw	a0,-36(s0)
	call	mbedtls_sha3_kat_test
	mv	a5,a0
	.loc 1 686 12 discriminator 1
	beq	a5,zero,.L123
	.loc 1 688 20
	li	a5,1
	j	.L120
.L123:
	.loc 1 670 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L118:
	.loc 1 670 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	ble	a4,a5,.L124
	.loc 1 693 14
	li	a2,1
	lui	a5,%hi(.LC9)
	addi	a1,a5,%lo(.LC9)
	lw	a0,-36(s0)
	call	mbedtls_sha3_long_kat_test
	mv	a5,a0
	.loc 1 693 8 discriminator 1
	beq	a5,zero,.L125
	.loc 1 695 16
	li	a5,1
	j	.L120
.L125:
	.loc 1 698 14
	li	a2,2
	lui	a5,%hi(.LC10)
	addi	a1,a5,%lo(.LC10)
	lw	a0,-36(s0)
	call	mbedtls_sha3_long_kat_test
	mv	a5,a0
	.loc 1 698 8 discriminator 1
	beq	a5,zero,.L126
	.loc 1 700 16
	li	a5,1
	j	.L120
.L126:
	.loc 1 703 14
	li	a2,3
	lui	a5,%hi(.LC11)
	addi	a1,a5,%lo(.LC11)
	lw	a0,-36(s0)
	call	mbedtls_sha3_long_kat_test
	mv	a5,a0
	.loc 1 703 8 discriminator 1
	beq	a5,zero,.L127
	.loc 1 705 16
	li	a5,1
	j	.L120
.L127:
	.loc 1 708 14
	li	a2,4
	lui	a5,%hi(.LC12)
	addi	a1,a5,%lo(.LC12)
	lw	a0,-36(s0)
	call	mbedtls_sha3_long_kat_test
	mv	a5,a0
	.loc 1 708 8 discriminator 1
	beq	a5,zero,.L128
	.loc 1 710 16
	li	a5,1
	j	.L120
.L128:
	.loc 1 713 8
	lw	a5,-36(s0)
	beq	a5,zero,.L129
	.loc 1 714 9
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
.L129:
	.loc 1 717 12
	li	a5,0
.L120:
	.loc 1 718 1
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
.LFE25:
	.size	mbedtls_sha3_self_test, .-mbedtls_sha3_self_test
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha3.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb74
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x4
	.4byte	0xab
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0xc
	.4byte	0xd1
	.uleb128 0x1e
	.4byte	0xd6
	.uleb128 0xc
	.4byte	0xe5
	.uleb128 0x1f
	.uleb128 0x16
	.byte	0x8
	.byte	0x2
	.byte	0x5c
	.4byte	0xfa
	.uleb128 0x20
	.string	"x"
	.byte	0x2
	.byte	0x5d
	.byte	0xe
	.4byte	0xbc
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x2
	.byte	0x5e
	.byte	0x1b
	.4byte	0xe6
	.uleb128 0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.byte	0x25
	.byte	0xe
	.4byte	0x133
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2b
	.byte	0x3
	.4byte	0x106
	.uleb128 0x16
	.byte	0xd0
	.byte	0x5
	.byte	0x32
	.4byte	0x174
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x33
	.4byte	0x174
	.byte	0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x34
	.4byte	0xab
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x35
	.4byte	0x9f
	.byte	0xcc
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x36
	.4byte	0x9f
	.byte	0xce
	.byte	0
	.uleb128 0x5
	.4byte	0xbc
	.4byte	0x184
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.byte	0x1
	.4byte	0x13f
	.uleb128 0x4
	.4byte	0x184
	.uleb128 0x5
	.4byte	0x9a
	.4byte	0x1a5
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	0x195
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x4c
	.byte	0x16
	.4byte	0x1a5
	.uleb128 0x5
	.byte	0x3
	.4byte	iota_r_packed
	.uleb128 0x5
	.4byte	0xb7
	.4byte	0x1cb
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	0x1bb
	.uleb128 0x1
	.string	"rho"
	.byte	0x56
	.byte	0x17
	.4byte	0x1cb
	.uleb128 0x5
	.byte	0x3
	.4byte	rho
	.uleb128 0x1
	.string	"pi"
	.byte	0x5a
	.byte	0x17
	.4byte	0x1cb
	.uleb128 0x5
	.byte	0x3
	.4byte	pi
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x207
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x1f1
	.uleb128 0x6
	.4byte	.LASF31
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x207
	.uleb128 0x5
	.byte	0x3
	.4byte	test_data
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x22e
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0x21e
	.uleb128 0x6
	.4byte	.LASF32
	.2byte	0x1a0
	.byte	0x15
	.4byte	0x22e
	.uleb128 0x5
	.byte	0x3
	.4byte	test_data_len
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x25b
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.4byte	0x245
	.uleb128 0x6
	.4byte	.LASF33
	.2byte	0x1a6
	.byte	0x1c
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	test_hash_sha3_224
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x288
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x272
	.uleb128 0x6
	.4byte	.LASF34
	.2byte	0x1b6
	.byte	0x1c
	.4byte	0x288
	.uleb128 0x5
	.byte	0x3
	.4byte	test_hash_sha3_256
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x2b5
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.4byte	0x29f
	.uleb128 0x6
	.4byte	.LASF35
	.2byte	0x1c6
	.byte	0x1c
	.4byte	0x2b5
	.uleb128 0x5
	.byte	0x3
	.4byte	test_hash_sha3_384
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	0x2cc
	.uleb128 0x6
	.4byte	.LASF36
	.2byte	0x1da
	.byte	0x1c
	.4byte	0x2e2
	.uleb128 0x5
	.byte	0x3
	.4byte	test_hash_sha3_512
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x309
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.4byte	0x2f9
	.uleb128 0x6
	.4byte	.LASF37
	.2byte	0x1f2
	.byte	0x1c
	.4byte	0x309
	.uleb128 0x5
	.byte	0x3
	.4byte	long_kat_hash_sha3_224
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x330
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x320
	.uleb128 0x6
	.4byte	.LASF38
	.2byte	0x1fa
	.byte	0x1c
	.4byte	0x330
	.uleb128 0x5
	.byte	0x3
	.4byte	long_kat_hash_sha3_256
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x357
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.4byte	0x347
	.uleb128 0x6
	.4byte	.LASF39
	.2byte	0x202
	.byte	0x1c
	.4byte	0x357
	.uleb128 0x5
	.byte	0x3
	.4byte	long_kat_hash_sha3_384
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	0x36e
	.uleb128 0x6
	.4byte	.LASF40
	.2byte	0x20c
	.byte	0x1c
	.4byte	0x37e
	.uleb128 0x5
	.byte	0x3
	.4byte	long_kat_hash_sha3_512
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x3b5
	.uleb128 0x9
	.4byte	0xe0
	.uleb128 0x9
	.4byte	0xe0
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x3cc
	.uleb128 0x9
	.4byte	0xdb
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x8
	.byte	0x9f
	.byte	0x6
	.4byte	0x3e3
	.uleb128 0x9
	.4byte	0xc8
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0xc8
	.4byte	0x403
	.uleb128 0x9
	.4byte	0xc8
	.uleb128 0x9
	.4byte	0x68
	.uleb128 0x9
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.2byte	0x299
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x439
	.uleb128 0x7
	.4byte	.LASF44
	.2byte	0x299
	.byte	0x20
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"i"
	.2byte	0x29b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF49
	.2byte	0x24c
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4df
	.uleb128 0x7
	.4byte	.LASF44
	.2byte	0x24c
	.byte	0x2b
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1300
	.uleb128 0x7
	.4byte	.LASF45
	.2byte	0x24d
	.byte	0x33
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.uleb128 0xa
	.string	"id"
	.2byte	0x24e
	.byte	0x37
	.4byte	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1305
	.uleb128 0xd
	.string	"ctx"
	.2byte	0x250
	.byte	0x1a
	.4byte	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x6
	.4byte	.LASF46
	.2byte	0x251
	.byte	0x13
	.4byte	0x4df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x6
	.4byte	.LASF47
	.2byte	0x252
	.byte	0x13
	.4byte	0x4f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x6
	.4byte	.LASF48
	.2byte	0x253
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF57
	.2byte	0x294
	.4byte	.L101
	.uleb128 0x24
	.4byte	.LLRL0
	.uleb128 0xd
	.string	"i"
	.2byte	0x265
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x32
	.4byte	0x4f0
	.uleb128 0x25
	.4byte	0x6f
	.2byte	0x3e7
	.byte	0
	.uleb128 0x5
	.4byte	0x32
	.4byte	0x500
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF50
	.2byte	0x218
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x578
	.uleb128 0x7
	.4byte	.LASF44
	.2byte	0x218
	.byte	0x26
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x7
	.4byte	.LASF45
	.2byte	0x219
	.byte	0x2e
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xa
	.string	"id"
	.2byte	0x21a
	.byte	0x32
	.4byte	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x7
	.4byte	.LASF51
	.2byte	0x21b
	.byte	0x26
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.4byte	.LASF47
	.2byte	0x21d
	.byte	0xd
	.4byte	0x578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.4byte	.LASF48
	.2byte	0x21e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x8e
	.4byte	0x588
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.2byte	0x17b
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61b
	.uleb128 0xa
	.string	"id"
	.2byte	0x17b
	.byte	0x22
	.4byte	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -241
	.uleb128 0x7
	.4byte	.LASF54
	.2byte	0x17b
	.byte	0x35
	.4byte	0x61b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x17c
	.byte	0x19
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0x17c
	.byte	0x28
	.4byte	0x620
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x7
	.4byte	.LASF27
	.2byte	0x17c
	.byte	0x37
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0xd
	.string	"ret"
	.2byte	0x17e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"ctx"
	.2byte	0x17f
	.byte	0x1a
	.4byte	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x14
	.4byte	.LASF58
	.2byte	0x190
	.4byte	.L75
	.byte	0
	.uleb128 0xc
	.4byte	0x9a
	.uleb128 0xc
	.4byte	0x8e
	.uleb128 0xf
	.4byte	.LASF59
	.2byte	0x156
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x686
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x156
	.byte	0x2f
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF56
	.2byte	0x157
	.byte	0x22
	.4byte	0x620
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF27
	.2byte	0x157
	.byte	0x31
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.2byte	0x159
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF58
	.2byte	0x173
	.4byte	.L62
	.byte	0
	.uleb128 0xc
	.4byte	0x184
	.uleb128 0xf
	.4byte	.LASF60
	.2byte	0x12e
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71a
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x12e
	.byte	0x2f
	.4byte	0x686
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.4byte	.LASF54
	.2byte	0x12f
	.byte	0x28
	.4byte	0x61b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x130
	.byte	0x20
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x11
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x6
	.4byte	.LASF61
	.2byte	0x134
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.4byte	0xb42
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.2byte	0x142
	.byte	0x88
	.uleb128 0x27
	.4byte	0xb53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.4byte	0xb5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	0xb66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.2byte	0x10e
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x751
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x10e
	.byte	0x2f
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"id"
	.2byte	0x10e
	.byte	0x44
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x28
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x787
	.uleb128 0xa
	.string	"dst"
	.2byte	0x105
	.byte	0x2f
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"src"
	.2byte	0x106
	.byte	0x35
	.4byte	0x787
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0xfc
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7af
	.uleb128 0x15
	.string	"ctx"
	.byte	0xfc
	.byte	0x2e
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0xf7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d2
	.uleb128 0x15
	.string	"ctx"
	.byte	0xf7
	.byte	0x2e
	.4byte	0x686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF70
	.byte	0x1
	.byte	0x65
	.byte	0xd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2d
	.uleb128 0x15
	.string	"ctx"
	.byte	0x65
	.byte	0x30
	.4byte	0x686
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x67
	.byte	0xe
	.4byte	0xb2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1
	.string	"s"
	.byte	0x68
	.byte	0xf
	.4byte	0xb3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.string	"i"
	.byte	0x69
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x6b
	.byte	0xe
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.string	"t"
	.byte	0x6c
	.byte	0x12
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"p"
	.byte	0xaa
	.byte	0x12
	.4byte	0xab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x876
	.uleb128 0x1
	.string	"r"
	.byte	0x90
	.byte	0x16
	.4byte	0xab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x2
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x893
	.uleb128 0x1
	.string	"tmp"
	.byte	0xab
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x8b0
	.uleb128 0x1
	.string	"tmp"
	.byte	0xab
	.byte	0x87
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x8cd
	.uleb128 0x1
	.string	"tmp"
	.byte	0xac
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x8ea
	.uleb128 0x1
	.string	"tmp"
	.byte	0xac
	.byte	0x97
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x907
	.uleb128 0x1
	.string	"tmp"
	.byte	0xae
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x2
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x924
	.uleb128 0x1
	.string	"tmp"
	.byte	0xae
	.byte	0x87
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x941
	.uleb128 0x1
	.string	"tmp"
	.byte	0xaf
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x2
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x95e
	.uleb128 0x1
	.string	"tmp"
	.byte	0xaf
	.byte	0x97
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x2
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x97b
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb1
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x2
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x998
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb1
	.byte	0x87
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x2
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x9b5
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb2
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x9d2
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb2
	.byte	0x97
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x2
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x9ef
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb4
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0xa0c
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb4
	.byte	0x87
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0xa29
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb5
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x2
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0xa46
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb5
	.byte	0x97
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0xa63
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb7
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x2
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xa80
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb7
	.byte	0x87
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x2
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0xa9d
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb8
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x2
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xaba
	.uleb128 0x1
	.string	"tmp"
	.byte	0xb8
	.byte	0x97
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x2
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0xad7
	.uleb128 0x1
	.string	"tmp"
	.byte	0xba
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x2
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xaf4
	.uleb128 0x1
	.string	"tmp"
	.byte	0xba
	.byte	0x87
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x2
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0xb11
	.uleb128 0x1
	.string	"tmp"
	.byte	0xbb
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x11
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x1
	.string	"tmp"
	.byte	0xbb
	.byte	0x97
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xbc
	.4byte	0xb3d
	.uleb128 0x3
	.4byte	0x6f
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0xbc
	.uleb128 0x2a
	.4byte	.LASF71
	.byte	0x2
	.byte	0xdb
	.byte	0x18
	.4byte	0xbc
	.byte	0x3
	.4byte	0xb72
	.uleb128 0x2b
	.string	"p"
	.byte	0x2
	.byte	0xdb
	.byte	0x41
	.4byte	0xe0
	.uleb128 0x1a
	.string	"r"
	.byte	0xdd
	.byte	0xe
	.4byte	0xbc
	.uleb128 0x1a
	.string	"p64"
	.byte	0xe2
	.byte	0x21
	.4byte	0xb72
	.byte	0
	.uleb128 0xc
	.4byte	0xfa
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
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.sleb128 1
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.sleb128 12
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
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
	.4byte	.LBB35
	.byte	0x4
	.uleb128 .LBB35-.LBB35
	.uleb128 .LBE35-.LBB35
	.byte	0x4
	.uleb128 .LBB36-.LBB35
	.uleb128 .LBE36-.LBB35
	.byte	0
.LLRL1:
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"printf"
.LASF40:
	.string	"long_kat_hash_sha3_512"
.LASF12:
	.string	"size_t"
.LASF16:
	.string	"uint64_t"
.LASF67:
	.string	"round"
.LASF51:
	.string	"test_num"
.LASF9:
	.string	"long long unsigned int"
.LASF38:
	.string	"long_kat_hash_sha3_256"
.LASF23:
	.string	"MBEDTLS_SHA3_512"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"test_hash_sha3_512"
.LASF25:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF34:
	.string	"test_hash_sha3_256"
.LASF21:
	.string	"MBEDTLS_SHA3_256"
.LASF14:
	.string	"uint16_t"
.LASF27:
	.string	"olen"
.LASF65:
	.string	"mbedtls_sha3_init"
.LASF63:
	.string	"mbedtls_sha3_clone"
.LASF18:
	.string	"mbedtls_uint64_unaligned_t"
.LASF64:
	.string	"mbedtls_sha3_free"
.LASF39:
	.string	"long_kat_hash_sha3_384"
.LASF24:
	.string	"mbedtls_sha3_id"
.LASF53:
	.string	"mbedtls_sha3"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF62:
	.string	"mbedtls_sha3_starts"
.LASF5:
	.string	"short unsigned int"
.LASF33:
	.string	"test_hash_sha3_224"
.LASF22:
	.string	"MBEDTLS_SHA3_384"
.LASF50:
	.string	"mbedtls_sha3_kat_test"
.LASF56:
	.string	"output"
.LASF32:
	.string	"test_data_len"
.LASF45:
	.string	"type_name"
.LASF11:
	.string	"long double"
.LASF31:
	.string	"test_data"
.LASF29:
	.string	"mbedtls_sha3_context"
.LASF30:
	.string	"iota_r_packed"
.LASF57:
	.string	"cleanup"
.LASF71:
	.string	"mbedtls_get_unaligned_uint64"
.LASF35:
	.string	"test_hash_sha3_384"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"mbedtls_sha3_self_test"
.LASF4:
	.string	"short int"
.LASF59:
	.string	"mbedtls_sha3_finish"
.LASF37:
	.string	"long_kat_hash_sha3_224"
.LASF49:
	.string	"mbedtls_sha3_long_kat_test"
.LASF54:
	.string	"input"
.LASF66:
	.string	"lane"
.LASF19:
	.string	"MBEDTLS_SHA3_NONE"
.LASF15:
	.string	"uint32_t"
.LASF17:
	.string	"char"
.LASF69:
	.string	"mbedtls_platform_zeroize"
.LASF26:
	.string	"index"
.LASF46:
	.string	"buffer"
.LASF60:
	.string	"mbedtls_sha3_update"
.LASF41:
	.string	"memcmp"
.LASF20:
	.string	"MBEDTLS_SHA3_224"
.LASF68:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF47:
	.string	"hash"
.LASF44:
	.string	"verbose"
.LASF28:
	.string	"max_block_size"
.LASF61:
	.string	"align_bytes"
.LASF43:
	.string	"memset"
.LASF58:
	.string	"exit"
.LASF55:
	.string	"ilen"
.LASF13:
	.string	"uint8_t"
.LASF70:
	.string	"keccak_f1600"
.LASF48:
	.string	"result"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha3.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
