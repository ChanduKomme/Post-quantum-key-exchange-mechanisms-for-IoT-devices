	.file	"timeouts.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/timeouts.c"
	.globl	lwip_cyclic_timers
	.section	.rodata.lwip_cyclic_timers,"a"
	.align	2
	.type	lwip_cyclic_timers, @object
	.size	lwip_cyclic_timers, 56
lwip_cyclic_timers:
	.word	250
	.word	tcp_tmr
	.word	1000
	.word	etharp_tmr
	.word	60000
	.word	dhcp_coarse_tmr
	.word	500
	.word	dhcp_fine_tmr
	.word	100
	.word	acd_tmr
	.word	100
	.word	igmp_tmr
	.word	1000
	.word	dns_tmr
	.globl	lwip_num_cyclic_timers
	.section	.srodata.lwip_num_cyclic_timers,"a"
	.align	2
	.type	lwip_num_cyclic_timers, @object
	.size	lwip_num_cyclic_timers, 4
lwip_num_cyclic_timers:
	.word	7
	.section	.sbss.next_timeout,"aw",@nobits
	.align	2
	.type	next_timeout, @object
	.size	next_timeout, 4
next_timeout:
	.zero	4
	.section	.sbss.current_timeout_due_time,"aw",@nobits
	.align	2
	.type	current_timeout_due_time, @object
	.size	current_timeout_due_time, 4
current_timeout_due_time:
	.zero	4
	.section	.sbss.tcpip_tcp_timer_active,"aw",@nobits
	.align	2
	.type	tcpip_tcp_timer_active, @object
	.size	tcpip_tcp_timer_active, 4
tcpip_tcp_timer_active:
	.zero	4
	.section	.text.tcpip_tcp_timer,"ax",@progbits
	.align	1
	.type	tcpip_tcp_timer, @function
tcpip_tcp_timer:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/timeouts.c"
	.loc 1 145 1
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
	.loc 1 149 3
	call	tcp_tmr
	.loc 1 151 7
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	.loc 1 151 6
	bne	a5,zero,.L2
	.loc 1 151 23 discriminator 1
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a5,%lo(tcp_tw_pcbs)(a5)
	beq	a5,zero,.L3
.L2:
	.loc 1 153 5
	li	a2,0
	lui	a5,%hi(tcpip_tcp_timer)
	addi	a1,a5,%lo(tcpip_tcp_timer)
	li	a0,250
	call	sys_timeout
	j	.L4
.L3:
	.loc 1 156 28
	lui	a5,%hi(tcpip_tcp_timer_active)
	sw	zero,%lo(tcpip_tcp_timer_active)(a5)
	.loc 1 158 1
	nop
.L4:
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
.LFE5:
	.size	tcpip_tcp_timer, .-tcpip_tcp_timer
	.section	.text.tcp_timer_needed,"ax",@progbits
	.align	1
	.globl	tcp_timer_needed
	.type	tcp_timer_needed, @function
tcp_timer_needed:
.LFB6:
	.loc 1 167 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 171 7
	lui	a5,%hi(tcpip_tcp_timer_active)
	lw	a5,%lo(tcpip_tcp_timer_active)(a5)
	.loc 1 171 6
	bne	a5,zero,.L8
	.loc 1 171 35 discriminator 1
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	.loc 1 171 31 discriminator 1
	bne	a5,zero,.L7
	.loc 1 171 51 discriminator 2
	lui	a5,%hi(tcp_tw_pcbs)
	lw	a5,%lo(tcp_tw_pcbs)(a5)
	beq	a5,zero,.L8
.L7:
	.loc 1 173 28
	lui	a5,%hi(tcpip_tcp_timer_active)
	li	a4,1
	sw	a4,%lo(tcpip_tcp_timer_active)(a5)
	.loc 1 174 5
	li	a2,0
	lui	a5,%hi(tcpip_tcp_timer)
	addi	a1,a5,%lo(tcpip_tcp_timer)
	li	a0,250
	call	sys_timeout
.L8:
	.loc 1 176 1
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
.LFE6:
	.size	tcp_timer_needed, .-tcp_timer_needed
	.section	.text.sys_timeout_abs,"ax",@progbits
	.align	1
	.type	sys_timeout_abs, @function
sys_timeout_abs:
.LFB7:
	.loc 1 185 1
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
	.loc 1 188 33
	li	a0,11
	call	memp_malloc
	sw	a0,-24(s0)
	.loc 1 189 6
	lw	a5,-24(s0)
	beq	a5,zero,.L18
	.loc 1 194 17
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 1 195 14
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 196 16
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	.loc 1 197 17
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 205 20
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	.loc 1 205 6
	bne	a5,zero,.L12
	.loc 1 206 18
	lui	a5,%hi(next_timeout)
	lw	a4,-24(s0)
	sw	a4,%lo(next_timeout)(a5)
	.loc 1 207 5
	j	.L9
