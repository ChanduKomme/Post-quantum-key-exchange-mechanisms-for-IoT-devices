	.file	"bl_sec.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.c"
	.section	.bss.trng_buffer,"aw",@nobits
	.align	2
	.type	trng_buffer, @object
	.size	trng_buffer, 32
trng_buffer:
	.zero	32
	.section	.sbss.trng_idx,"aw",@nobits
	.align	2
	.type	trng_idx, @object
	.size	trng_idx, 4
trng_idx:
	.zero	4
	.section	.bss.sha_mutex_buf,"aw",@nobits
	.align	2
	.type	sha_mutex_buf, @object
	.size	sha_mutex_buf, 80
sha_mutex_buf:
	.zero	80
	.globl	g_bl_sec_sha_mutex
	.section	.sbss.g_bl_sec_sha_mutex,"aw",@nobits
	.align	2
	.type	g_bl_sec_sha_mutex, @object
	.size	g_bl_sec_sha_mutex, 4
g_bl_sec_sha_mutex:
	.zero	4
	.section	.text._trng_trigger,"ax",@progbits
	.align	1
	.type	_trng_trigger, @function
_trng_trigger:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.c"
	.loc 1 57 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 58 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 61 14
	lw	a5,-20(s0)
	.loc 1 61 9
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 62 17
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 62 8
	bne	a5,zero,.L4
	.loc 1 65 34
	lw	a5,-20(s0)
	addi	a5,a5,44
	.loc 1 65 8
	mv	a4,a5
	.loc 1 65 56
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	lw	a5,0(a5)
	.loc 1 65 43
	sw	a5,0(a4)
	.loc 1 66 34
	lw	a5,-20(s0)
	addi	a5,a5,48
	.loc 1 66 8
	mv	a4,a5
	.loc 1 66 56
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	lw	a5,4(a5)
	.loc 1 66 43
	sw	a5,0(a4)
	.loc 1 67 9
	lw	a5,-24(s0)
	ori	a5,a5,1024
	sw	a5,-24(s0)
	.loc 1 68 9
	lw	a5,-24(s0)
	ori	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 69 9
	lw	a5,-24(s0)
	ori	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 70 9
	lw	a5,-24(s0)
	ori	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 72 8
	lw	a5,-20(s0)
	.loc 1 72 42
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L1
.L4:
	.loc 1 63 9
	nop
.L1:
	.loc 1 73 1
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
	.size	_trng_trigger, .-_trng_trigger
	.section	.text.wait_trng4feed,"ax",@progbits
	.align	1
	.type	wait_trng4feed, @function
wait_trng4feed:
.LFB10:
	.loc 1 76 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 77 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 80 14
	lw	a5,-24(s0)
	.loc 1 80 9
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 82 11
	j	.L6
.L7:
	.loc 1 84 18
	lw	a5,-24(s0)
	.loc 1 84 13
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L6:
	.loc 1 82 20
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 82 35
	bne	a5,zero,.L7
	.loc 1 87 9
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 88 9
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 89 8
	lw	a5,-24(s0)
	.loc 1 89 42
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 92 51
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 1 92 23
	lw	a4,0(a5)
	.loc 1 92 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,0(a5)
	.loc 1 93 51
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 93 23
	lw	a4,0(a5)
	.loc 1 93 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,4(a5)
	.loc 1 94 51
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 1 94 23
	lw	a4,0(a5)
	.loc 1 94 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,8(a5)
	.loc 1 95 51
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 95 23
	lw	a4,0(a5)
	.loc 1 95 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,12(a5)
	.loc 1 96 51
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 1 96 23
	lw	a4,0(a5)
	.loc 1 96 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,16(a5)
	.loc 1 97 51
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 1 97 23
	lw	a4,0(a5)
	.loc 1 97 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,20(a5)
	.loc 1 98 51
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 98 23
	lw	a4,0(a5)
	.loc 1 98 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,24(a5)
	.loc 1 99 51
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 1 99 23
	lw	a4,0(a5)
	.loc 1 99 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,28(a5)
	.loc 1 100 1
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
.LFE10:
	.size	wait_trng4feed, .-wait_trng4feed
	.section	.text.bl_sec_get_random_word,"ax",@progbits
	.align	1
	.globl	bl_sec_get_random_word
	.type	bl_sec_get_random_word, @function
bl_sec_get_random_word:
.LFB11:
	.loc 1 103 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 104 26
	lui	a5,%hi(trng_idx)
	lw	a5,%lo(trng_idx)(a5)
	andi	a4,a5,7
	.loc 1 104 14
	lui	a5,%hi(trng_idx)
	sw	a4,%lo(trng_idx)(a5)
	.loc 1 105 11
	lui	a5,%hi(trng_idx)
	lw	a5,%lo(trng_idx)(a5)
	.loc 1 105 8
	bne	a5,zero,.L9
	.loc 1 106 9
	call	_trng_trigger
.L9:
	.loc 1 108 32
	lui	a5,%hi(trng_idx)
	lw	a5,%lo(trng_idx)(a5)
	addi	a3,a5,1
	lui	a4,%hi(trng_idx)
	sw	a3,%lo(trng_idx)(a4)
	.loc 1 108 23
	lui	a4,%hi(trng_buffer)
	addi	a4,a4,%lo(trng_buffer)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 109 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_sec_get_random_word, .-bl_sec_get_random_word
	.section	.text.bl_rand_stream,"ax",@progbits
	.align	1
	.globl	bl_rand_stream
	.type	bl_rand_stream, @function
bl_rand_stream:
.LFB12:
	.loc 1 112 1
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
	.loc 1 115 9
	sw	zero,-20(s0)
	.loc 1 116 9
	lui	a5,%hi(trng_idx)
	lw	a5,%lo(trng_idx)(a5)
	.loc 1 116 8
	beq	a5,zero,.L13
	.loc 1 118 9
	call	_trng_trigger
	.loc 1 119 9
	call	wait_trng4feed
	.loc 1 120 18
	lui	a5,%hi(trng_idx)
	sw	zero,%lo(trng_idx)(a5)
	.loc 1 123 11
	j	.L13
.L16:
	.loc 1 124 13
	lui	a5,%hi(trng_idx)
	lw	a5,%lo(trng_idx)(a5)
	.loc 1 124 12
	beq	a5,zero,.L14
	.loc 1 126 13
	call	_trng_trigger
	.loc 1 127 13
	call	wait_trng4feed
	.loc 1 128 22
	lui	a5,%hi(trng_idx)
	sw	zero,%lo(trng_idx)(a5)
.L14:
	.loc 1 130 18
	lw	a5,-40(s0)
	li	a4,32
	ble	a5,a4,.L15
	li	a5,32
.L15:
	sw	a5,-24(s0)
	.loc 1 131 9
	lw	a5,-20(s0)
	.loc 1 131 20
	lw	a4,-36(s0)
	add	a4,a4,a5
	.loc 1 131 9
	lw	a5,-24(s0)
	mv	a2,a5
	lui	a5,%hi(trng_buffer)
	addi	a1,a5,%lo(trng_buffer)
	mv	a0,a4
	call	memcpy
	.loc 1 132 13
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 133 13
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 134 18
	lui	a5,%hi(trng_idx)
	li	a4,31
	sw	a4,%lo(trng_idx)(a5)
.L13:
	.loc 1 123 16
	lw	a5,-40(s0)
	bgt	a5,zero,.L16
	.loc 1 136 5
	call	_trng_trigger
	.loc 1 137 5
	call	wait_trng4feed
	.loc 1 138 14
	lui	a5,%hi(trng_idx)
	sw	zero,%lo(trng_idx)(a5)
	.loc 1 139 1
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
.LFE12:
	.size	bl_rand_stream, .-bl_rand_stream
	.section	.rodata
	.align	2
.LC0:
	.string	"[BL] [SEC] Failed after loop (17)\r\n"
	.section	.text.bl_rand,"ax",@progbits
	.align	1
	.globl	bl_rand
	.type	bl_rand, @function
bl_rand:
.LFB13:
	.loc 1 142 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 144 9
	sw	zero,-20(s0)
.L20:
	.loc 1 147 15
	call	bl_sec_get_random_word
	sw	a0,-24(s0)
	.loc 1 148 21
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 148 12
	li	a4,17
	ble	a5,a4,.L18
	.loc 1 149 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 150 13
	j	.L19
.L18:
	.loc 1 152 16
	lw	a5,-24(s0)
	beq	a5,zero,.L20
.L19:
	.loc 1 153 9
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 154 12
	lw	a5,-24(s0)
	.loc 1 155 1
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
	.size	bl_rand, .-bl_rand
	.section	.rodata
	.align	2
.LC1:
	.string	"[BL] [SEC] TRNG Handler\r\n"
	.section	.text.sec_trng_IRQHandler,"ax",@progbits
	.align	1
	.globl	sec_trng_IRQHandler
	.type	sec_trng_IRQHandler, @function
sec_trng_IRQHandler:
.LFB14:
	.loc 1 158 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 159 14
	li	a5,1073758208
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 162 9
	call	aos_now_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 162 8 discriminator 1
	mv	a3,a5
	bgt	a3,zero,.L23
	mv	a3,a5
	bne	a3,zero,.L25
	li	a5,1999
	bgtu	a4,a5,.L23
.L25:
	.loc 1 164 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
.L23:
	.loc 1 166 14
	lw	a5,-20(s0)
	.loc 1 166 9
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 167 9
	lw	a5,-24(s0)
	ori	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 168 9
	lw	a5,-24(s0)
	andi	a5,a5,-3
	sw	a5,-24(s0)
	.loc 1 169 8
	lw	a5,-20(s0)
	.loc 1 169 42
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 172 51
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 172 23
	lw	a4,0(a5)
	.loc 1 172 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,0(a5)
	.loc 1 173 51
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 173 23
	lw	a4,0(a5)
	.loc 1 173 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,4(a5)
	.loc 1 174 51
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 1 174 23
	lw	a4,0(a5)
	.loc 1 174 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,8(a5)
	.loc 1 175 51
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 175 23
	lw	a4,0(a5)
	.loc 1 175 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,12(a5)
	.loc 1 176 51
	lw	a5,-20(s0)
	addi	a5,a5,24
	.loc 1 176 23
	lw	a4,0(a5)
	.loc 1 176 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,16(a5)
	.loc 1 177 51
	lw	a5,-20(s0)
	addi	a5,a5,28
	.loc 1 177 23
	lw	a4,0(a5)
	.loc 1 177 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,20(a5)
	.loc 1 178 51
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 178 23
	lw	a4,0(a5)
	.loc 1 178 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,24(a5)
	.loc 1 179 51
	lw	a5,-20(s0)
	addi	a5,a5,36
	.loc 1 179 23
	lw	a4,0(a5)
	.loc 1 179 20
	lui	a5,%hi(trng_buffer)
	addi	a5,a5,%lo(trng_buffer)
	sw	a4,28(a5)
	.loc 1 180 1
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
.LFE14:
	.size	sec_trng_IRQHandler, .-sec_trng_IRQHandler
	.section	.text.bl_sec_init,"ax",@progbits
	.align	1
	.globl	bl_sec_init
	.type	bl_sec_init, @function
bl_sec_init:
.LFB15:
	.loc 1 183 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 184 26
	lui	a5,%hi(sha_mutex_buf)
	addi	a1,a5,%lo(sha_mutex_buf)
	li	a0,1
	call	xQueueCreateMutexStatic
	mv	a4,a0
	.loc 1 184 24 discriminator 1
	lui	a5,%hi(g_bl_sec_sha_mutex)
	sw	a4,%lo(g_bl_sec_sha_mutex)(a5)
	.loc 1 185 5
	call	_trng_trigger
	.loc 1 186 5
	call	wait_trng4feed
	.loc 1 188 5
	call	_trng_trigger
	.loc 1 189 5
	call	wait_trng4feed
	.loc 1 190 5
	lui	a5,%hi(sec_trng_IRQHandler)
	addi	a1,a5,%lo(sec_trng_IRQHandler)
	li	a0,28
	call	bl_irq_register
	.loc 1 191 5
	li	a0,28
	call	bl_irq_enable
	.loc 1 193 12
	li	a5,0
	.loc 1 194 1
	mv	a0,a5
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
	.size	bl_sec_init, .-bl_sec_init
	.section	.text.bl_exp_mod,"ax",@progbits
	.align	1
	.globl	bl_exp_mod
	.type	bl_exp_mod, @function
bl_exp_mod:
.LFB16:
	.loc 1 198 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	.loc 1 199 12
	li	a5,0
	.loc 1 200 1
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
.LFE16:
	.size	bl_exp_mod, .-bl_exp_mod
	.section	.text.bl_sec_test,"ax",@progbits
	.align	1
	.globl	bl_sec_test
	.type	bl_sec_test, @function
bl_sec_test:
.LFB17:
	.loc 1 203 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 209 12
	li	a5,0
	.loc 1 210 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	bl_sec_test, .-bl_sec_test
	.section	.rodata
	.align	2
.LC2:
	.string	"\r\n"
	.section	.text._dump_rsa_data,"ax",@progbits
	.align	1
	.globl	_dump_rsa_data
	.type	_dump_rsa_data, @function
_dump_rsa_data:
.LFB18:
	.loc 1 213 1
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
	.loc 1 216 12
	sw	zero,-20(s0)
	.loc 1 216 5
	j	.L33
.L37:
	.loc 1 217 19
	lw	a5,-20(s0)
	andi	a5,a5,15
	.loc 1 217 9
	beq	a5,zero,.L38
	li	a4,15
	bne	a5,a4,.L36
	.loc 1 227 17
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	.loc 1 229 13
	j	.L36
.L38:
	.loc 1 223 13
	nop
.L36:
	.loc 1 216 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L33:
	.loc 1 216 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L37
	.loc 1 236 1
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
.LFE18:
	.size	_dump_rsa_data, .-_dump_rsa_data
	.section	.text.RSA_Compare_Data,"ax",@progbits
	.align	1
	.type	RSA_Compare_Data, @function