.L12:
	.loc 1 209 27
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 209 48
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	lw	a5,4(a5)
	.loc 1 209 34
	sub	a5,a4,a5
	.loc 1 209 7
	srli	a5,a5,31
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 209 6
	beq	a5,zero,.L13
	.loc 1 210 19
	lui	a5,%hi(next_timeout)
	lw	a4,%lo(next_timeout)(a5)
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 211 18
	lui	a5,%hi(next_timeout)
	lw	a4,-24(s0)
	sw	a4,%lo(next_timeout)(a5)
	j	.L9
.L13:
	.loc 1 213 12
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	sw	a5,-20(s0)
	.loc 1 213 5
	j	.L14
.L17:
	.loc 1 214 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 214 10
	beq	a5,zero,.L15
	.loc 1 214 51 discriminator 1
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 214 61 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 214 67 discriminator 1
	lw	a5,4(a5)
	.loc 1 214 58 discriminator 1
	sub	a5,a4,a5
	.loc 1 214 28 discriminator 1
	srli	a5,a5,31
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L16
.L15:
	.loc 1 215 26
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 215 23
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 216 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 217 9
	j	.L9
.L16:
	.loc 1 213 40 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L14:
	.loc 1 213 30 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L17
	j	.L9
.L18:
	.loc 1 191 5
	nop
.L9:
	.loc 1 221 1
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
	.size	sys_timeout_abs, .-sys_timeout_abs
	.section	.text.lwip_cyclic_timer,"ax",@progbits
	.align	1
	.type	lwip_cyclic_timer, @function
lwip_cyclic_timer:
.LFB8:
	.loc 1 233 1
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
	.loc 1 236 35
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 241 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 241 3
	jalr	a5
.LVL0:
	.loc 1 243 9
	call	sys_now
	sw	a0,-24(s0)
	.loc 1 244 64
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 244 56
	lui	a5,%hi(current_timeout_due_time)
	lw	a5,%lo(current_timeout_due_time)(a5)
	.loc 1 244 21
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 245 38
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 1 245 7
	srli	a5,a5,31
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 245 6
	beq	a5,zero,.L20
	.loc 1 250 41
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 250 5
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a2,-36(s0)
	lui	a5,%hi(lwip_cyclic_timer)
	addi	a1,a5,%lo(lwip_cyclic_timer)
	mv	a0,a4
	call	sys_timeout_abs
	.loc 1 261 1
	j	.L22
.L20:
	.loc 1 258 5
	lw	a2,-36(s0)
	lui	a5,%hi(lwip_cyclic_timer)
	addi	a1,a5,%lo(lwip_cyclic_timer)
	lw	a0,-28(s0)
	call	sys_timeout_abs
.L22:
	.loc 1 261 1
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
	.size	lwip_cyclic_timer, .-lwip_cyclic_timer
	.section	.text.sys_timeouts_init,"ax",@progbits
	.align	1
	.globl	sys_timeouts_init
	.type	sys_timeouts_init, @function
sys_timeouts_init:
.LFB9:
	.loc 1 265 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 268 10
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 268 3
	j	.L24
.L25:
	.loc 1 271 38
	lui	a5,%hi(lwip_cyclic_timers)
	addi	a4,a5,%lo(lwip_cyclic_timers)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 271 92
	lw	a5,-20(s0)
	slli	a4,a5,3
	lui	a5,%hi(lwip_cyclic_timers)
	addi	a5,a5,%lo(lwip_cyclic_timers)
	add	a5,a4,a5
	.loc 1 271 5
	mv	a2,a5
	lui	a5,%hi(lwip_cyclic_timer)
	addi	a1,a5,%lo(lwip_cyclic_timer)
	mv	a0,a3
	call	sys_timeout
	.loc 1 268 92 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L24:
	.loc 1 268 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,6
	bleu	a4,a5,.L25
	.loc 1 273 1
	nop
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
.LFE9:
	.size	sys_timeouts_init, .-sys_timeouts_init
	.section	.text.sys_timeout,"ax",@progbits
	.align	1
	.globl	sys_timeout
	.type	sys_timeout, @function