RSA_Compare_Data:
.LFB19:
	.loc 1 239 1
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
	.loc 1 240 9
	sw	zero,-20(s0)
	.loc 1 240 16
	sw	zero,-24(s0)
	.loc 1 242 12
	sw	zero,-20(s0)
	.loc 1 242 5
	j	.L40
.L42:
	.loc 1 243 18
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 243 33
	lw	a5,-20(s0)
	lw	a3,-36(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 1 243 12
	beq	a4,a5,.L41
	.loc 1 244 23
	li	a5,1
	sw	a5,-24(s0)
.L41:
	.loc 1 242 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L40:
	.loc 1 242 19 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	bgtu	a4,a5,.L42
	.loc 1 258 1
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
.LFE19:
	.size	RSA_Compare_Data, .-RSA_Compare_Data
	.section	.text._pka_test_case2,"ax",@progbits
	.align	1
	.type	_pka_test_case2, @function
_pka_test_case2:
.LFB20:
	.loc 1 261 1
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sw	ra,284(sp)
	sw	s0,280(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,288
	.cfi_def_cfa 8, 0
	.loc 1 357 5
	call	Sec_Eng_PKA_Reset
	.loc 1 358 5
	call	Sec_Eng_PKA_BigEndian_Enable
	.loc 1 360 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(n.8)
	addi	a2,a5,%lo(n.8)
	li	a1,0
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 361 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(nprime.7)
	addi	a2,a5,%lo(nprime.7)
	li	a1,1
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 362 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(m.6)
	addi	a2,a5,%lo(m.6)
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 363 5
	li	a4,0
	li	a3,1
	lui	a5,%hi(e.5)
	addi	a2,a5,%lo(e.5)
	li	a1,3
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 365 5
	li	a3,0
	li	a2,0
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_CREG
	.loc 1 366 5
	li	a3,1
	li	a2,0
	li	a1,5
	li	a0,8
	call	Sec_Eng_PKA_CREG
	.loc 1 367 5
	li	a5,0
	li	a4,4096
	addi	a4,a4,-2048
	li	a3,2
	li	a2,8
	li	a1,2
	li	a0,10
	call	Sec_Eng_PKA_LMUL2N
	.loc 1 373 5
	li	a6,0
	li	a5,0
	li	a4,8
	li	a3,2
	li	a2,10
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_MREM
	.loc 1 379 5
	li	a3,1
	li	a2,0
	li	a1,2
	li	a0,10
	call	Sec_Eng_PKA_CREG
	.loc 1 381 5
	li	a5,1
	sw	a5,0(sp)
	li	a7,0
	li	a6,8
	li	a5,3
	li	a4,8
	li	a3,2
	li	a2,8
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_MEXP
	.loc 1 388 5
	li	a4,1
	li	a3,4
	li	a2,8
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 393 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(inv_r.4)
	addi	a2,a5,%lo(inv_r.4)
	li	a1,1
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 394 5
	li	a3,0
	li	a2,0
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_CREG
	.loc 1 395 5
	li	a3,1
	li	a2,0
	li	a1,5
	li	a0,8
	call	Sec_Eng_PKA_CREG
	.loc 1 396 5
	li	a6,0
	li	a5,1
	li	a4,8
	li	a3,2
	li	a2,8
	li	a1,2
	li	a0,10
	call	Sec_Eng_PKA_LMUL
	.loc 1 402 5
	li	a6,0
	li	a5,0
	li	a4,8
	li	a3,2
	li	a2,10
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_MREM
	.loc 1 408 5
	li	a3,1
	li	a2,0
	li	a1,2
	li	a0,10
	call	Sec_Eng_PKA_CREG
	.loc 1 409 5
	addi	a5,s0,-272
	li	a3,64
	mv	a2,a5
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 414 5
	addi	a5,s0,-272
	li	a1,256
	mv	a0,a5
	call	_dump_rsa_data
	.loc 1 415 5
	addi	a5,s0,-272
	li	a2,256
	mv	a1,a5
	lui	a5,%hi(encrypted.3)
	addi	a0,a5,%lo(encrypted.3)
	call	RSA_Compare_Data
	.loc 1 416 1
	nop
	lw	ra,284(sp)
	.cfi_restore 1
	lw	s0,280(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 288
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	_pka_test_case2, .-_pka_test_case2
	.section	.rodata
	.align	2
.LC3:
	.string	" ---- PKA 8:0\r\n"
	.align	2
.LC4:
	.string	" ---- PKA 8:1\r\n"
	.align	2
.LC5:
	.string	" ---- PKA 8:2\r\n"
	.align	2
.LC6:
	.string	" ---- PKA 8:3\r\n"
	.align	2
.LC7:
	.string	" ---- PKA 8:4\r\n"
	.align	2
.LC8:
	.string	" ---- PKA 8:5\r\n"
	.align	2
.LC9:
	.string	" ---- PKA 8:6\r\n"
	.align	2
.LC10:
	.string	" ---- PKA 8:7\r\n"
	.section	.text.dump_xgcd_step,"ax",@progbits
	.align	1
	.type	dump_xgcd_step, @function
dump_xgcd_step:
.LFB21:
	.loc 1 419 1
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
	.loc 1 420 5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	.loc 1 421 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,0
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 426 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 428 5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	.loc 1 429 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,1
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 434 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 436 5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	puts
	.loc 1 437 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 442 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 444 5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	.loc 1 445 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,3
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 450 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 452 5
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
	.loc 1 453 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 458 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 460 5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	puts
	.loc 1 461 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,5
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 466 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 468 5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	puts
	.loc 1 469 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,6
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 474 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 476 5
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	puts
	.loc 1 477 5
	li	a3,64
	lw	a2,-20(s0)
	li	a1,7
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 482 5
	li	a1,256
	lw	a0,-20(s0)
	call	_dump_rsa_data
	.loc 1 483 1
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
.LFE21:
	.size	dump_xgcd_step, .-dump_xgcd_step
	.section	.text._pka_test_case_xgcd,"ax",@progbits
	.align	1
	.type	_pka_test_case_xgcd, @function
_pka_test_case_xgcd:
.LFB22:
	.loc 1 487 1
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sw	ra,284(sp)
	sw	s0,280(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,288
	.cfi_def_cfa 8, 0
	.loc 1 488 9
	sw	zero,-20(s0)
	.loc 1 582 13
	sb	zero,-277(s0)
	.loc 1 586 5
	call	Sec_Eng_PKA_Reset
	.loc 1 587 5
	call	Sec_Eng_PKA_BigEndian_Enable
	.loc 1 589 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(n.2)
	addi	a2,a5,%lo(n.2)
	li	a1,1
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 590 5
	li	a3,0
	li	a2,0
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_CREG
	.loc 1 591 5
	li	a3,1
	li	a2,0
	li	a1,3
	li	a0,8
	call	Sec_Eng_PKA_CREG
	.loc 1 592 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(n_exp.1)
	addi	a2,a5,%lo(n_exp.1)
	li	a1,0
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 595 5
	li	a5,0
	li	a4,4096
	addi	a4,a4,-2048
	li	a3,0
	li	a2,8
	li	a1,1
	li	a0,10
	call	Sec_Eng_PKA_LMUL2N
	.loc 1 601 5
	li	a6,0
	li	a5,1
	li	a4,8
	li	a3,1
	li	a2,10
	li	a1,0
	li	a0,8
	call	Sec_Eng_PKA_LDIV
	.loc 1 607 5
	li	a6,0
	li	a5,1
	li	a4,8
	li	a3,1
	li	a2,10
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_MREM
	.loc 1 613 5
	li	a3,1
	li	a2,0
	li	a1,1
	li	a0,10
	call	Sec_Eng_PKA_CREG
	.loc 1 614 5
	li	a4,0
	li	a3,1
	li	a2,8
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 619 5
	li	a4,1
	li	a3,4
	li	a2,8
	li	a1,1
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 624 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(all_zero.0)
	addi	a2,a5,%lo(all_zero.0)
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 625 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(n_exp.1)
	addi	a2,a5,%lo(n_exp.1)
	li	a1,5
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 626 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(n_exp.1)
	addi	a2,a5,%lo(n_exp.1)
	li	a1,6
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 627 5
	li	a4,0
	li	a3,64
	lui	a5,%hi(all_zero.0)
	addi	a2,a5,%lo(all_zero.0)
	li	a1,7
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 629 5
	li	a6,0
	li	a5,5
	li	a4,8
	li	a3,0
	li	a2,8
	li	a1,8
	li	a0,8
	call	Sec_Eng_PKA_LMUL
	.loc 1 635 5
	li	a6,0
	li	a5,8
	li	a4,8
	li	a3,4
	li	a2,8
	li	a1,8
	li	a0,8
	call	Sec_Eng_PKA_LSUB
	.loc 1 641 5
	li	a6,0
	li	a5,7
	li	a4,8
	li	a3,0
	li	a2,8
	li	a1,9
	li	a0,8
	call	Sec_Eng_PKA_LMUL
	.loc 1 647 5
	li	a6,0
	li	a5,9
	li	a4,8
	li	a3,6
	li	a2,8
	li	a1,9
	li	a0,8
	call	Sec_Eng_PKA_LSUB
	.loc 1 653 5
	li	a4,0
	li	a3,5
	li	a2,8
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 658 5
	li	a4,0
	li	a3,8
	li	a2,8
	li	a1,5
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 663 5
	li	a4,0
	li	a3,7
	li	a2,8
	li	a1,6
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 668 5
	li	a4,1
	li	a3,9
	li	a2,8
	li	a1,7
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 678 11
	j	.L46
.L47:
	.loc 1 679 9
	li	a6,0
	li	a5,1
	li	a4,8
	li	a3,2
	li	a2,8
	li	a1,0
	li	a0,8
	call	Sec_Eng_PKA_LDIV
	.loc 1 685 9
	li	a6,0
	li	a5,1
	li	a4,8
	li	a3,2
	li	a2,8
	li	a1,3
	li	a0,8
	call	Sec_Eng_PKA_MREM
	.loc 1 691 9
	li	a6,0
	li	a5,5
	li	a4,8
	li	a3,0
	li	a2,8
	li	a1,8
	li	a0,8
	call	Sec_Eng_PKA_LMUL
	.loc 1 697 9
	li	a6,0
	li	a5,8
	li	a4,8
	li	a3,4
	li	a2,8
	li	a1,8
	li	a0,8
	call	Sec_Eng_PKA_LSUB
	.loc 1 703 9
	li	a6,0
	li	a5,7
	li	a4,8
	li	a3,0
	li	a2,8
	li	a1,9
	li	a0,8
	call	Sec_Eng_PKA_LMUL
	.loc 1 709 9
	li	a6,0
	li	a5,9
	li	a4,8
	li	a3,6
	li	a2,8
	li	a1,9
	li	a0,8
	call	Sec_Eng_PKA_LSUB
	.loc 1 715 9
	li	a4,0
	li	a3,1
	li	a2,8
	li	a1,2
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 720 9
	li	a4,0
	li	a3,5
	li	a2,8
	li	a1,4
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 725 9
	li	a4,0
	li	a3,8
	li	a2,8
	li	a1,5
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 730 9
	li	a4,0
	li	a3,7
	li	a2,8
	li	a1,6
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 735 9
	li	a4,1
	li	a3,9
	li	a2,8
	li	a1,7
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 740 9
	li	a4,1
	li	a3,3
	li	a2,8
	li	a1,1
	li	a0,8
	call	Sec_Eng_PKA_Move_Data
	.loc 1 745 9
	li	a4,0
	li	a3,64
	lui	a5,%hi(n_exp.1)
	addi	a2,a5,%lo(n_exp.1)
	li	a1,10
	li	a0,8
	call	Sec_Eng_PKA_Write_Data
	.loc 1 746 9
	addi	a5,s0,-277
	li	a4,10
	li	a3,8
	li	a2,1
	li	a1,8
	mv	a0,a5
	call	Sec_Eng_PKA_LCMP
.L46:
	.loc 1 678 12
	lbu	a5,-277(s0)
	beq	a5,zero,.L47
	.loc 1 756 5
	addi	a5,s0,-276
	li	a3,64
	mv	a2,a5
	li	a1,6
	li	a0,8
	call	Sec_Eng_PKA_Read_Data
	.loc 1 761 5
	addi	a5,s0,-276
	li	a1,256
	mv	a0,a5
	call	_dump_rsa_data
	.loc 1 763 1
	nop
	lw	ra,284(sp)
	.cfi_restore 1
	lw	s0,280(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 288
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	_pka_test_case_xgcd, .-_pka_test_case_xgcd
	.section	.text.bl_pka_test,"ax",@progbits
	.align	1
	.globl	bl_pka_test
	.type	bl_pka_test, @function
bl_pka_test:
.LFB23:
	.loc 1 766 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 767 5
	lui	a5,%hi(bl_sec_pka_IRQHandler)
	addi	a1,a5,%lo(bl_sec_pka_IRQHandler)
	li	a0,27
	call	bl_irq_register
	.loc 1 768 5
	li	a0,27
	call	bl_irq_enable
	.loc 1 770 5
	call	_pka_test_case2
	.loc 1 771 5
	call	_pka_test_case_xgcd
	.loc 1 772 5
	call	_pka_test_case2
	.loc 1 774 12
	li	a5,0
	.loc 1 775 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	bl_pka_test, .-bl_pka_test
	.section	.rodata
	.align	2
.LC11:
	.string	"--->>> PKA IRQ\r\n"
	.section	.text.bl_sec_pka_IRQHandler,"ax",@progbits
	.align	1
	.globl	bl_sec_pka_IRQHandler
	.type	bl_sec_pka_IRQHandler, @function
bl_sec_pka_IRQHandler:
.LFB24:
	.loc 1 778 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 779 5
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	puts
	.loc 1 780 5
	li	a1,1
	li	a0,3
	call	SEC_Eng_IntMask
	.loc 1 781 1
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
.LFE24:
	.size	bl_sec_pka_IRQHandler, .-bl_sec_pka_IRQHandler
	.section	.rodata.n.8,"a"
	.align	2
	.type	n.8, @object
	.size	n.8, 256
n.8:
	.base64	"2KZP6ij53wcEVfr7UF2+tp97U5bvBV4K9S3jZ3gHa/ayF6wuUUKEu/4+XwyFxJ3Ui9X6Fy2xJoHneQdFgkIiPQ2Xz97quLoWBYpbD+wHMKTGv/8gUhuUrfq3boMUSFgUmeejnsEIvf4gEVbblgq7C7zUN1X5nG1bh05QnyQOOhoMVGe9DzQDXkVbk0K+cean+Ukas7L7Du49zwxa+LWAQnwMdcXhFyk5VSux9XIGnlQLDvKVyFtpr1uBl66xbsRtldgiHjnwdlQZlgNMJYUv4YTXwWLhnp8f1Ljwwmh2fM9DPmCT0IllrnLN1gANkUKQmAKp9oIbtSL9tsJcrYaB"
	.ascii	"\035"
	.section	.rodata.nprime.7,"a"
	.align	2
	.type	nprime.7, @object
	.size	nprime.7, 256
nprime.7:
	.base64	"OGLB9VUtPWBeQuFl3u011cWF5E7rdKUis+1fW7G56Qp9pXRY+KGrF3TQB6N/0ptQKu1e3Fpp/g6x2FM1m+8ddlKehzywgk4D33XtCZ89N/boDckugfKdLqrmU3lrme9GNtkunRXRfyMUueszp9SOhmDJ2XzKVFlXlB5STcg/myQoJctXyo8WWjfCxq7F58Qu8yQct+n1kk7UUVD/3kQ8rnK9FjljiiKcldoh8EwSNi0ArbOJtQmePSSB/O+ZlSKds5Q5Mt3EKy+wE/61Xsdkk3q1gZMfn5YeelyN3o+u2cjdNR4XR7ar7baCIkxivRJORFxIK3VjHN76FQ2xUDG2"
	.ascii	"\313"
	.section	.rodata.m.6,"a"
	.align	2
	.type	m.6, @object
	.size	m.6, 256
m.6:
	.ascii	"016da41f4bf58a625aa5c307bcd1a7503db06c97b091938a21b5f68e377a"
	.ascii	"b899bef7ca1650e8f08d7287dd0f6d2ad64128838c595a2d10e467ab5453"
	.ascii	"c4ec770538ac9f806f08ff308e6edb5541f9f046c672b1207755b05f56d3"
	.ascii	"a6617dc754d5e204c1616a13e3b14e8e29c953386eedbc09407b94348776"
	.ascii	"67cb309c63042262"
	.section	.srodata.e.5,"a"
	.align	2
	.type	e.5, @object
	.size	e.5, 4
e.5:
	.base64	"AAEAAQ=="
	.section	.rodata.inv_r.4,"a"
	.align	2
	.type	inv_r.4, @object
	.size	inv_r.4, 256
inv_r.4:
	.base64	"L7f1StIZ3iR8281SbrwsXHaaNsOHM/fpPVs9zTN6O05V9dlCdmMoeqh899H2DSa6vp819IbFk0zodtqIuL6tJWvnRDscLJkV7jNGxuCwOW0gsmjHdUEs/8uTHUDSDmTqLgpVnwSd/V4kqShcLRsph2FrUGoxMUMSE+MfR4oR0lsmXnkEC6iwNiLaPF65CUiwMjgl7P1e7/+AM5+UjG4q+79lGJh+/0HeAC/Sfb9MVE4cRtar9gc0Y+MLgaCUfa9+N9bFpkqQbERq2Q8gsu8ioN84LQuzA7LI5o10v0WR4CIWv8TaVCaqZYWIw/uf/BTE/4uIR1+xVd9HXMAnOXvo"
	.ascii	"\255"
	.section	.rodata.encrypted.3,"a"
	.align	2
	.type	encrypted.3, @object
	.size	encrypted.3, 256
encrypted.3:
	.base64	"nvZvRvVRGrzCnEkCIWwgrkmRzbq5T6/9jZonvAtpV8S6GOFWRVW7P3vKRbOaDtdkbnHO0wjJS5erJORs48dSlzxFFzsXCpBQ7XNLSQfuE69HHtAksdLICXXzFJxxmeOUW/bvLnn1Hdynxe0KPx1D0BkUOrc1wj+hnADe9pZV+Ax5CGjzhHwuDFG2Xp7NUMxfcZnBDfA80IAC8I8SPkmkmx8UBfJ7QcE+irKrcCgvIJQXZfOJKG3NDOoDShCd+S70ZHl67Ea0385qjtg1YrME6vnE3roqXr9Z+u8qQhjJ9XpzuGd4l211S937m+ZMBJxhX5oSvy51Y91QuizvsJpl"
	.ascii	"$"
	.section	.rodata.n.2,"a"
	.align	2
	.type	n.2, @object
	.size	n.2, 256
n.2:
	.base64	"2KZP6ij53wcEVfr7UF2+tp97U5bvBV4K9S3jZ3gHa/ayF6wuUUKEu/4+XwyFxJ3Ui9X6Fy2xJoHneQdFgkIiPQ2Xz97quLoWBYpbD+wHMKTGv/8gUhuUrfq3boMUSFgUmeejnsEIvf4gEVbblgq7C7zUN1X5nG1bh05QnyQOOhoMVGe9DzQDXkVbk0K+cean+Ukas7L7Du49zwxa+LWAQnwMdcXhFyk5VSux9XIGnlQLDvKVyFtpr1uBl66xbsRtldgiHjnwdlQZlgNMJYUv4YTXwWLhnp8f1Ljwwmh2fM9DPmCT0IllrnLN1gANkUKQmAKp9oIbtSL9tsJcrYaB"
	.ascii	"\035"
	.section	.rodata.n_exp.1,"a"
	.align	2
	.type	n_exp.1, @object
	.size	n_exp.1, 256
n_exp.1:
	.zero	255
	.ascii	"\001"
	.section	.rodata.all_zero.0,"a"
	.align	2
	.type	all_zero.0, @object
	.size	all_zero.0, 256
all_zero.0:
	.zero	256
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbcd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x16
	.4byte	0x84
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xf
	.4byte	0x8b
	.uleb128 0xb
	.4byte	0x92
	.uleb128 0x10
	.4byte	0x32
	.byte	0x4
	.byte	0x41
	.byte	0x1
	.4byte	0x247
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xf
	.4byte	0x247
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xf
	.4byte	0x264
	.uleb128 0x10
	.4byte	0x32
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x28e
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x5
	.byte	0x36
	.byte	0x2
	.4byte	0x275
	.uleb128 0x10
	.4byte	0x32
	.byte	0x6
	.byte	0x86
	.byte	0xe
	.4byte	0x2e3
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x6
	.byte	0x91
	.byte	0x2
	.4byte	0x29a
	.uleb128 0x10
	.4byte	0x32
	.byte	0x6
	.byte	0xb7
	.byte	0xe
	.4byte	0x326
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x6
	.byte	0xbf
	.byte	0x2
	.4byte	0x2ef
	.uleb128 0xb
	.4byte	0x264
	.uleb128 0x7
	.4byte	0x264
	.4byte	0x347
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x7
	.byte	0x40
	.byte	0x12
	.4byte	0x264
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0x7
	.byte	0x41
	.byte	0x12
	.4byte	0x264
	.uleb128 0xb
	.4byte	0x247
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x433
	.byte	0x8
	.4byte	0x38c
	.uleb128 0x3
	.4byte	.LASF110
	.2byte	0x438
	.byte	0xd
	.4byte	0x353
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.2byte	0x439
	.byte	0x8
	.4byte	0x38c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x84
	.4byte	0x39c
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF112
	.2byte	0x43b
	.byte	0x27
	.4byte	0x364
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x14
	.2byte	0x43e
	.byte	0x10
	.4byte	0x3dd
	.uleb128 0x3
	.4byte	.LASF115
	.2byte	0x443
	.byte	0xe
	.4byte	0x347
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.2byte	0x444
	.byte	0x8
	.4byte	0x84
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF116
	.2byte	0x445
	.byte	0x17
	.4byte	0x39c
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF117
	.2byte	0x449
	.byte	0x3
	.4byte	0x3a8
	.uleb128 0x20
	.byte	0x4
	.byte	0x8
	.2byte	0x49c
	.byte	0x2
	.4byte	0x40c
	.uleb128 0x17
	.4byte	.LASF118
	.2byte	0x49e
	.byte	0x9
	.4byte	0x84
	.uleb128 0x17
	.4byte	.LASF115
	.2byte	0x49f
	.byte	0xf
	.4byte	0x347
	.byte	0
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x50
	.2byte	0x498
	.byte	0x10
	.4byte	0x481
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x49a
	.byte	0x8
	.4byte	0x481
	.byte	0
	.uleb128 0x21
	.string	"u"
	.byte	0x8
	.2byte	0x4a0
	.byte	0x4
	.4byte	0x3e9
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x4a2
	.byte	0xf
	.4byte	0x491
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF122
	.2byte	0x4a3
	.byte	0xe
	.4byte	0x4a1
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x4a4
	.byte	0xa
	.4byte	0x4b1
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF124
	.2byte	0x4a7
	.byte	0xb
	.4byte	0x247
	.byte	0x46
	.uleb128 0x3
	.4byte	.LASF125
	.2byte	0x4af
	.byte	0xf
	.4byte	0x347
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF126
	.2byte	0x4b0
	.byte	0xb
	.4byte	0x247
	.byte	0x4c
	.byte	0
	.uleb128 0x7
	.4byte	0x84
	.4byte	0x491
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x3dd
	.4byte	0x4a1
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x347
	.4byte	0x4b1
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x247
	.4byte	0x4c1
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF127
	.2byte	0x4b3
	.byte	0x3
	.4byte	0x40c
	.uleb128 0x11
	.4byte	.LASF128
	.2byte	0x4b4
	.byte	0x17
	.4byte	0x4c1
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x9
	.byte	0x30
	.byte	0x22
	.4byte	0x4e5
	.uleb128 0xb
	.4byte	0x4ea
	.uleb128 0x22
	.4byte	.LASF186
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0xa
	.byte	0x25
	.byte	0x17
	.4byte	0x4d9
	.uleb128 0x23
	.4byte	.LASF187
	.byte	0xe
	.byte	0x3b
	.byte	0x1a
	.4byte	0x4ef
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x32
	.byte	0x11
	.4byte	0x337
	.uleb128 0x5
	.byte	0x3
	.4byte	trng_buffer
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x33
	.byte	0x15
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	trng_idx
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x35
	.byte	0x1a
	.4byte	0x4cd
	.uleb128 0x5
	.byte	0x3
	.4byte	sha_mutex_buf
	.uleb128 0x24
	.4byte	0x4fb
	.byte	0x1
	.byte	0x36
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	g_bl_sec_sha_mutex
	.uleb128 0x4
	.4byte	.LASF134
	.2byte	0x219
	.4byte	0x55e
	.uleb128 0x2
	.4byte	0x326
	.uleb128 0x2
	.4byte	0x28e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.2byte	0x1f8
	.4byte	0x583
	.uleb128 0x2
	.4byte	0x35f
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.2byte	0x1fc
	.4byte	0x5b2
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.2byte	0x203
	.4byte	0x5e1
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.2byte	0x1da
	.4byte	0x601
	.uleb128 0x2
	.4byte	0x2e3
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x332
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.2byte	0x1ff
	.4byte	0x630
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x1de
	.4byte	0x655
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x1ef
	.4byte	0x68e
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.2byte	0x1e6
	.4byte	0x6bd
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.2byte	0x206
	.4byte	0x6e7
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x258
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0x1db
	.4byte	0x707
	.uleb128 0x2
	.4byte	0x2e3
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0x1d8
	.4byte	0x72c
	.uleb128 0x2
	.4byte	0x2e3
	.uleb128 0x2
	.4byte	0x247
	.uleb128 0x2
	.4byte	0x72c
	.uleb128 0x2
	.4byte	0x258
	.uleb128 0x2
	.4byte	0x247
	.byte	0
	.uleb128 0xb
	.4byte	0x270
	.uleb128 0x18
	.4byte	.LASF146
	.2byte	0x1d6
	.uleb128 0x18
	.4byte	.LASF147
	.2byte	0x1d5
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x20
	.4byte	0x74f
	.uleb128 0x2
	.4byte	0x6a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF149
	.byte	0x32
	.4byte	0x764
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0x25
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x587
	.byte	0xf
	.4byte	0x4d9
	.4byte	0x780
	.uleb128 0x2
	.4byte	0x253
	.uleb128 0x2
	.4byte	0x780
	.byte	0
	.uleb128 0xb
	.4byte	0x4c1
	.uleb128 0x26
	.4byte	.LASF188
	.byte	0xf
	.2byte	0x1ef
	.byte	0xf
	.4byte	0x55
	.uleb128 0x1a
	.4byte	.LASF151
	.byte	0xc
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0x7a8
	.uleb128 0x2
	.4byte	0x97
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF152
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x7c8
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0x7cd
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xb
	.4byte	0x7d2
	.uleb128 0x16
	.4byte	0x7c8
	.uleb128 0x27
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x309
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x2fd
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF158
	.2byte	0x1e6
	.byte	0xd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x876
	.uleb128 0xa
	.4byte	.LASF153
	.2byte	0x1e8
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"n"
	.2byte	0x1e9
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	n.2
	.uleb128 0xa
	.4byte	.LASF154
	.2byte	0x221
	.byte	0x1a
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	n_exp.1
	.uleb128 0xa
	.4byte	.LASF155
	.2byte	0x233
	.byte	0x1a
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	all_zero.0
	.uleb128 0xa
	.4byte	.LASF156
	.2byte	0x245
	.byte	0xe
	.4byte	0x88b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0xa
	.4byte	.LASF157
	.2byte	0x246
	.byte	0xd
	.4byte	0x247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -277
	.byte	0
	.uleb128 0x7
	.4byte	0x253
	.4byte	0x886
	.uleb128 0x8
	.4byte	0x6a
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.4byte	0x876
	.uleb128 0x7
	.4byte	0x264
	.4byte	0x89b
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x3f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF159
	.2byte	0x1a2
	.byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c2
	.uleb128 0x2a
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x1a2
	.byte	0x3d
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF160
	.2byte	0x104
	.byte	0xd
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94c
	.uleb128 0x12
	.string	"n"
	.2byte	0x106
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	n.8
	.uleb128 0x12
	.string	"m"
	.2byte	0x118
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	m.6
	.uleb128 0x12
	.string	"e"
	.2byte	0x12a
	.4byte	0x95c
	.uleb128 0x5
	.byte	0x3
	.4byte	e.5
	.uleb128 0xa
	.4byte	.LASF161
	.2byte	0x12d
	.byte	0x1a
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	nprime.7
	.uleb128 0xa
	.4byte	.LASF162
	.2byte	0x13f
	.byte	0x1a
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	inv_r.4
	.uleb128 0xa
	.4byte	.LASF156
	.2byte	0x151
	.byte	0xe
	.4byte	0x88b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0xa
	.4byte	.LASF163
	.2byte	0x152
	.byte	0x1a
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	encrypted.3
	.byte	0
	.uleb128 0x7
	.4byte	0x253
	.4byte	0x95c
	.uleb128 0x8
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0x94c
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0xee
	.byte	0xd
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bb
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xee
	.byte	0x2d
	.4byte	0x9bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xee
	.byte	0x46
	.4byte	0x9bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"len"
	.byte	0xee
	.byte	0x56
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"i"
	.byte	0xf0
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0xf0
	.byte	0x10
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	0x253
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0xd4
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fd
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xd4
	.byte	0x35
	.4byte	0x9bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xd4
	.byte	0x3f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"i"
	.byte	0xd6
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF171
	.byte	0x1
	.byte	0xca
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.byte	0xc4
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa90
	.uleb128 0xd
	.string	"src"
	.byte	0xc4
	.byte	0x2a
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0xc4
	.byte	0x49
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"len"
	.byte	0xc4
	.byte	0x65
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"exp"
	.byte	0xc5
	.byte	0x1d
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xc5
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"mod"
	.byte	0xc5
	.byte	0x59
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xc5
	.byte	0x72
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0xb6
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF176
	.byte	0x9d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad6
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x9f
	.byte	0xe
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"val"
	.byte	0xa0
	.byte	0xe
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF179
	.byte	0x1
	.byte	0x8d
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0d
	.uleb128 0xe
	.string	"val"
	.byte	0x8f
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0x90
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF181
	.byte	0x6f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5a
	.uleb128 0xd
	.string	"buf"
	.byte	0x6f
	.byte	0x1e
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"len"
	.byte	0x6f
	.byte	0x27
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"pos"
	.byte	0x71
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0x71
	.byte	0xe
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF183
	.byte	0x66
	.byte	0xa
	.4byte	0x264
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0x4b
	.byte	0x14
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba1
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x4d
	.byte	0xe
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"val"
	.byte	0x4e
	.byte	0xe
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF190
	.byte	0x1
	.byte	0x38
	.byte	0x14
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x3a
	.byte	0xe
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"val"
	.byte	0x3b
	.byte	0xe
	.4byte	0x264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.byte	0
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
	.sleb128 11
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF153:
	.string	"count"
.LASF91:
	.string	"SEC_ENG_PKA_REG_SIZE_32"
.LASF102:
	.string	"SEC_ENG_INT_SHA"
.LASF21:
	.string	"SEC_BMX_ERR_IRQn"
.LASF82:
	.string	"size_t"
.LASF140:
	.string	"Sec_Eng_PKA_Move_Data"
.LASF55:
	.string	"TIMER_WDT_IRQn"
.LASF119:
	.string	"xSTATIC_QUEUE"
.LASF90:
	.string	"SEC_ENG_PKA_REG_SIZE_16"
.LASF19:
	.string	"L1C_BMX_ERR_IRQn"
.LASF42:
	.string	"GPADC_DMA_IRQn"
.LASF154:
	.string	"n_exp"
.LASF9:
	.string	"long long unsigned int"
.LASF146:
	.string	"Sec_Eng_PKA_BigEndian_Enable"
.LASF178:
	.string	"bl_exp_mod"
.LASF129:
	.string	"QueueHandle_t"
.LASF188:
	.string	"aos_now_ms"
.LASF174:
	.string	"bl_sec_init"
.LASF24:
	.string	"SDIO_IRQn"
.LASF136:
	.string	"Sec_Eng_PKA_LSUB"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF148:
	.string	"bl_irq_enable"
.LASF184:
	.string	"wait_trng4feed"
.LASF15:
	.string	"MEXT_IRQn"
.LASF27:
	.string	"SEC_CDET_IRQn"
.LASF57:
	.string	"RESERVED11"
.LASF123:
	.string	"ucDummy5"
.LASF124:
	.string	"ucDummy6"
.LASF60:
	.string	"RESERVED14"
.LASF126:
	.string	"ucDummy9"
.LASF63:
	.string	"RESERVED17"
.LASF64:
	.string	"RESERVED18"
.LASF65:
	.string	"RESERVED19"
.LASF6:
	.string	"long int"
.LASF167:
	.string	"is_failed"
.LASF61:
	.string	"GPIO_INT0_IRQn"
.LASF105:
	.string	"SEC_ENG_INT_GMAC"
.LASF109:
	.string	"TickType_t"
.LASF160:
	.string	"_pka_test_case2"
.LASF95:
	.string	"SEC_ENG_PKA_REG_SIZE_192"
.LASF84:
	.string	"uint16_t"
.LASF164:
	.string	"RSA_Compare_Data"
.LASF104:
	.string	"SEC_ENG_INT_CDET"
.LASF175:
	.string	"_dump_rsa_data"
.LASF190:
	.string	"_trng_trigger"
.LASF49:
	.string	"I2C_IRQn"
.LASF22:
	.string	"RF_TOP_INT0_IRQn"
.LASF122:
	.string	"uxDummy4"
.LASF187:
	.string	"g_bl_sec_sha_mutex"
.LASF125:
	.string	"uxDummy8"
.LASF135:
	.string	"Sec_Eng_PKA_LCMP"
.LASF66:
	.string	"RESERVED20"
.LASF87:
	.string	"MASK"
.LASF94:
	.string	"SEC_ENG_PKA_REG_SIZE_128"
.LASF159:
	.string	"dump_xgcd_step"
.LASF10:
	.string	"unsigned int"
.LASF43:
	.string	"EFUSE_IRQn"
.LASF71:
	.string	"WIFI_IRQn"
.LASF67:
	.string	"PDS_WAKEUP_IRQn"
.LASF7:
	.string	"long unsigned int"
.LASF165:
	.string	"expected"
.LASF181:
	.string	"bl_rand_stream"
.LASF132:
	.string	"trng_idx"
.LASF168:
	.string	"data"
.LASF169:
	.string	"size"
.LASF149:
	.string	"bl_irq_register"
.LASF158:
	.string	"_pka_test_case_xgcd"
.LASF26:
	.string	"SEC_GMAC_IRQn"
.LASF28:
	.string	"SEC_PKA_IRQn"
.LASF152:
	.string	"memcpy"
.LASF72:
	.string	"BZ_PHY_IRQn"
.LASF155:
	.string	"all_zero"
.LASF98:
	.string	"SEC_ENG_PKA_REG_SIZE_512"
.LASF46:
	.string	"UART0_IRQn"
.LASF127:
	.string	"StaticQueue_t"
.LASF86:
	.string	"UNMASK"
.LASF89:
	.string	"SEC_ENG_PKA_REG_SIZE_8"
.LASF151:
	.string	"puts"
.LASF161:
	.string	"nprime"
.LASF31:
	.string	"SEC_SHA_IRQn"
.LASF30:
	.string	"SEC_AES_IRQn"
.LASF121:
	.string	"xDummy3"
.LASF116:
	.string	"xDummy4"
.LASF117:
	.string	"StaticList_t"
.LASF112:
	.string	"StaticMiniListItem_t"
.LASF157:
	.string	"pka_a_eq_0"
.LASF145:
	.string	"Sec_Eng_PKA_Write_Data"
.LASF96:
	.string	"SEC_ENG_PKA_REG_SIZE_256"
.LASF13:
	.string	"MSOFT_IRQn"
.LASF51:
	.string	"PWM_IRQn"
.LASF134:
	.string	"SEC_Eng_IntMask"
.LASF32:
	.string	"DMA_ALL_IRQn"
.LASF62:
	.string	"RESERVED16"
.LASF79:
	.string	"MAC_PORT_TRG_IRQn"
.LASF77:
	.string	"MAC_TX_TRG_IRQn"
.LASF47:
	.string	"UART1_IRQn"
.LASF99:
	.string	"SEC_ENG_PKA_REG_SIZE_Type"
.LASF182:
	.string	"copysize"
.LASF170:
	.string	"bl_pka_test"
.LASF93:
	.string	"SEC_ENG_PKA_REG_SIZE_96"
.LASF34:
	.string	"RESERVED1"
.LASF35:
	.string	"RESERVED2"
.LASF38:
	.string	"RESERVED3"
.LASF39:
	.string	"RESERVED4"
.LASF41:
	.string	"RESERVED5"
.LASF45:
	.string	"RESERVED6"
.LASF48:
	.string	"RESERVED7"
.LASF114:
	.string	"xSTATIC_LIST"
.LASF52:
	.string	"RESERVED9"
.LASF73:
	.string	"BLE_IRQn"
.LASF133:
	.string	"sha_mutex_buf"
.LASF186:
	.string	"QueueDefinition"
.LASF37:
	.string	"IRRX_IRQn"
.LASF14:
	.string	"MTIME_IRQn"
.LASF3:
	.string	"unsigned char"
.LASF172:
	.string	"exp_len"
.LASF74:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF40:
	.string	"SF_CTRL_IRQn"
.LASF141:
	.string	"Sec_Eng_PKA_MEXP"
.LASF20:
	.string	"L1C_BMX_TO_IRQn"
.LASF4:
	.string	"short int"
.LASF36:
	.string	"IRTX_IRQn"
.LASF180:
	.string	"counter"
.LASF70:
	.string	"BOR_IRQn"
.LASF113:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF76:
	.string	"MAC_RX_TRG_IRQn"
.LASF177:
	.string	"TRNGx"
.LASF189:
	.string	"bl_sec_pka_IRQHandler"
.LASF92:
	.string	"SEC_ENG_PKA_REG_SIZE_64"
.LASF88:
	.string	"BL_Mask_Type"
.LASF33:
	.string	"RESERVED0"
.LASF183:
	.string	"bl_sec_get_random_word"
.LASF166:
	.string	"input"
.LASF163:
	.string	"encrypted"
.LASF162:
	.string	"inv_r"
.LASF85:
	.string	"uint32_t"
.LASF97:
	.string	"SEC_ENG_PKA_REG_SIZE_384"
.LASF50:
	.string	"RESERVED8"
.LASF171:
	.string	"bl_sec_test"
.LASF18:
	.string	"BMX_TO_IRQn"
.LASF11:
	.string	"long double"
.LASF176:
	.string	"sec_trng_IRQHandler"
.LASF130:
	.string	"SemaphoreHandle_t"
.LASF12:
	.string	"char"
.LASF120:
	.string	"pvDummy1"
.LASF118:
	.string	"pvDummy2"
.LASF111:
	.string	"pvDummy3"
.LASF115:
	.string	"uxDummy2"
.LASF78:
	.string	"MAC_GEN_IRQn"
.LASF173:
	.string	"mod_len"
.LASF142:
	.string	"Sec_Eng_PKA_MREM"
.LASF179:
	.string	"bl_rand"
.LASF106:
	.string	"SEC_ENG_INT_ALL"
.LASF107:
	.string	"SEC_ENG_INT_Type"
.LASF17:
	.string	"BMX_ERR_IRQn"
.LASF75:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF5:
	.string	"short unsigned int"
.LASF53:
	.string	"TIMER_CH0_IRQn"
.LASF110:
	.string	"xDummy2"
.LASF143:
	.string	"Sec_Eng_PKA_LMUL2N"
.LASF23:
	.string	"RF_TOP_INT1_IRQn"
.LASF68:
	.string	"HBN_OUT0_IRQn"
.LASF131:
	.string	"trng_buffer"
.LASF56:
	.string	"RESERVED10"
.LASF80:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF58:
	.string	"RESERVED12"
.LASF59:
	.string	"RESERVED13"
.LASF81:
	.string	"IRQn_LAST"
.LASF150:
	.string	"xQueueCreateMutexStatic"
.LASF147:
	.string	"Sec_Eng_PKA_Reset"
.LASF144:
	.string	"Sec_Eng_PKA_CREG"
.LASF83:
	.string	"uint8_t"
.LASF101:
	.string	"SEC_ENG_INT_AES"
.LASF16:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF29:
	.string	"SEC_TRNG_IRQn"
.LASF139:
	.string	"Sec_Eng_PKA_LMUL"
.LASF25:
	.string	"DMA_BMX_ERR_IRQn"
.LASF44:
	.string	"SPI_IRQn"
.LASF103:
	.string	"SEC_ENG_INT_PKA"
.LASF54:
	.string	"TIMER_CH1_IRQn"
.LASF128:
	.string	"StaticSemaphore_t"
.LASF185:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF69:
	.string	"HBN_OUT1_IRQn"
.LASF138:
	.string	"Sec_Eng_PKA_Read_Data"
.LASF108:
	.string	"UBaseType_t"
.LASF156:
	.string	"result"
.LASF137:
	.string	"Sec_Eng_PKA_LDIV"
.LASF100:
	.string	"SEC_ENG_INT_TRNG"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