sys_timeout:
.LFB10:
	.loc 1 292 1
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
	.loc 1 299 31
	call	sys_now
	mv	a4,a0
	.loc 1 299 21 discriminator 1
	lw	a5,-36(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 304 3
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	sys_timeout_abs
	.loc 1 306 1
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
.LFE10:
	.size	sys_timeout, .-sys_timeout
	.section	.text.sys_untimeout,"ax",@progbits
	.align	1
	.globl	sys_untimeout
	.type	sys_untimeout, @function
sys_untimeout:
.LFB11:
	.loc 1 318 1
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
	.loc 1 323 20
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	.loc 1 323 6
	beq	a5,zero,.L35
	.loc 1 327 10
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	sw	a5,-24(s0)
	.loc 1 327 33
	sw	zero,-20(s0)
	.loc 1 327 3
	j	.L30
.L34:
	.loc 1 328 11
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 328 8
	lw	a4,-36(s0)
	bne	a4,a5,.L31
	.loc 1 328 32 discriminator 1
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 328 27 discriminator 1
	lw	a4,-40(s0)
	bne	a4,a5,.L31
	.loc 1 331 10
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 1 332 25
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 332 22
	lui	a5,%hi(next_timeout)
	sw	a4,%lo(next_timeout)(a5)
	j	.L33
.L32:
	.loc 1 334 25
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 334 22
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L33:
	.loc 1 336 7
	lw	a1,-24(s0)
	li	a0,11
	call	memp_free
	.loc 1 337 7
	j	.L27
.L31:
	.loc 1 327 58 discriminator 2
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 1 327 65 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L30:
	.loc 1 327 42 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L34
	.loc 1 340 3
	j	.L27
.L35:
	.loc 1 324 5
	nop
.L27:
	.loc 1 341 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	sys_untimeout, .-sys_untimeout
	.section	.text.sys_check_timeouts,"ax",@progbits
	.align	1
	.globl	sys_check_timeouts
	.type	sys_check_timeouts, @function
sys_check_timeouts:
.LFB12:
	.loc 1 353 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 359 9
	call	sys_now
	sw	a0,-20(s0)
.L41:
.LBB2:
	.loc 1 368 16
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	sw	a5,-24(s0)
	.loc 1 369 8
	lw	a5,-24(s0)
	beq	a5,zero,.L42
	.loc 1 373 38
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 373 26
	lw	a4,-20(s0)
	sub	a5,a4,a5
	.loc 1 373 9
	srli	a5,a5,31
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 373 8
	bne	a5,zero,.L43
	.loc 1 378 30
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 378 18
	lui	a5,%hi(next_timeout)
	sw	a4,%lo(next_timeout)(a5)
	.loc 1 379 13
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	.loc 1 380 9
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	.loc 1 381 42
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 381 30
	lui	a5,%hi(current_timeout_due_time)
	sw	a4,%lo(current_timeout_due_time)(a5)
	.loc 1 388 5
	lw	a1,-24(s0)
	li	a0,11
	call	memp_free
	.loc 1 389 8
	lw	a5,-28(s0)
	beq	a5,zero,.L41
	.loc 1 390 7
	lw	a5,-28(s0)
	lw	a0,-32(s0)
	jalr	a5
.LVL1:
.LBE2:
	.loc 1 361 6
	j	.L41
.L42:
.LBB3:
	.loc 1 370 7
	nop
	j	.L36
.L43:
	.loc 1 374 7
	nop
.L36:
.LBE3:
	.loc 1 396 1
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
	.size	sys_check_timeouts, .-sys_check_timeouts
	.section	.text.sys_restart_timeouts,"ax",@progbits
	.align	1
	.globl	sys_restart_timeouts
	.type	sys_restart_timeouts, @function
sys_restart_timeouts:
.LFB13:
	.loc 1 405 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 410 20
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	.loc 1 410 6
	beq	a5,zero,.L49
	.loc 1 414 9
	call	sys_now
	sw	a0,-24(s0)
	.loc 1 415 22
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	.loc 1 415 8
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 417 10
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	sw	a5,-20(s0)
	.loc 1 417 3
	j	.L47
.L48:
	.loc 1 418 17
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 418 24
	lw	a5,-28(s0)
	sub	a4,a4,a5
	.loc 1 418 32
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 418 13
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 417 38 discriminator 3
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L47:
	.loc 1 417 28 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L48
	j	.L44
.L49:
	.loc 1 411 5
	nop
.L44:
	.loc 1 420 1
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
	.size	sys_restart_timeouts, .-sys_restart_timeouts
	.section	.text.sys_timeouts_sleeptime,"ax",@progbits
	.align	1
	.globl	sys_timeouts_sleeptime
	.type	sys_timeouts_sleeptime, @function
sys_timeouts_sleeptime:
.LFB14:
	.loc 1 427 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 432 20
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	.loc 1 432 6
	bne	a5,zero,.L51
	.loc 1 433 12
	li	a5,-1
	j	.L52
.L51:
	.loc 1 435 9
	call	sys_now
	sw	a0,-20(s0)
	.loc 1 436 32
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	lw	a4,4(a5)
	.loc 1 436 39
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 436 7
	srli	a5,a5,31
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 436 6
	beq	a5,zero,.L53
	.loc 1 437 12
	li	a5,0
	j	.L52
.L53:
.LBB4:
	.loc 1 439 37
	lui	a5,%hi(next_timeout)
	lw	a5,%lo(next_timeout)(a5)
	lw	a4,4(a5)
	.loc 1 439 11
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 441 12
	lw	a5,-24(s0)
.L52:
.LBE4:
	.loc 1 443 1
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
.LFE14:
	.size	sys_timeouts_sleeptime, .-sys_timeouts_sleeptime
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/timeouts.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dns.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/igmp.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dhcp.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/etharp.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xccb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.4byte	0x2b
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
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
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xa0
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x20
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x37
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xbc
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa4
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xc8
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x80
	.byte	0x11
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xec
	.uleb128 0x6
	.4byte	0x12d
	.uleb128 0x14
	.4byte	0x138
	.uleb128 0x5
	.4byte	0x95
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x42
	.byte	0x11
	.4byte	0x97
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x8
	.byte	0x6
	.byte	0x46
	.4byte	0x16b
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x47
	.byte	0x9
	.4byte	0x110
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x48
	.byte	0x1d
	.4byte	0x138
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x144
	.uleb128 0x15
	.4byte	0x16b
	.4byte	0x17b
	.uleb128 0x21
	.byte	0
	.uleb128 0x10
	.4byte	0x170
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x50
	.byte	0x27
	.4byte	0x17b
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x52
	.byte	0x12
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.byte	0x5b
	.byte	0x11
	.4byte	0x128
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x10
	.byte	0x6
	.byte	0x5d
	.4byte	0x1e1
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5e
	.byte	0x15
	.4byte	0x1e1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5f
	.byte	0x9
	.4byte	0x110
	.byte	0x4
	.uleb128 0x7
	.string	"h"
	.byte	0x6
	.byte	0x60
	.byte	0x17
	.4byte	0x196
	.byte	0x8
	.uleb128 0x7
	.string	"arg"
	.byte	0x6
	.byte	0x61
	.byte	0x9
	.4byte	0x95
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x1a2
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x7
	.byte	0x35
	.byte	0xf
	.4byte	0xf8
	.uleb128 0x17
	.4byte	.LASF75
	.4byte	0x3e
	.byte	0x7
	.byte	0x38
	.4byte	0x244
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x2b9
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x2b9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x7
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0xf8
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xe0
	.byte	0xd
	.uleb128 0x7
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xe0
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xe0
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x244
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x2d8
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0x110
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x9
	.byte	0x39
	.byte	0x19
	.4byte	0x2be
	.uleb128 0x22
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x126
	.byte	0x14
	.4byte	0x2d8
	.uleb128 0x23
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x360
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xb
	.byte	0x38
	.byte	0x3
	.4byte	0x2f1
	.uleb128 0x17
	.4byte	.LASF76
	.4byte	0x3e
	.byte	0xc
	.byte	0x71
	.4byte	0x394
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xd
	.byte	0x46
	.byte	0x11
	.4byte	0x3a0
	.uleb128 0x6
	.4byte	0x3a5
	.uleb128 0x11
	.4byte	0x11c
	.4byte	0x3be
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x3be
	.uleb128 0x5
	.4byte	0x11c
	.byte	0
	.uleb128 0x6
	.4byte	0x3c3
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xa4
	.byte	0xd
	.byte	0xf2
	.4byte	0x712
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0xf4
	.byte	0xd
	.4byte	0x2e4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0xf4
	.byte	0x21
	.4byte	0x2e4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xd
	.byte	0xf4
	.byte	0x31
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0xf4
	.byte	0x41
	.4byte	0xe0
	.byte	0x9
	.uleb128 0x7
	.string	"tos"
	.byte	0xd
	.byte	0xf4
	.byte	0x52
	.4byte	0xe0
	.byte	0xa
	.uleb128 0x7
	.string	"ttl"
	.byte	0xd
	.byte	0xf4
	.byte	0x5c
	.4byte	0xe0
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0xd
	.byte	0xf6
	.byte	0x13
	.4byte	0x3be
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xd
	.byte	0xf6
	.byte	0x1f
	.4byte	0x95
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xd
	.byte	0xf6
	.byte	0x3c
	.4byte	0x1f2
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xd
	.byte	0xf6
	.byte	0x48
	.4byte	0xe0
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xd
	.byte	0xf6
	.byte	0x54
	.4byte	0xf8
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd
	.byte	0xf9
	.byte	0x9
	.4byte	0xf8
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xd
	.byte	0xfb
	.byte	0xe
	.4byte	0x86b
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xd
	.2byte	0x116
	.byte	0x8
	.4byte	0xe0
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xd
	.2byte	0x116
	.byte	0x11
	.4byte	0xe0
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xd
	.2byte	0x117
	.byte	0x8
	.4byte	0xe0
	.byte	0x1e
	.uleb128 0xd
	.string	"tmr"
	.2byte	0x118
	.byte	0x9
	.4byte	0x110
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xd
	.2byte	0x11b
	.byte	0x9
	.4byte	0x110
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xd
	.2byte	0x11c
	.byte	0x11
	.4byte	0x1e6
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xd
	.2byte	0x11d
	.byte	0x11
	.4byte	0x1e6
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xd
	.2byte	0x11e
	.byte	0x9
	.4byte	0x110
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xd
	.2byte	0x127
	.byte	0x9
	.4byte	0x104
	.byte	0x30
	.uleb128 0xd
	.string	"mss"
	.2byte	0x129
	.byte	0x9
	.4byte	0xf8
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xd
	.2byte	0x12c
	.byte	0x9
	.4byte	0x110
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xd
	.2byte	0x12d
	.byte	0x9
	.4byte	0x110
	.byte	0x38
	.uleb128 0xd
	.string	"sa"
	.2byte	0x12e
	.byte	0x9
	.4byte	0x104
	.byte	0x3c
	.uleb128 0xd
	.string	"sv"
	.2byte	0x12e
	.byte	0xd
	.4byte	0x104
	.byte	0x3e
	.uleb128 0xd
	.string	"rto"
	.2byte	0x130
	.byte	0x9
	.4byte	0x104
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xd
	.2byte	0x131
	.byte	0x8
	.4byte	0xe0
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xd
	.2byte	0x134
	.byte	0x8
	.4byte	0xe0
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xd
	.2byte	0x135
	.byte	0x9
	.4byte	0x110
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xd
	.2byte	0x138
	.byte	0x11
	.4byte	0x1e6
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xd
	.2byte	0x139
	.byte	0x11
	.4byte	0x1e6
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xd
	.2byte	0x13c
	.byte	0x9
	.4byte	0x110
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xd
	.2byte	0x13f
	.byte	0x9
	.4byte	0x110
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xd
	.2byte	0x140
	.byte	0x9
	.4byte	0x110
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xd
	.2byte	0x140
	.byte	0x12
	.4byte	0x110
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xd
	.2byte	0x142
	.byte	0x9
	.4byte	0x110
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xd
	.2byte	0x143
	.byte	0x11
	.4byte	0x1e6
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xd
	.2byte	0x144
	.byte	0x11
	.4byte	0x1e6
	.byte	0x62
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0xd
	.2byte	0x146
	.byte	0x11
	.4byte	0x1e6
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xd
	.2byte	0x148
	.byte	0x9
	.4byte	0xf8
	.byte	0x66
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0xf8
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xd
	.2byte	0x14f
	.byte	0x11
	.4byte	0x1e6
	.byte	0x6a
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xd
	.2byte	0x152
	.byte	0x13
	.4byte	0x8e1
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0xd
	.2byte	0x153
	.byte	0x13
	.4byte	0x8e1
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0xd
	.2byte	0x155
	.byte	0x13
	.4byte	0x8e1
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xd
	.2byte	0x158
	.byte	0x10
	.4byte	0x2b9
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xd
	.2byte	0x15b
	.byte	0x1a
	.4byte	0x7bd
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xd
	.2byte	0x160
	.byte	0xf
	.4byte	0x741
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xd
	.2byte	0x162
	.byte	0xf
	.4byte	0x712
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xd
	.2byte	0x164
	.byte	0x14
	.4byte	0x7b1
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xd
	.2byte	0x166
	.byte	0xf
	.4byte	0x76b
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xd
	.2byte	0x168
	.byte	0xe
	.4byte	0x790
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xd
	.2byte	0x171
	.byte	0x9
	.4byte	0x110
	.byte	0x94
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xd
	.2byte	0x173
	.byte	0x9
	.4byte	0x110
	.byte	0x98
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xd
	.2byte	0x174
	.byte	0x9
	.4byte	0x110
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0xd
	.2byte	0x178
	.byte	0x8
	.4byte	0xe0
	.byte	0xa0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0xd
	.2byte	0x17a
	.byte	0x8
	.4byte	0xe0
	.byte	0xa1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0xd
	.2byte	0x17c
	.byte	0x8
	.4byte	0xe0
	.byte	0xa2
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0xd
	.2byte	0x17f
	.byte	0x8
	.4byte	0xe0
	.byte	0xa3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xd
	.byte	0x52
	.byte	0x11
	.4byte	0x71e
	.uleb128 0x6
	.4byte	0x723
	.uleb128 0x11
	.4byte	0x11c
	.4byte	0x741
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x3be
	.uleb128 0x5
	.4byte	0x2b9
	.uleb128 0x5
	.4byte	0x11c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xd
	.byte	0x60
	.byte	0x11
	.4byte	0x74d
	.uleb128 0x6
	.4byte	0x752
	.uleb128 0x11
	.4byte	0x11c
	.4byte	0x76b
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x3be
	.uleb128 0x5
	.4byte	0xf8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xd
	.byte	0x6c
	.byte	0x11
	.4byte	0x777
	.uleb128 0x6
	.4byte	0x77c
	.uleb128 0x11
	.4byte	0x11c
	.4byte	0x790
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x3be
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0xd
	.byte	0x78
	.byte	0x10
	.4byte	0x79c
	.uleb128 0x6
	.4byte	0x7a1
	.uleb128 0x14
	.4byte	0x7b1
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x11c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0xd
	.byte	0x86
	.byte	0x11
	.4byte	0x3a0
	.uleb128 0x6
	.4byte	0x7c2
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x1c
	.byte	0xd
	.byte	0xdf
	.4byte	0x86b
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0xe1
	.byte	0xd
	.4byte	0x2e4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0xe1
	.byte	0x21
	.4byte	0x2e4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xd
	.byte	0xe1
	.byte	0x31
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0xe1
	.byte	0x41
	.4byte	0xe0
	.byte	0x9
	.uleb128 0x7
	.string	"tos"
	.byte	0xd
	.byte	0xe1
	.byte	0x52
	.4byte	0xe0
	.byte	0xa
	.uleb128 0x7
	.string	"ttl"
	.byte	0xd
	.byte	0xe1
	.byte	0x5c
	.4byte	0xe0
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0xd
	.byte	0xe3
	.byte	0x1a
	.4byte	0x7bd
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xd
	.byte	0xe3
	.byte	0x26
	.4byte	0x95
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xd
	.byte	0xe3
	.byte	0x43
	.4byte	0x1f2
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xd
	.byte	0xe3
	.byte	0x4f
	.4byte	0xe0
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xd
	.byte	0xe3
	.byte	0x5b
	.4byte	0xf8
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xd
	.byte	0xe7
	.byte	0x11
	.4byte	0x394
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0xd
	.byte	0xce
	.byte	0xf
	.4byte	0xf8
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x14
	.byte	0xe
	.byte	0xfa
	.4byte	0x8e1
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0xe
	.byte	0xfb
	.byte	0x13
	.4byte	0x8e1
	.byte	0
	.uleb128 0x7
	.string	"p"
	.byte	0xe
	.byte	0xfc
	.byte	0x10
	.4byte	0x2b9
	.byte	0x4
	.uleb128 0x7
	.string	"len"
	.byte	0xe
	.byte	0xfd
	.byte	0x9
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x104
	.byte	0x9
	.4byte	0xf8
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xe
	.2byte	0x105
	.byte	0x8
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xe
	.2byte	0x107
	.byte	0x8
	.4byte	0xe0
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xe
	.2byte	0x10e
	.byte	0x13
	.4byte	0x95b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x877
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x14
	.byte	0xf
	.byte	0x38
	.4byte	0x95b
	.uleb128 0x7
	.string	"src"
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0xf8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xf
	.byte	0x3a
	.byte	0x9
	.4byte	0xf8
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xf
	.byte	0x3b
	.byte	0x9
	.4byte	0x110
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xf
	.byte	0x3c
	.byte	0x9
	.4byte	0x110
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xf
	.byte	0x3d
	.byte	0x9
	.4byte	0xf8
	.byte	0xc
	.uleb128 0x7
	.string	"wnd"
	.byte	0xf
	.byte	0x3e
	.byte	0x9
	.4byte	0xf8
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0xf
	.byte	0x3f
	.byte	0x9
	.4byte	0xf8
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xf
	.byte	0x40
	.byte	0x9
	.4byte	0xf8
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0x8e6
	.uleb128 0x18
	.4byte	.LASF153
	.2byte	0x14e
	.4byte	0x3be
	.uleb128 0x18
	.4byte	.LASF154
	.2byte	0x151
	.4byte	0x3be
	.uleb128 0x15
	.4byte	0x16b
	.4byte	0x986
	.uleb128 0x24
	.4byte	0x6f
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	0x976
	.uleb128 0x25
	.4byte	0x180
	.byte	0x1
	.byte	0x4d
	.byte	0x20
	.4byte	0x986
	.uleb128 0x5
	.byte	0x3
	.4byte	lwip_cyclic_timers
	.uleb128 0x26
	.4byte	0x18b
	.byte	0x1
	.byte	0x75
	.byte	0xb
	.uleb128 0x5
	.byte	0x3
	.4byte	lwip_num_cyclic_timers
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x7a
	.byte	0x1a
	.4byte	0x1e1
	.uleb128 0x5
	.byte	0x3
	.4byte	next_timeout
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x7c
	.byte	0xe
	.4byte	0x110
	.uleb128 0x5
	.byte	0x3
	.4byte	current_timeout_due_time
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x88
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_tcp_timer_active
	.uleb128 0x27
	.4byte	.LASF180
	.byte	0xb
	.byte	0x95
	.byte	0x6
	.4byte	0x9f5
	.uleb128 0x5
	.4byte	0x360
	.uleb128 0x5
	.4byte	0x95
	.byte	0
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0x15
	.2byte	0x1cd
	.byte	0x7
	.4byte	0x110
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0xb
	.byte	0x93
	.byte	0x7
	.4byte	0x95
	.4byte	0xa18
	.uleb128 0x5
	.4byte	0x360
	.byte	0
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x10
	.byte	0x6a
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x11
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0x12
	.byte	0x62
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x13
	.byte	0x8a
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x13
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x14
	.byte	0x4d
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xe
	.byte	0x3e
	.uleb128 0x2a
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	0x110
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8d
	.uleb128 0xa
	.string	"now"
	.2byte	0x1ac
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xa
	.string	"ret"
	.2byte	0x1b7
	.byte	0xb
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF166
	.2byte	0x194
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacf
	.uleb128 0xa
	.string	"now"
	.2byte	0x196
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF165
	.2byte	0x197
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"t"
	.2byte	0x198
	.byte	0x15
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF167
	.2byte	0x160
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb28
	.uleb128 0xa
	.string	"now"
	.2byte	0x162
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LLRL0
	.uleb128 0xf
	.4byte	.LASF168
	.2byte	0x16a
	.byte	0x17
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF28
	.2byte	0x16b
	.byte	0x19
	.4byte	0x196
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"arg"
	.2byte	0x16c
	.byte	0xb
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF169
	.2byte	0x13d
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb79
	.uleb128 0x12
	.4byte	.LASF28
	.2byte	0x13d
	.byte	0x23
	.4byte	0x196
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"arg"
	.2byte	0x13d
	.byte	0x32
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF170
	.2byte	0x13f
	.byte	0x15
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"t"
	.2byte	0x13f
	.byte	0x1e
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF171
	.2byte	0x122
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcc
	.uleb128 0x12
	.4byte	.LASF172
	.2byte	0x122
	.byte	0x13
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF28
	.2byte	0x122
	.byte	0x2e
	.4byte	0x196
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"arg"
	.2byte	0x122
	.byte	0x3d
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.4byte	.LASF173
	.2byte	0x125
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF174
	.2byte	0x108
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf0
	.uleb128 0xa
	.string	"i"
	.2byte	0x10a
	.byte	0xa
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0xe8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3d
	.uleb128 0x13
	.string	"arg"
	.byte	0xe8
	.byte	0x19
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"now"
	.byte	0xea
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xeb
	.byte	0x9
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xec
	.byte	0x23
	.4byte	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF176
	.byte	0xb7
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9b
	.uleb128 0x1c
	.4byte	.LASF177
	.byte	0xb7
	.byte	0x17
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0xb7
	.byte	0x35
	.4byte	0x196
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"arg"
	.byte	0xb7
	.byte	0x44
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0xba
	.byte	0x15
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"t"
	.byte	0xba
	.byte	0x1f
	.4byte	0x1e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF184
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.string	"arg"
	.byte	0x90
	.byte	0x17
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL1:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF138:
	.string	"tcp_err_fn"
.LASF59:
	.string	"MEMP_UDP_PCB"
.LASF69:
	.string	"MEMP_SYS_TIMEOUT"
.LASF48:
	.string	"pbuf"
.LASF11:
	.string	"size_t"
.LASF128:
	.string	"keep_idle"
.LASF87:
	.string	"callback_arg"
.LASF70:
	.string	"MEMP_NETDB"
.LASF180:
	.string	"memp_free"
.LASF152:
	.string	"urgp"
.LASF111:
	.string	"snd_lbb"
.LASF168:
	.string	"tmptimeout"
.LASF40:
	.string	"SYN_RCVD"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"lwip_cyclic_timers"
.LASF55:
	.string	"addr"
.LASF30:
	.string	"lwip_num_cyclic_timers"
.LASF33:
	.string	"sys_timeo"
.LASF174:
	.string	"sys_timeouts_init"
.LASF100:
	.string	"rttest"
.LASF107:
	.string	"rto_end"
.LASF34:
	.string	"next"
.LASF121:
	.string	"refused_data"
.LASF139:
	.string	"tcp_connected_fn"
.LASF161:
	.string	"dhcp_fine_tmr"
.LASF181:
	.string	"sys_now"
.LASF16:
	.string	"int16_t"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF90:
	.string	"local_port"
.LASF159:
	.string	"igmp_tmr"
.LASF175:
	.string	"cyclic"
.LASF149:
	.string	"seqno"
.LASF145:
	.string	"chksum_swapped"
.LASF50:
	.string	"tot_len"
.LASF115:
	.string	"snd_queuelen"
.LASF88:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"MEMP_RAW_PCB"
.LASF54:
	.string	"ip4_addr"
.LASF124:
	.string	"recv"
.LASF80:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF179:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF93:
	.string	"pollinterval"
.LASF102:
	.string	"nrtx"
.LASF170:
	.string	"prev_t"
.LASF167:
	.string	"sys_check_timeouts"
.LASF68:
	.string	"MEMP_IGMP_GROUP"
.LASF116:
	.string	"unsent_oversize"
.LASF99:
	.string	"rtime"
.LASF92:
	.string	"polltmr"
.LASF172:
	.string	"msecs"
.LASF109:
	.string	"snd_wl1"
.LASF51:
	.string	"type_internal"
.LASF182:
	.string	"memp_malloc"
.LASF46:
	.string	"LAST_ACK"
.LASF110:
	.string	"snd_wl2"
.LASF10:
	.string	"unsigned int"
.LASF20:
	.string	"u8_t"
.LASF18:
	.string	"uint16_t"
.LASF7:
	.string	"long unsigned int"
.LASF85:
	.string	"netif_idx"
.LASF101:
	.string	"rtseq"
.LASF24:
	.string	"u32_t"
.LASF142:
	.string	"tcpflags_t"
.LASF60:
	.string	"MEMP_TCP_PCB"
.LASF114:
	.string	"snd_buf"
.LASF5:
	.string	"short unsigned int"
.LASF45:
	.string	"CLOSING"
.LASF56:
	.string	"ip4_addr_t"
.LASF38:
	.string	"LISTEN"
.LASF157:
	.string	"tcpip_tcp_timer_active"
.LASF162:
	.string	"dhcp_coarse_tmr"
.LASF169:
	.string	"sys_untimeout"
.LASF47:
	.string	"TIME_WAIT"
.LASF171:
	.string	"sys_timeout"
.LASF4:
	.string	"short int"
.LASF62:
	.string	"MEMP_TCP_SEG"
.LASF12:
	.string	"ptrdiff_t"
.LASF28:
	.string	"handler"
.LASF165:
	.string	"base"
.LASF156:
	.string	"current_timeout_due_time"
.LASF73:
	.string	"MEMP_MAX"
.LASF131:
	.string	"persist_cnt"
.LASF176:
	.string	"sys_timeout_abs"
.LASF57:
	.string	"ip_addr_t"
.LASF21:
	.string	"s8_t"
.LASF25:
	.string	"err_t"
.LASF126:
	.string	"poll"
.LASF153:
	.string	"tcp_active_pcbs"
.LASF122:
	.string	"listener"
.LASF158:
	.string	"dns_tmr"
.LASF13:
	.string	"long double"
.LASF154:
	.string	"tcp_tw_pcbs"
.LASF81:
	.string	"tcp_accept_fn"
.LASF136:
	.string	"tcp_sent_fn"
.LASF26:
	.string	"lwip_cyclic_timer_handler"
.LASF49:
	.string	"payload"
.LASF185:
	.string	"tcpip_tcp_timer"
.LASF123:
	.string	"sent"
.LASF178:
	.string	"timeout"
.LASF148:
	.string	"dest"
.LASF89:
	.string	"prio"
.LASF125:
	.string	"connected"
.LASF118:
	.string	"unsent"
.LASF39:
	.string	"SYN_SENT"
.LASF146:
	.string	"tcphdr"
.LASF147:
	.string	"tcp_hdr"
.LASF23:
	.string	"s16_t"
.LASF184:
	.string	"tcp_timer_needed"
.LASF164:
	.string	"tcp_tmr"
.LASF78:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF104:
	.string	"lastack"
.LASF108:
	.string	"snd_nxt"
.LASF3:
	.string	"unsigned char"
.LASF173:
	.string	"next_timeout_time"
.LASF83:
	.string	"local_ip"
.LASF151:
	.string	"_hdrlen_rsvd_flags"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF112:
	.string	"snd_wnd"
.LASF97:
	.string	"rcv_ann_wnd"
.LASF41:
	.string	"ESTABLISHED"
.LASF103:
	.string	"dupacks"
.LASF177:
	.string	"abs_time"
.LASF36:
	.string	"tcpwnd_size_t"
.LASF77:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF143:
	.string	"tcp_seg"
.LASF120:
	.string	"ooseq"
.LASF137:
	.string	"tcp_poll_fn"
.LASF105:
	.string	"cwnd"
.LASF19:
	.string	"uint32_t"
.LASF94:
	.string	"last_timer"
.LASF106:
	.string	"ssthresh"
.LASF75:
	.string	"tcp_state"
.LASF166:
	.string	"sys_restart_timeouts"
.LASF66:
	.string	"MEMP_TCPIP_MSG_API"
.LASF14:
	.string	"char"
.LASF32:
	.string	"lwip_cyclic_timer"
.LASF64:
	.string	"MEMP_NETBUF"
.LASF61:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF65:
	.string	"MEMP_NETCONN"
.LASF63:
	.string	"MEMP_ALTCP_PCB"
.LASF133:
	.string	"persist_probe"
.LASF72:
	.string	"MEMP_PBUF_POOL"
.LASF183:
	.string	"sys_timeouts_sleeptime"
.LASF129:
	.string	"keep_intvl"
.LASF86:
	.string	"so_options"
.LASF44:
	.string	"CLOSE_WAIT"
.LASF135:
	.string	"tcp_recv_fn"
.LASF15:
	.string	"int8_t"
.LASF35:
	.string	"time"
.LASF31:
	.string	"sys_timeout_handler"
.LASF134:
	.string	"keep_cnt_sent"
.LASF132:
	.string	"persist_backoff"
.LASF130:
	.string	"keep_cnt"
.LASF22:
	.string	"u16_t"
.LASF150:
	.string	"ackno"
.LASF76:
	.string	"lwip_internal_netif_client_data_index"
.LASF141:
	.string	"accept"
.LASF91:
	.string	"remote_port"
.LASF37:
	.string	"CLOSED"
.LASF119:
	.string	"unacked"
.LASF95:
	.string	"rcv_nxt"
.LASF17:
	.string	"uint8_t"
.LASF98:
	.string	"rcv_ann_right_edge"
.LASF52:
	.string	"flags"
.LASF96:
	.string	"rcv_wnd"
.LASF27:
	.string	"interval_ms"
.LASF53:
	.string	"if_idx"
.LASF144:
	.string	"chksum"
.LASF113:
	.string	"snd_wnd_max"
.LASF127:
	.string	"errf"
.LASF42:
	.string	"FIN_WAIT_1"
.LASF43:
	.string	"FIN_WAIT_2"
.LASF74:
	.string	"memp_t"
.LASF84:
	.string	"remote_ip"
.LASF117:
	.string	"bytes_acked"
.LASF71:
	.string	"MEMP_PBUF"
.LASF160:
	.string	"acd_tmr"
.LASF82:
	.string	"tcp_pcb"
.LASF67:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF163:
	.string	"etharp_tmr"
.LASF155:
	.string	"next_timeout"
.LASF140:
	.string	"tcp_pcb_listen"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/timeouts.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
