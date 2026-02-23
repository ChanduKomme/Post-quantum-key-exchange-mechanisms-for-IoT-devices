	.file	"ef_env.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/easyflash4" "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_env.c"
	.section	.sbss.env_start_addr,"aw",@nobits
	.align	2
	.type	env_start_addr, @object
	.size	env_start_addr, 4
env_start_addr:
	.zero	4
	.section	.sbss.default_env_set,"aw",@nobits
	.align	2
	.type	default_env_set, @object
	.size	default_env_set, 4
default_env_set:
	.zero	4
	.section	.sbss.default_env_set_size,"aw",@nobits
	.align	2
	.type	default_env_set_size, @object
	.size	default_env_set_size, 4
default_env_set_size:
	.zero	4
	.section	.sbss.init_ok,"aw",@nobits
	.type	init_ok, @object
	.size	init_ok, 1
init_ok:
	.zero	1
	.section	.sbss.gc_request,"aw",@nobits
	.type	gc_request, @object
	.size	gc_request, 1
gc_request:
	.zero	1
	.section	.sbss.in_recovery_check,"aw",@nobits
	.type	in_recovery_check, @object
	.size	in_recovery_check, 1
in_recovery_check:
	.zero	1
	.globl	env_cache_table
	.section	.bss.env_cache_table,"aw",@nobits
	.align	2
	.type	env_cache_table, @object
	.size	env_cache_table, 128
env_cache_table:
	.zero	128
	.globl	sector_cache_table
	.section	.bss.sector_cache_table,"aw",@nobits
	.align	2
	.type	sector_cache_table, @object
	.size	sector_cache_table, 32
sector_cache_table:
	.zero	32
	.section	.text.set_status,"ax",@progbits
	.align	1
	.type	set_status, @function
set_status:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_env.c"
	.loc 1 224 1
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
	.loc 1 225 12
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 233 61
	lw	a5,-40(s0)
	slli	a5,a5,3
	addi	a5,a5,-1
	.loc 1 233 5
	srli	a5,a5,3
	mv	a2,a5
	li	a1,255
	lw	a0,-36(s0)
	call	memset
	.loc 1 234 8
	lw	a5,-44(s0)
	beq	a5,zero,.L2
	.loc 1 239 20
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 240 21
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 240 34
	sb	zero,0(a5)
.L2:
	.loc 1 244 12
	lw	a5,-20(s0)
	.loc 1 245 1
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
.LFE5:
	.size	set_status, .-set_status
	.section	.text.get_status,"ax",@progbits
	.align	1
	.type	get_status, @function
get_status:
.LFB6:
	.loc 1 248 1
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
	.loc 1 249 12
	sw	zero,-20(s0)
	.loc 1 249 19
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 251 11
	j	.L5
.L8:
	.loc 1 258 47
	lw	a4,-40(s0)
	li	a5,536870912
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 258 25
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 258 12
	beq	a5,zero,.L10
	.loc 1 262 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L5:
	.loc 1 251 23
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	.loc 1 251 12
	bne	a5,zero,.L8
	j	.L7
.L10:
	.loc 1 259 13
	nop
.L7:
	.loc 1 265 27
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 266 1
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
	.size	get_status, .-get_status
	.section	.rodata
	.align	2
.LC0:
	.string	"status_index < status_num"
	.align	2
.LC1:
	.string	"(%s) has assert failed at %s.\r\n"
	.align	2
.LC2:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_env.c"
	.align	2
.LC3:
	.string	"status_table"
	.section	.text.write_status,"ax",@progbits
	.align	1
	.type	write_status, @function
write_status:
.LFB7:
	.loc 1 269 1
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
	sw	a3,-48(s0)
	.loc 1 270 15
	sb	zero,-17(s0)
	.loc 1 273 8
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L12
	.loc 1 273 41 discriminator 1
	lui	a5,%hi(__FUNCTION__.11)
	addi	a4,a5,%lo(__FUNCTION__.11)
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,273
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L13:
	.loc 1 273 221
	nop
	j	.L13
.L12:
	.loc 1 274 8
	lw	a5,-40(s0)
	bne	a5,zero,.L14
	.loc 1 274 28 discriminator 1
	lui	a5,%hi(__FUNCTION__.11)
	addi	a4,a5,%lo(__FUNCTION__.11)
	lui	a5,%hi(.LC3)
	addi	a3,a5,%lo(.LC3)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,274
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L15:
	.loc 1 274 195
	nop
	j	.L15
.L14:
	.loc 1 277 18
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	set_status
	sw	a0,-24(s0)
	.loc 1 280 8
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L16
	.loc 1 281 16
	li	a5,0
	j	.L17
.L16:
	.loc 1 288 33
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a3,a4,a5
	.loc 1 288 60
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 288 14
	li	a2,1
	mv	a1,a5
	mv	a0,a3
	call	ef_port_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 291 12
	lbu	a5,-17(s0)
.L17:
	.loc 1 292 1
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
	.size	write_status, .-write_status
	.section	.text.read_status,"ax",@progbits
	.align	1
	.type	read_status, @function
read_status:
.LFB8:
	.loc 1 295 1
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
	.loc 1 296 8
	lw	a5,-24(s0)
	bne	a5,zero,.L19
	.loc 1 296 28 discriminator 1
	lui	a5,%hi(__FUNCTION__.10)
	addi	a4,a5,%lo(__FUNCTION__.10)
	lui	a5,%hi(.LC3)
	addi	a3,a5,%lo(.LC3)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,296
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L20:
	.loc 1 296 195
	nop
	j	.L20
.L19:
	.loc 1 298 79
	lw	a5,-28(s0)
	slli	a5,a5,3
	addi	a5,a5,-1
	.loc 1 298 5
	srli	a5,a5,3
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ef_port_read
	.loc 1 300 12
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	get_status
	mv	a5,a0
	.loc 1 301 1
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
.LFE8:
	.size	read_status, .-read_status
	.section	.text.update_sector_cache,"ax",@progbits
	.align	1
	.type	update_sector_cache, @function
update_sector_cache:
.LFB9:
	.loc 1 308 1
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
	.loc 1 309 15
	li	a5,4
	sw	a5,-24(s0)
	.loc 1 311 12
	sw	zero,-20(s0)
	.loc 1 311 5
	j	.L23
.L29:
	.loc 1 312 12
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L24
	.loc 1 312 63 discriminator 1
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a4,a5
	.loc 1 312 37 discriminator 1
	lw	a4,-40(s0)
	bgeu	a4,a5,.L24
	.loc 1 314 38
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 314 16
	lw	a4,-36(s0)
	bne	a4,a5,.L25
	.loc 1 315 44
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 316 50
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 317 17
	j	.L22
.L25:
	.loc 1 318 46
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 318 23
	li	a5,-1
	bne	a4,a5,.L30
	.loc 1 318 67 discriminator 1
	lw	a4,-24(s0)
	li	a5,4
	bne	a4,a5,.L30
	.loc 1 319 29
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 314 16
	j	.L30
.L24:
	.loc 1 321 41
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 321 19
	lw	a4,-36(s0)
	bne	a4,a5,.L28
	.loc 1 323 40
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-1
	sw	a4,0(a5)
	.loc 1 324 13
	j	.L22
.L30:
	.loc 1 314 16
	nop
.L28:
	.loc 1 311 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L23:
	.loc 1 311 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L29
	.loc 1 328 8
	lw	a4,-24(s0)
	li	a5,3
	bgtu	a4,a5,.L22
	.loc 1 329 46
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 330 52
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,4(a5)
.L22:
	.loc 1 332 1
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
	.size	update_sector_cache, .-update_sector_cache
	.section	.text.get_sector_from_cache,"ax",@progbits
	.align	1
	.type	get_sector_from_cache, @function
get_sector_from_cache:
.LFB10:
	.loc 1 338 1
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
	.loc 1 341 12
	sw	zero,-20(s0)
	.loc 1 341 5
	j	.L32
.L36:
	.loc 1 342 34
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 342 12
	lw	a4,-36(s0)
	bne	a4,a5,.L33
	.loc 1 343 16
	lw	a5,-40(s0)
	beq	a5,zero,.L34
	.loc 1 344 52
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 344 29
	lw	a5,-40(s0)
	sw	a4,0(a5)
.L34:
	.loc 1 346 20
	li	a5,1
	j	.L35
.L33:
	.loc 1 341 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	.loc 1 341 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L36
	.loc 1 350 12
	li	a5,0
.L35:
	.loc 1 351 1
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
	.size	get_sector_from_cache, .-get_sector_from_cache
	.section	.text.update_env_cache,"ax",@progbits
	.align	1
	.type	update_env_cache, @function
update_env_cache:
.LFB11:
	.loc 1 354 1
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
	.loc 1 355 15
	li	a5,16
	sw	a5,-24(s0)
	.loc 1 355 33
	li	a5,16
	sw	a5,-28(s0)
	.loc 1 356 37
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	li	a0,0
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 356 70 discriminator 1
	srli	a5,a5,16
	.loc 1 356 14 discriminator 1
	sh	a5,-32(s0)
	.loc 1 356 78 discriminator 1
	li	a5,-1
	sh	a5,-30(s0)
	.loc 1 358 12
	sw	zero,-20(s0)
	.loc 1 358 5
	j	.L38
.L46:
	.loc 1 359 12
	lw	a4,-44(s0)
	li	a5,-1
	beq	a4,a5,.L39
	.loc 1 361 35
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 361 16
	lhu	a4,-32(s0)
	bne	a4,a5,.L40
	.loc 1 362 41
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 1 363 17
	j	.L37
.L40:
	.loc 1 364 43
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 364 23
	li	a5,-1
	bne	a4,a5,.L42
	.loc 1 364 64 discriminator 1
	lw	a4,-24(s0)
	li	a5,16
	bne	a4,a5,.L42
	.loc 1 365 29
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L45
.L42:
	.loc 1 366 42
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 366 23
	li	a5,-1
	beq	a4,a5,.L45
	.loc 1 367 39
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,2(a5)
	.loc 1 367 20
	beq	a5,zero,.L44
	.loc 1 368 39
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,2(a5)
	.loc 1 368 46
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(env_cache_table)
	addi	a3,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a3,a5
	sh	a4,2(a5)
.L44:
	.loc 1 370 39
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,2(a5)
	.loc 1 370 20
	lhu	a4,-30(s0)
	bleu	a4,a5,.L45
	.loc 1 371 40
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 1 372 34
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,2(a5)
	sh	a5,-30(s0)
	j	.L45
.L39:
	.loc 1 375 38
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 375 19
	lhu	a4,-32(s0)
	bne	a4,a5,.L45
	.loc 1 377 37
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-1
	sw	a4,4(a5)
	.loc 1 378 39
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sh	zero,2(a5)
	.loc 1 379 13
	j	.L37
.L45:
	.loc 1 358 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L38:
	.loc 1 358 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L46
	.loc 1 383 8
	lw	a4,-24(s0)
	li	a5,15
	bgtu	a4,a5,.L47
	.loc 1 384 43
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 1 385 47
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a4,-32(s0)
	sh	a4,0(a5)
	.loc 1 386 45
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sh	zero,2(a5)
	j	.L37
.L47:
	.loc 1 387 15
	lw	a4,-28(s0)
	li	a5,15
	bgtu	a4,a5,.L37
	.loc 1 388 50
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 1 389 54
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a4,-32(s0)
	sh	a4,0(a5)
	.loc 1 390 52
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sh	zero,2(a5)
.L37:
	.loc 1 392 1
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
	.size	update_env_cache, .-update_env_cache
	.section	.text.get_env_from_cache,"ax",@progbits
	.align	1
	.type	get_env_from_cache, @function
get_env_from_cache:
.LFB12:
	.loc 1 398 1
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
	sw	a2,-108(s0)
	.loc 1 400 37
	lw	a2,-104(s0)
	lw	a1,-100(s0)
	li	a0,0
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 400 70 discriminator 1
	srli	a5,a5,16
	.loc 1 400 14 discriminator 1
	sh	a5,-22(s0)
	.loc 1 402 12
	sw	zero,-20(s0)
	.loc 1 402 5
	j	.L49
.L55:
	.loc 1 403 32
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 403 12
	li	a5,-1
	beq	a4,a5,.L50
	.loc 1 403 75 discriminator 1
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 1 403 53 discriminator 1
	lhu	a4,-22(s0)
	bne	a4,a5,.L50
.LBB14:
	.loc 1 406 44
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	.loc 1 406 50
	addi	a5,a5,28
	.loc 1 406 13
	addi	a4,s0,-88
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	ef_port_read
	.loc 1 407 18
	addi	a5,s0,-88
	lw	a2,-104(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	strncmp
	mv	a5,a0
	.loc 1 407 16 discriminator 1
	bne	a5,zero,.L50
	.loc 1 408 43
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	.loc 1 408 23
	lw	a5,-108(s0)
	sw	a4,0(a5)
	.loc 1 409 39
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a4,2(a5)
	.loc 1 409 20
	li	a5,65536
	addi	a5,a5,-18
	bleu	a4,a5,.L52
	.loc 1 410 47
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-1
	sh	a4,2(a5)
	j	.L53
.L52:
	.loc 1 412 39
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lhu	a5,2(a5)
	.loc 1 412 47
	addi	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(env_cache_table)
	addi	a3,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a3,a5
	sh	a4,2(a5)
.L53:
	.loc 1 414 24
	li	a5,1
	j	.L54
.L50:
.LBE14:
	.loc 1 402 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L49:
	.loc 1 402 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L55
	.loc 1 419 12
	li	a5,0
.L54:
	.loc 1 420 1
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
.LFE12:
	.size	get_env_from_cache, .-get_env_from_cache
	.section	.text.continue_ff_addr,"ax",@progbits
	.align	1
	.type	continue_ff_addr, @function
continue_ff_addr:
.LFB13:
	.loc 1 427 1
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
	.loc 1 428 22
	sb	zero,-17(s0)
	.loc 1 429 15
	lw	a5,-68(s0)
	sw	a5,-28(s0)
	.loc 1 431 5
	j	.L57
.L63:
	.loc 1 432 19
	lw	a5,-68(s0)
	addi	a5,a5,32
	.loc 1 432 12
	lw	a4,-72(s0)
	bleu	a4,a5,.L58
	.loc 1 433 23
	li	a5,32
	sw	a5,-32(s0)
	j	.L59
.L58:
	.loc 1 435 23
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
.L59:
	.loc 1 437 9
	addi	a5,s0,-64
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	ef_port_read
	.loc 1 438 16
	sw	zero,-24(s0)
	.loc 1 438 9
	j	.L60
.L62:
	.loc 1 439 16
	lbu	a4,-17(s0)
	li	a5,255
	beq	a4,a5,.L61
	.loc 1 439 41 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-48(a5)
	.loc 1 439 35 discriminator 1
	li	a5,255
	bne	a4,a5,.L61
	.loc 1 440 22
	lw	a4,-68(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L61:
	.loc 1 442 23
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-48(a5)
	sb	a5,-17(s0)
	.loc 1 438 37 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L60:
	.loc 1 438 23 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L62
	.loc 1 431 31
	lw	a5,-68(s0)
	addi	a5,a5,32
	sw	a5,-68(s0)
.L57:
	.loc 1 431 18 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L63
	.loc 1 446 8
	lbu	a4,-17(s0)
	li	a5,255
	bne	a4,a5,.L64
	.loc 1 447 51
	lw	a5,-28(s0)
	j	.L66
.L64:
	.loc 1 449 16
	lw	a5,-72(s0)
.L66:
	.loc 1 451 1
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
.LFE13:
	.size	continue_ff_addr, .-continue_ff_addr
	.section	.text.find_next_env_addr,"ax",@progbits
	.align	1
	.type	find_next_env_addr, @function
find_next_env_addr:
.LFB14:
	.loc 1 457 1
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
	.loc 1 459 14
	lw	a5,-68(s0)
	sw	a5,-24(s0)
	.loc 1 465 9
	lw	a4,-68(s0)
	li	a5,-4096
	and	a5,a4,a5
	addi	a4,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	get_sector_from_cache
	mv	a5,a0
	.loc 1 465 8 discriminator 1
	beq	a5,zero,.L70
	.loc 1 465 81 discriminator 2
	lw	a5,-64(s0)
	.loc 1 465 72 discriminator 2
	lw	a4,-68(s0)
	bne	a4,a5,.L70
	.loc 1 466 16
	li	a5,-1
	j	.L76
.L75:
	.loc 1 471 9
	addi	a5,s0,-60
	li	a2,32
	mv	a1,a5
	lw	a0,-68(s0)
	call	ef_port_read
	.loc 1 472 16
	sw	zero,-20(s0)
	.loc 1 472 9
	j	.L71
.L74:
	.loc 1 474 24
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-44(a5)
	mv	a4,a5
	.loc 1 474 37
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 474 34
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-44(a5)
	.loc 1 474 42
	slli	a5,a5,8
	.loc 1 474 28
	add	a4,a4,a5
	.loc 1 474 57
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 474 54
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-44(a5)
	.loc 1 474 62
	slli	a5,a5,16
	.loc 1 474 48
	add	a4,a4,a5
	.loc 1 474 78
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 474 75
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-44(a5)
	.loc 1 474 83
	slli	a5,a5,24
	.loc 1 474 69
	add	a5,a4,a5
	.loc 1 474 19
	sw	a5,-28(s0)
	.loc 1 478 16
	lw	a4,-28(s0)
	li	a5,808734720
	addi	a5,a5,1611
	bne	a4,a5,.L72
	.loc 1 478 47 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 478 51 discriminator 1
	addi	a5,a5,-8
	.loc 1 478 37 discriminator 1
	lw	a4,-24(s0)
	bgtu	a4,a5,.L72
	.loc 1 479 30
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 479 34
	addi	a5,a5,-8
	j	.L76
.L72:
	.loc 1 472 77 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L71:
	.loc 1 472 56 discriminator 1
	lw	a4,-20(s0)
	li	a5,27
	bgtu	a4,a5,.L73
	.loc 1 472 65 discriminator 3
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 472 56 discriminator 3
	lw	a4,-72(s0)
	bgtu	a4,a5,.L74
.L73:
	.loc 1 470 31
	lw	a5,-68(s0)
	addi	a5,a5,28
	sw	a5,-68(s0)
.L70:
	.loc 1 470 18 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L75
	.loc 1 484 12
	li	a5,-1
.L76:
	.loc 1 485 1
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
.LFE14:
	.size	find_next_env_addr, .-find_next_env_addr
	.section	.text.get_next_env_addr,"ax",@progbits
	.align	1
	.type	get_next_env_addr, @function
get_next_env_addr:
.LFB15:
	.loc 1 488 1
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
	.loc 1 489 14
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 491 23
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 491 8
	li	a5,1
	bne	a4,a5,.L78
	.loc 1 492 16
	li	a5,-1
	j	.L79
.L78:
	.loc 1 495 22
	lw	a5,-40(s0)
	lw	a4,80(a5)
	.loc 1 495 8
	li	a5,-1
	bne	a4,a5,.L80
	.loc 1 497 22
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 497 14
	addi	a5,a5,20
	sw	a5,-20(s0)
	j	.L81
.L80:
	.loc 1 499 26
	lw	a5,-40(s0)
	lw	a4,80(a5)
	.loc 1 499 42
	lw	a5,-36(s0)
	lw	a3,4(a5)
	.loc 1 499 49
	li	a5,4096
	add	a5,a3,a5
	.loc 1 499 12
	bgtu	a4,a5,.L82
	.loc 1 500 24
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	.loc 1 500 16
	beq	a5,zero,.L83
	.loc 1 501 37
	lw	a5,-40(s0)
	lw	a4,80(a5)
	.loc 1 501 53
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 1 501 22
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L84
.L83:
	.loc 1 505 37
	lw	a5,-40(s0)
	lw	a5,80(a5)
	.loc 1 505 22
	addi	a5,a5,1
	sw	a5,-20(s0)
.L84:
	.loc 1 508 51
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 508 67
	li	a5,4096
	addi	a5,a5,-20
	add	a5,a4,a5
	.loc 1 508 20
	mv	a1,a5
	lw	a0,-20(s0)
	call	find_next_env_addr
	sw	a0,-20(s0)
	.loc 1 510 30
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 510 37
	li	a5,4096
	add	a5,a4,a5
	.loc 1 510 16
	lw	a4,-20(s0)
	bgtu	a4,a5,.L85
	.loc 1 510 56 discriminator 1
	lw	a5,-40(s0)
	lw	a5,8(a5)
	.loc 1 510 46 discriminator 1
	bne	a5,zero,.L81
.L85:
	.loc 1 512 24
	li	a5,-1
	j	.L79
.L82:
	.loc 1 516 20
	li	a5,-1
	j	.L79
.L81:
	.loc 1 520 12
	lw	a5,-20(s0)
.L79:
	.loc 1 521 1
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
.LFE15:
	.size	get_next_env_addr, .-get_next_env_addr
	.section	.rodata
	.align	2
.LC4:
	.string	"Error: The ENV @0x%08X length has an error.\r\n"
	.align	2
.LC5:
	.string	"0"
	.section	.text.read_env,"ax",@progbits
	.align	1
	.type	read_env, @function
read_env:
.LFB16:
	.loc 1 524 1
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
	.loc 1 527 14
	sw	zero,-20(s0)
	.loc 1 528 15
	sb	zero,-21(s0)
	.loc 1 531 5
	lw	a5,-116(s0)
	lw	a5,80(a5)
	addi	a4,s0,-68
	li	a2,28
	mv	a1,a4
	mv	a0,a5
	call	ef_port_read
	.loc 1 532 34
	addi	a5,s0,-68
	li	a1,6
	mv	a0,a5
	call	get_status
	mv	a5,a0
	.loc 1 532 19 discriminator 1
	andi	a4,a5,0xff
	.loc 1 532 17 discriminator 1
	lw	a5,-116(s0)
	sb	a4,0(a5)
	.loc 1 533 23
	lw	a4,-56(s0)
	.loc 1 533 14
	lw	a5,-116(s0)
	sw	a4,8(a5)
	.loc 1 535 12
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 1 535 8
	li	a5,-1
	beq	a4,a5,.L87
	.loc 1 535 32 discriminator 1
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 1 535 26 discriminator 1
	li	a5,32768
	bgtu	a4,a5,.L87
	.loc 1 535 60 discriminator 2
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 1 535 54 discriminator 2
	li	a5,19
	bgtu	a4,a5,.L88
.L87:
	.loc 1 537 18
	lw	a5,-116(s0)
	li	a4,28
	sw	a4,8(a5)
	.loc 1 538 16
	lw	a5,-116(s0)
	lbu	a4,0(a5)
	.loc 1 538 12
	li	a5,5
	beq	a4,a5,.L89
	.loc 1 539 25
	lw	a5,-116(s0)
	li	a4,5
	sb	a4,0(a5)
	.loc 1 540 13
	lw	a5,-116(s0)
	lw	a5,80(a5)
	mv	a3,a5
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	li	a1,540
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 541 13
	lw	a5,-116(s0)
	lw	a5,80(a5)
	addi	a4,s0,-68
	li	a3,5
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	write_status
.L89:
	.loc 1 543 24
	lw	a5,-116(s0)
	sb	zero,1(a5)
	.loc 1 544 16
	li	a5,2
	j	.L99
.L88:
	.loc 1 545 19
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 1 545 15
	li	a5,4096
	addi	a5,a5,-20
	bleu	a4,a5,.L91
	.loc 1 545 134 discriminator 1
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 1 545 128 discriminator 1
	li	a5,32768
	bgeu	a4,a5,.L91
	.loc 1 547 21 discriminator 1
	lui	a5,%hi(__FUNCTION__.9)
	addi	a4,a5,%lo(__FUNCTION__.9)
	lui	a5,%hi(.LC5)
	addi	a3,a5,%lo(.LC5)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,547
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L92:
	.loc 1 547 177
	nop
	j	.L92
.L91:
	.loc 1 551 23
	lw	a5,-116(s0)
	lw	a5,8(a5)
	.loc 1 551 18
	addi	a5,a5,-20
	sw	a5,-36(s0)
	.loc 1 553 14
	sw	zero,-28(s0)
	.loc 1 553 24
	sw	zero,-32(s0)
	.loc 1 553 5
	j	.L93
.L96:
	.loc 1 554 17
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 1 554 12
	lw	a4,-36(s0)
	bleu	a4,a5,.L94
	.loc 1 555 18
	li	a5,32
	sw	a5,-32(s0)
	j	.L95
.L94:
	.loc 1 557 18
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
.L95:
	.loc 1 560 31
	lw	a5,-116(s0)
	lw	a4,80(a5)
	.loc 1 560 97
	lw	a5,-28(s0)
	add	a5,a4,a5
	addi	a5,a5,20
	.loc 1 560 9
	addi	a4,s0,-100
	lw	a2,-32(s0)
	mv	a1,a4
	mv	a0,a5
	call	ef_port_read
	.loc 1 561 22
	addi	a5,s0,-100
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	ef_calc_crc32
	sw	a0,-20(s0)
	.loc 1 553 53 discriminator 2
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L93:
	.loc 1 553 33 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L96
	.loc 1 564 30
	lw	a5,-52(s0)
	.loc 1 564 8
	lw	a4,-20(s0)
	beq	a4,a5,.L97
	.loc 1 565 24
	lw	a5,-116(s0)
	sb	zero,1(a5)
	.loc 1 566 16
	li	a5,2
	sb	a5,-21(s0)
	j	.L98
.L97:
	.loc 1 568 24
	lw	a5,-116(s0)
	li	a4,1
	sb	a4,1(a5)
	.loc 1 570 34
	lw	a5,-116(s0)
	lw	a5,80(a5)
	.loc 1 570 23
	addi	a5,a5,28
	sw	a5,-40(s0)
	.loc 1 571 50
	lw	a5,-116(s0)
	addi	a5,a5,16
	.loc 1 571 72
	lbu	a4,-48(s0)
	.loc 1 571 9
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	ef_port_read
	.loc 1 573 54
	lbu	a5,-48(s0)
	.loc 1 573 90
	mv	a4,a5
	.loc 1 573 41
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 1 573 25
	lw	a5,-116(s0)
	sw	a4,84(a5)
	.loc 1 574 33
	lw	a4,-44(s0)
	.loc 1 574 24
	lw	a5,-116(s0)
	sw	a4,12(a5)
	.loc 1 575 32
	lbu	a4,-48(s0)
	.loc 1 575 23
	lw	a5,-116(s0)
	sb	a4,2(a5)
.L98:
	.loc 1 578 12
	lbu	a5,-21(s0)
.L99:
	.loc 1 579 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	read_env, .-read_env
	.section	.rodata
	.align	2
.LC6:
	.string	"addr % SECTOR_SIZE == 0"
	.align	2
.LC7:
	.string	"sector"
	.align	2
.LC8:
	.string	"Error: The ENV (@0x%08X) CRC32 check failed!\r\n"
	.section	.text.read_sector_meta_data,"ax",@progbits
	.align	1
	.type	read_sector_meta_data, @function
read_sector_meta_data:
.LFB17:
	.loc 1 582 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	mv	a5,a2
	sb	a5,-153(s0)
	.loc 1 583 15
	sb	zero,-17(s0)
	.loc 1 586 16
	lw	a4,-148(s0)
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 586 8
	beq	a5,zero,.L101
	.loc 1 586 34 discriminator 1
	lui	a5,%hi(__FUNCTION__.8)
	addi	a4,a5,%lo(__FUNCTION__.8)
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,586
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L102:
	.loc 1 586 212
	nop
	j	.L102
.L101:
	.loc 1 587 8
	lw	a5,-152(s0)
	bne	a5,zero,.L103
	.loc 1 587 22 discriminator 1
	lui	a5,%hi(__FUNCTION__.8)
	addi	a4,a5,%lo(__FUNCTION__.8)
	lui	a5,%hi(.LC7)
	addi	a3,a5,%lo(.LC7)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,587
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L104:
	.loc 1 587 183
	nop
	j	.L104
.L103:
	.loc 1 590 5
	addi	a5,s0,-44
	li	a2,20
	mv	a1,a5
	lw	a0,-148(s0)
	call	ef_port_read
	.loc 1 592 18
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	sw	a4,4(a5)
	.loc 1 593 28
	lw	a4,-36(s0)
	.loc 1 593 19
	lw	a5,-152(s0)
	sw	a4,8(a5)
	.loc 1 595 15
	lw	a5,-152(s0)
	lw	a4,8(a5)
	.loc 1 595 8
	li	a5,808730624
	addi	a5,a5,1605
	beq	a4,a5,.L105
	.loc 1 596 26
	lw	a5,-152(s0)
	sb	zero,0(a5)
	.loc 1 597 26
	lw	a5,-152(s0)
	li	a4,-1
	sw	a4,12(a5)
	.loc 1 598 16
	li	a5,7
	j	.L115
.L105:
	.loc 1 600 22
	lw	a5,-152(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 602 31
	lw	a4,-32(s0)
	.loc 1 602 22
	lw	a5,-152(s0)
	sw	a4,12(a5)
	.loc 1 603 52
	addi	a5,s0,-44
	li	a1,4
	mv	a0,a5
	call	get_status
	mv	a5,a0
	.loc 1 603 28 discriminator 1
	andi	a4,a5,0xff
	.loc 1 603 26 discriminator 1
	lw	a5,-152(s0)
	sb	a4,1(a5)
	.loc 1 604 52
	addi	a5,s0,-44
	addi	a5,a5,3
	li	a1,4
	mv	a0,a5
	call	get_status
	mv	a5,a0
	.loc 1 604 28 discriminator 1
	andi	a4,a5,0xff
	.loc 1 604 26 discriminator 1
	lw	a5,-152(s0)
	sb	a4,2(a5)
	.loc 1 606 8
	lbu	a5,-153(s0)
	beq	a5,zero,.L107
	.loc 1 607 24
	lw	a5,-152(s0)
	sw	zero,16(a5)
	.loc 1 608 35
	lw	a5,-152(s0)
	lw	a5,4(a5)
	.loc 1 608 42
	addi	a4,a5,20
	.loc 1 608 27
	lw	a5,-152(s0)
	sw	a4,20(a5)
	.loc 1 609 27
	lw	a5,-152(s0)
	lbu	a4,1(a5)
	.loc 1 609 12
	li	a5,1
	bne	a4,a5,.L108
	.loc 1 610 28
	lw	a5,-152(s0)
	li	a4,4096
	addi	a4,a4,-20
	sw	a4,16(a5)
	j	.L107
.L108:
	.loc 1 611 34
	lw	a5,-152(s0)
	lbu	a4,1(a5)
	.loc 1 611 19
	li	a5,2
	bne	a4,a5,.L107
.LBB15:
	.loc 1 615 17
	lw	a5,-152(s0)
	addi	a5,a5,20
	mv	a1,a5
	lw	a0,-148(s0)
	call	get_sector_from_cache
	mv	a5,a0
	.loc 1 615 16 discriminator 1
	beq	a5,zero,.L109
	.loc 1 616 70
	lw	a5,-152(s0)
	lw	a4,4(a5)
	.loc 1 616 50
	lw	a5,-152(s0)
	lw	a5,20(a5)
	.loc 1 616 62
	sub	a4,a4,a5
	.loc 1 616 41
	li	a5,4096
	add	a4,a4,a5
	.loc 1 616 32
	lw	a5,-152(s0)
	sw	a4,16(a5)
	.loc 1 617 24
	lbu	a5,-17(s0)
	j	.L115
.L109:
	.loc 1 621 28
	lw	a5,-152(s0)
	li	a4,4096
	addi	a4,a4,-20
	sw	a4,16(a5)
	.loc 1 622 33
	li	a5,-1
	sw	a5,-52(s0)
	.loc 1 623 19
	j	.L110
.L113:
	.loc 1 624 17
	addi	a5,s0,-132
	mv	a0,a5
	call	read_env
	.loc 1 625 30
	lbu	a5,-131(s0)
	.loc 1 625 21
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 625 20
	beq	a5,zero,.L111
	.loc 1 626 33
	lbu	a4,-132(s0)
	.loc 1 626 24
	li	a5,1
	beq	a4,a5,.L111
	.loc 1 626 69 discriminator 1
	lbu	a4,-132(s0)
	.loc 1 626 58 discriminator 1
	li	a5,5
	beq	a4,a5,.L111
	.loc 1 627 25
	lw	a5,-52(s0)
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	ef_log_info
	.loc 1 628 40
	lw	a5,-152(s0)
	sw	zero,16(a5)
	.loc 1 629 32
	li	a5,2
	sb	a5,-17(s0)
	.loc 1 630 25
	j	.L112
.L111:
	.loc 1 633 23
	lw	a5,-152(s0)
	lw	a4,20(a5)
	.loc 1 633 46
	lw	a5,-124(s0)
	.loc 1 633 35
	add	a4,a4,a5
	lw	a5,-152(s0)
	sw	a4,20(a5)
	.loc 1 634 23
	lw	a5,-152(s0)
	lw	a4,16(a5)
	.loc 1 634 43
	lw	a5,-124(s0)
	.loc 1 634 32
	sub	a4,a4,a5
	lw	a5,-152(s0)
	sw	a4,16(a5)
.L110:
	.loc 1 623 43
	addi	a5,s0,-132
	mv	a1,a5
	lw	a0,-152(s0)
	call	get_next_env_addr
	mv	a5,a0
	.loc 1 623 41 discriminator 1
	sw	a5,-52(s0)
	.loc 1 623 34 discriminator 1
	lw	a4,-52(s0)
	.loc 1 623 81 discriminator 1
	li	a5,-1
	bne	a4,a5,.L113
.L112:
.LBB16:
	.loc 1 640 27
	lw	a5,-152(s0)
	lw	a3,20(a5)
	.loc 1 640 69
	lw	a5,-152(s0)
	lw	a4,4(a5)
	.loc 1 640 76
	li	a5,4096
	add	a5,a4,a5
	.loc 1 640 27
	mv	a1,a5
	mv	a0,a3
	call	continue_ff_addr
	sw	a0,-24(s0)
	.loc 1 642 27
	lw	a5,-152(s0)
	lw	a5,20(a5)
	.loc 1 642 20
	lw	a4,-24(s0)
	beq	a4,a5,.L114
	.loc 1 644 39
	lw	a5,-152(s0)
	lw	a4,-24(s0)
	sw	a4,20(a5)
	.loc 1 645 64
	lw	a5,-152(s0)
	lw	a4,4(a5)
	.loc 1 645 56
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 1 645 45
	li	a5,4096
	add	a4,a4,a5
	.loc 1 645 36
	lw	a5,-152(s0)
	sw	a4,16(a5)
.L114:
.LBE16:
	.loc 1 650 13
	lw	a5,-152(s0)
	lw	a4,4(a5)
	lw	a5,-152(s0)
	lw	a5,20(a5)
	mv	a1,a5
	mv	a0,a4
	call	update_sector_cache
.L107:
.LBE15:
	.loc 1 655 12
	lbu	a5,-17(s0)
.L115:
	.loc 1 656 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	read_sector_meta_data, .-read_sector_meta_data
	.section	.text.get_next_sector_addr,"ax",@progbits
	.align	1
	.type	get_next_sector_addr, @function
get_next_sector_addr:
.LFB18:
	.loc 1 659 1
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
	.loc 1 662 16
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 662 8
	li	a5,-1
	bne	a4,a5,.L117
	.loc 1 663 16
	lui	a5,%hi(env_start_addr)
	lw	a5,%lo(env_start_addr)(a5)
	j	.L118
.L117:
	.loc 1 666 20
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 666 12
	li	a5,-1
	bne	a4,a5,.L119
	.loc 1 667 32
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 667 23
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L120
.L119:
	.loc 1 669 32
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 669 48
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 669 59
	slli	a5,a5,12
	.loc 1 669 23
	add	a5,a4,a5
	sw	a5,-20(s0)
.L120:
	.loc 1 672 40
	lui	a5,%hi(env_start_addr)
	lw	a4,%lo(env_start_addr)(a5)
	li	a5,32768
	add	a5,a4,a5
	.loc 1 672 12
	lw	a4,-20(s0)
	bgeu	a4,a5,.L121
	.loc 1 673 20
	lw	a5,-20(s0)
	j	.L118
.L121:
	.loc 1 676 20
	li	a5,-1
.L118:
	.loc 1 679 1
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
.LFE18:
	.size	get_next_sector_addr, .-get_next_sector_addr
	.section	.text.env_iterator,"ax",@progbits
	.align	1
	.type	env_iterator, @function
env_iterator:
.LFB19:
	.loc 1 683 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 1 687 17
	li	a5,-1
	sw	a5,-40(s0)
	.loc 1 689 11
	j	.L123
.L131:
	.loc 1 690 13
	addi	a5,s0,-44
	li	a2,0
	mv	a1,a5
	lw	a0,-20(s0)
	call	read_sector_meta_data
	mv	a5,a0
	.loc 1 690 12 discriminator 1
	bne	a5,zero,.L132
	.loc 1 693 12
	lw	a5,-64(s0)
	beq	a5,zero,.L133
	.loc 1 697 26
	lbu	a4,-43(s0)
	.loc 1 697 12
	li	a5,2
	beq	a4,a5,.L127
	.loc 1 697 71 discriminator 1
	lbu	a4,-43(s0)
	.loc 1 697 55 discriminator 1
	li	a5,3
	bne	a4,a5,.L123
.L127:
	.loc 1 698 29
	lw	a5,-52(s0)
	li	a4,-1
	sw	a4,80(a5)
	.loc 1 700 19
	j	.L128
.L130:
	.loc 1 701 17
	lw	a0,-52(s0)
	call	read_env
	.loc 1 703 21
	lw	a5,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
	.loc 1 703 20 discriminator 1
	bne	a5,zero,.L134
.L128:
	.loc 1 700 39
	addi	a5,s0,-44
	lw	a1,-52(s0)
	mv	a0,a5
	call	get_next_env_addr
	mv	a4,a0
	.loc 1 700 37 discriminator 1
	lw	a5,-52(s0)
	sw	a4,80(a5)
	.loc 1 700 30 discriminator 1
	lw	a5,-52(s0)
	lw	a4,80(a5)
	.loc 1 700 72 discriminator 1
	li	a5,-1
	bne	a4,a5,.L130
	j	.L123
.L132:
	.loc 1 691 13
	nop
	j	.L123
.L133:
	.loc 1 694 13
	nop
.L123:
	.loc 1 689 24
	addi	a5,s0,-44
	mv	a0,a5
	call	get_next_sector_addr
	sw	a0,-20(s0)
	.loc 1 689 55 discriminator 1
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L131
	j	.L122
.L134:
	.loc 1 704 21 discriminator 1
	nop
.L122:
	.loc 1 709 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	env_iterator, .-env_iterator
	.section	.text.find_env_cb,"ax",@progbits
	.align	1
	.type	find_env_cb, @function
find_env_cb:
.LFB20:
	.loc 1 712 1
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
	.loc 1 713 17
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 714 11
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 715 22
	lw	a0,-20(s0)
	call	strlen
	sw	a0,-28(s0)
	.loc 1 717 23
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	mv	a4,a5
	.loc 1 717 8
	lw	a5,-28(s0)
	beq	a5,a4,.L136
	.loc 1 718 16
	li	a5,0
	j	.L137
.L136:
	.loc 1 721 12
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 721 8
	beq	a5,zero,.L138
	.loc 1 721 30 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 721 24 discriminator 1
	li	a5,2
	bne	a4,a5,.L138
	.loc 1 721 67 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 721 56 discriminator 2
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	strncmp
	mv	a5,a0
	.loc 1 721 52 discriminator 3
	bne	a5,zero,.L138
	.loc 1 722 18
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 723 16
	li	a5,1
	j	.L137
.L138:
	.loc 1 725 12
	li	a5,0
.L137:
	.loc 1 726 1
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
.LFE20:
	.size	find_env_cb, .-find_env_cb
	.section	.text.find_env_no_cache,"ax",@progbits
	.align	1
	.type	find_env_no_cache, @function
find_env_no_cache:
.LFB21:
	.loc 1 729 1
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
	.loc 1 730 10
	sb	zero,-17(s0)
	.loc 1 732 5
	addi	a4,s0,-17
	lui	a5,%hi(find_env_cb)
	addi	a3,a5,%lo(find_env_cb)
	mv	a2,a4
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	env_iterator
	.loc 1 734 12
	lbu	a5,-17(s0)
	.loc 1 735 1
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
.LFE21:
	.size	find_env_no_cache, .-find_env_no_cache
	.section	.text.find_env,"ax",@progbits
	.align	1
	.type	find_env, @function
find_env:
.LFB22:
	.loc 1 738 1
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
	.loc 1 739 10
	sb	zero,-17(s0)
	.loc 1 742 22
	lw	a0,-36(s0)
	call	strlen
	sw	a0,-24(s0)
	.loc 1 744 9
	lw	a5,-40(s0)
	addi	a5,a5,80
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	get_env_from_cache
	mv	a5,a0
	.loc 1 744 8 discriminator 1
	beq	a5,zero,.L142
	.loc 1 745 9
	lw	a0,-40(s0)
	call	read_env
	.loc 1 746 16
	li	a5,1
	j	.L143
.L142:
	.loc 1 750 15
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	find_env_no_cache
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 753 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L144
	.loc 1 754 9
	lw	a5,-40(s0)
	lw	a5,80(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	update_env_cache
.L144:
	.loc 1 758 12
	lbu	a5,-17(s0)
.L143:
	.loc 1 759 1
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
.LFE22:
	.size	find_env, .-find_env
	.section	.text.ef_is_str,"ax",@progbits
	.align	1
	.type	ef_is_str, @function
ef_is_str:
.LFB23:
	.loc 1 762 1
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
	.loc 1 766 12
	sw	zero,-20(s0)
	.loc 1 766 5
	j	.L146
.L149:
	.loc 1 767 36
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 767 41
	addi	a5,a5,-32
	.loc 1 767 15
	mv	a4,a5
	.loc 1 767 12
	li	a5,94
	bleu	a4,a5,.L147
	.loc 1 768 20
	li	a5,0
	j	.L148
.L147:
	.loc 1 766 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L146:
	.loc 1 766 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L149
	.loc 1 771 12
	li	a5,1
.L148:
	.loc 1 772 1
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
.LFE23:
	.size	ef_is_str, .-ef_is_str
	.section	.text.get_env,"ax",@progbits
	.align	1
	.type	get_env, @function
get_env:
.LFB24:
	.loc 1 775 1
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
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	sw	a3,-128(s0)
	.loc 1 777 12
	sw	zero,-20(s0)
	.loc 1 779 9
	addi	a5,s0,-108
	mv	a1,a5
	lw	a0,-116(s0)
	call	find_env
	mv	a5,a0
	.loc 1 779 8 discriminator 1
	beq	a5,zero,.L151
	.loc 1 780 12
	lw	a5,-128(s0)
	beq	a5,zero,.L152
	.loc 1 781 29
	lw	a4,-96(s0)
	.loc 1 781 24
	lw	a5,-128(s0)
	sw	a4,0(a5)
.L152:
	.loc 1 783 26
	lw	a5,-96(s0)
	.loc 1 783 12
	lw	a4,-124(s0)
	bleu	a4,a5,.L153
	.loc 1 784 22
	lw	a5,-96(s0)
	sw	a5,-20(s0)
	j	.L154
.L153:
	.loc 1 786 22
	lw	a5,-124(s0)
	sw	a5,-20(s0)
.L154:
	.loc 1 788 12
	lw	a5,-120(s0)
	beq	a5,zero,.L151
	.loc 1 789 13
	lw	a5,-24(s0)
	lw	a2,-20(s0)
	lw	a1,-120(s0)
	mv	a0,a5
	call	ef_port_read
.L151:
	.loc 1 793 12
	lw	a5,-20(s0)
	.loc 1 794 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	get_env, .-get_env
	.section	.rodata
	.align	2
.LC9:
	.string	"ENV isn't initialize OK.\r\n"
	.section	.text.ef_get_env_obj,"ax",@progbits
	.align	1
	.globl	ef_get_env_obj
	.type	ef_get_env_obj, @function
ef_get_env_obj:
.LFB25:
	.loc 1 805 1
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
	.loc 1 806 10
	sb	zero,-17(s0)
	.loc 1 808 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 808 8
	beq	a5,zero,.L157
	.loc 1 809 9
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	ef_log_info
	.loc 1 810 16
	li	a5,0
	j	.L158
.L157:
	.loc 1 814 5
	call	ef_port_env_lock
	.loc 1 816 15
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	find_env
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 819 5
	call	ef_port_env_unlock
	.loc 1 821 12
	lbu	a5,-17(s0)
.L158:
	.loc 1 822 1
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
	.size	ef_get_env_obj, .-ef_get_env_obj
	.section	.rodata
	.align	2
.LC10:
	.string	"ef_env.c"
	.align	2
.LC11:
	.string	"\033[33mWARN  \033[0m"
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] key = %p, value_buf = %p\r\n"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] key err. %d > %d\r\n"
	.section	.text.ef_get_env_blob,"ax",@progbits
	.align	1
	.globl	ef_get_env_blob
	.type	ef_get_env_blob, @function
ef_get_env_blob:
.LFB26:
	.loc 1 835 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 836 12
	sw	zero,-20(s0)
	.loc 1 838 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 838 8
	beq	a5,zero,.L160
	.loc 1 839 9
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	ef_log_info
	.loc 1 840 16
	li	a5,0
	j	.L161
.L160:
	.loc 1 843 8
	lw	a5,-36(s0)
	beq	a5,zero,.L162
	.loc 1 843 14 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L163
.L162:
.LBB17:
.LBB18:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE18:
.LBE17:
	.loc 1 844 16 discriminator 1
	beq	a5,zero,.L165
	.loc 1 844 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L166
.L165:
	.loc 1 844 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L166:
	.loc 1 844 16 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	li	a4,844
	lui	a3,%hi(.LC10)
	addi	a3,a3,%lo(.LC10)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
	.loc 1 845 16
	li	a5,8
	j	.L161
.L163:
	.loc 1 848 9
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 848 8 discriminator 1
	li	a5,64
	bleu	a4,a5,.L167
.LBB19:
.LBB20:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE20:
.LBE19:
	.loc 1 849 16 discriminator 1
	beq	a5,zero,.L169
	.loc 1 849 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L170
.L169:
	.loc 1 849 129 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L170:
	.loc 1 849 16 discriminator 7
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 849 16 is_stmt 0 discriminator 8
	li	a6,64
	li	a4,849
	lui	a3,%hi(.LC10)
	addi	a3,a3,%lo(.LC10)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	mv	a1,s1
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
	.loc 1 850 16 is_stmt 1
	li	a5,8
	j	.L161
.L167:
	.loc 1 853 5
	call	ef_port_env_lock
	.loc 1 855 16
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	get_env
	sw	a0,-20(s0)
	.loc 1 858 5
	call	ef_port_env_unlock
	.loc 1 860 12
	lw	a5,-20(s0)
.L161:
	.loc 1 861 1
	mv	a0,a5
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
.LFE26:
	.size	ef_get_env_blob, .-ef_get_env_blob
	.section	.rodata
	.align	2
.LC14:
	.string	"Warning: The ENV value isn't string. Could not be returned\r\n"
	.section	.text.ef_get_env,"ax",@progbits
	.align	1
	.globl	ef_get_env
	.type	ef_get_env, @function
ef_get_env:
.LFB27:
	.loc 1 874 1
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
	.loc 1 878 21
	li	a3,0
	li	a5,4096
	addi	a2,a5,-116
	lui	a5,%hi(value.7)
	addi	a1,a5,%lo(value.7)
	lw	a0,-36(s0)
	call	ef_get_env_blob
	sw	a0,-20(s0)
	.loc 1 878 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L172
	.loc 1 880 13
	lw	a1,-20(s0)
	lui	a5,%hi(value.7)
	addi	a0,a5,%lo(value.7)
	call	ef_is_str
	mv	a5,a0
	.loc 1 880 12 discriminator 1
	beq	a5,zero,.L173
	.loc 1 881 29
	lui	a5,%hi(value.7)
	addi	a4,a5,%lo(value.7)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	.loc 1 882 20
	lui	a5,%hi(value.7)
	addi	a5,a5,%lo(value.7)
	j	.L174
.L173:
	.loc 1 884 13
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	ef_log_info
	.loc 1 885 19
	li	a5,0
	j	.L174
.L172:
	.loc 1 889 11
	li	a5,0
.L174:
	.loc 1 890 1
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
.LFE27:
	.size	ef_get_env, .-ef_get_env
	.section	.rodata
	.align	2
.LC15:
	.string	"env"
	.align	2
.LC16:
	.string	"value_buf"
	.section	.text.ef_read_env_value,"ax",@progbits
	.align	1
	.globl	ef_read_env_value
	.type	ef_read_env_value, @function
ef_read_env_value:
.LFB28:
	.loc 1 902 1
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
	.loc 1 903 12
	sw	zero,-20(s0)
	.loc 1 905 8
	lw	a5,-36(s0)
	bne	a5,zero,.L176
	.loc 1 905 19 discriminator 1
	lui	a5,%hi(__FUNCTION__.6)
	addi	a4,a5,%lo(__FUNCTION__.6)
	lui	a5,%hi(.LC15)
	addi	a3,a5,%lo(.LC15)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,905
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L177:
	.loc 1 905 177
	nop
	j	.L177
.L176:
	.loc 1 906 8
	lw	a5,-40(s0)
	bne	a5,zero,.L178
	.loc 1 906 25 discriminator 1
	lui	a5,%hi(__FUNCTION__.6)
	addi	a4,a5,%lo(__FUNCTION__.6)
	lui	a5,%hi(.LC16)
	addi	a3,a5,%lo(.LC16)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,906
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L179:
	.loc 1 906 189
	nop
	j	.L179
.L178:
	.loc 1 908 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 908 8
	beq	a5,zero,.L180
	.loc 1 909 9
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	ef_log_info
	.loc 1 910 16
	li	a5,0
	j	.L181
.L180:
	.loc 1 913 12
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 913 8
	beq	a5,zero,.L182
	.loc 1 915 9
	call	ef_port_env_lock
	.loc 1 917 26
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 917 12
	lw	a4,-44(s0)
	bleu	a4,a5,.L183
	.loc 1 918 22
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	j	.L184
.L183:
	.loc 1 920 22
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L184:
	.loc 1 923 9
	lw	a5,-36(s0)
	lw	a5,84(a5)
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	ef_port_read
	.loc 1 925 9
	call	ef_port_env_unlock
.L182:
	.loc 1 928 12
	lw	a5,-20(s0)
.L181:
	.loc 1 929 1
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
.LFE28:
	.size	ef_read_env_value, .-ef_read_env_value
	.section	.text.write_env_hdr,"ax",@progbits
	.align	1
	.type	write_env_hdr, @function
write_env_hdr:
.LFB29:
	.loc 1 931 71
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
	.loc 1 932 15
	sb	zero,-17(s0)
	.loc 1 934 40
	lw	a5,-40(s0)
	.loc 1 934 14
	li	a3,1
	li	a2,6
	mv	a1,a5
	lw	a0,-36(s0)
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 935 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L186
	.loc 1 936 16
	lbu	a5,-17(s0)
	j	.L187
.L186:
	.loc 1 939 33
	lw	a5,-36(s0)
	addi	a4,a5,8
	.loc 1 939 90
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 1 939 14
	li	a2,20
	mv	a1,a5
	mv	a0,a4
	call	ef_port_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 941 12
	lbu	a5,-17(s0)
.L187:
	.loc 1 942 1
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
.LFE29:
	.size	write_env_hdr, .-write_env_hdr
	.section	.text.format_sector,"ax",@progbits
	.align	1
	.type	format_sector, @function
format_sector:
.LFB30:
	.loc 1 945 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 946 15
	sb	zero,-17(s0)
	.loc 1 949 16
	lw	a4,-52(s0)
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 949 8
	beq	a5,zero,.L189
	.loc 1 949 34 discriminator 1
	lui	a5,%hi(__FUNCTION__.5)
	addi	a4,a5,%lo(__FUNCTION__.5)
	lui	a5,%hi(.LC6)
	addi	a3,a5,%lo(.LC6)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,949
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L190:
	.loc 1 949 212
	nop
	j	.L190
.L189:
	.loc 1 951 14
	li	a1,4096
	lw	a0,-52(s0)
	call	ef_port_erase
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 952 8
	lbu	a5,-17(s0)
	bne	a5,zero,.L191
	.loc 1 954 9
	addi	a5,s0,-40
	li	a2,20
	li	a1,255
	mv	a0,a5
	call	memset
	.loc 1 955 9
	addi	a5,s0,-40
	li	a2,1
	li	a1,4
	mv	a0,a5
	call	set_status
	.loc 1 956 9
	addi	a5,s0,-40
	addi	a5,a5,3
	li	a2,1
	li	a1,4
	mv	a0,a5
	call	set_status
	.loc 1 957 23
	li	a5,808730624
	addi	a5,a5,1605
	sw	a5,-32(s0)
	.loc 1 958 26
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 959 26
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 961 18
	addi	a5,s0,-40
	li	a2,20
	mv	a1,a5
	lw	a0,-52(s0)
	call	ef_port_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 965 40
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	.loc 1 965 9
	mv	a1,a5
	lw	a0,-52(s0)
	call	update_sector_cache
.L191:
	.loc 1 969 12
	lbu	a5,-17(s0)
	.loc 1 970 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	format_sector, .-format_sector
	.section	.text.update_sec_status,"ax",@progbits
	.align	1
	.type	update_sec_status, @function
update_sec_status:
.LFB31:
	.loc 1 973 1
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
	.loc 1 975 15
	sb	zero,-17(s0)
	.loc 1 977 23
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 977 8
	li	a5,1
	bne	a4,a5,.L194
	.loc 1 979 18
	lw	a5,-36(s0)
	lw	a5,4(a5)
	addi	a4,s0,-20
	li	a3,2
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L195
.L194:
	.loc 1 980 30
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 980 15
	li	a5,2
	bne	a4,a5,.L195
	.loc 1 982 19
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 982 12
	li	a5,91
	bleu	a4,a5,.L196
	.loc 1 982 137 discriminator 1
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 982 146 discriminator 1
	lw	a5,-40(s0)
	sub	a4,a4,a5
	.loc 1 982 128 discriminator 1
	li	a5,91
	bgtu	a4,a5,.L197
.L196:
	.loc 1 984 22
	lw	a5,-36(s0)
	lw	a5,4(a5)
	addi	a4,s0,-20
	li	a3,3
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 988 13
	lw	a5,-36(s0)
	lw	a3,4(a5)
	.loc 1 988 53
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 988 60
	li	a5,4096
	add	a5,a4,a5
	.loc 1 988 13
	mv	a1,a5
	mv	a0,a3
	call	update_sector_cache
	.loc 1 991 16
	lw	a5,-44(s0)
	beq	a5,zero,.L195
	.loc 1 992 26
	lw	a5,-44(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 991 16
	j	.L195
.L197:
	.loc 1 994 19
	lw	a5,-44(s0)
	beq	a5,zero,.L195
	.loc 1 995 22
	lw	a5,-44(s0)
	sb	zero,0(a5)
.L195:
	.loc 1 999 12
	lbu	a5,-17(s0)
	.loc 1 1000 1
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
.LFE31:
	.size	update_sec_status, .-update_sec_status
	.section	.text.sector_iterator,"ax",@progbits
	.align	1
	.type	sector_iterator, @function
sector_iterator:
.LFB32:
	.loc 1 1003 98
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	mv	a4,a5
	mv	a5,a1
	sb	a5,-37(s0)
	mv	a5,a4
	sb	a5,-38(s0)
	.loc 1 1007 18
	lw	a5,-36(s0)
	li	a4,-1
	sw	a4,4(a5)
	.loc 1 1008 11
	j	.L201
.L206:
	.loc 1 1009 9
	li	a2,0
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	read_sector_meta_data
	.loc 1 1010 12
	lbu	a5,-37(s0)
	beq	a5,zero,.L202
	.loc 1 1010 70 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 1010 43 discriminator 1
	lbu	a4,-37(s0)
	bne	a4,a5,.L201
.L202:
	.loc 1 1011 16
	lbu	a5,-38(s0)
	beq	a5,zero,.L204
	.loc 1 1012 17
	lbu	a5,-38(s0)
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	read_sector_meta_data
.L204:
	.loc 1 1015 16
	lw	a5,-52(s0)
	beq	a5,zero,.L201
	.loc 1 1015 29 discriminator 1
	lw	a5,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
	mv	a5,a0
	.loc 1 1015 26 discriminator 2
	bne	a5,zero,.L207
.L201:
	.loc 1 1008 24
	lw	a0,-36(s0)
	call	get_next_sector_addr
	sw	a0,-20(s0)
	.loc 1 1008 54 discriminator 1
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L206
	j	.L200
.L207:
	.loc 1 1016 17
	nop
.L200:
	.loc 1 1020 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	sector_iterator, .-sector_iterator
	.section	.text.sector_statistics_cb,"ax",@progbits
	.align	1
	.type	sector_statistics_cb, @function
sector_statistics_cb:
.LFB33:
	.loc 1 1023 1
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
	.loc 1 1024 13
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 1024 35
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 1026 15
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1026 8
	beq	a5,zero,.L209
	.loc 1 1026 43 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 1026 26 discriminator 1
	li	a5,1
	bne	a4,a5,.L209
	.loc 1 1027 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1027 24
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	j	.L210
.L209:
	.loc 1 1028 22
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1028 15
	beq	a5,zero,.L210
	.loc 1 1028 50 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 1028 33 discriminator 1
	li	a5,2
	bne	a4,a5,.L210
	.loc 1 1029 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 1029 24
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,0(a5)
.L210:
	.loc 1 1032 12
	li	a5,0
	.loc 1 1033 1
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
.LFE33:
	.size	sector_statistics_cb, .-sector_statistics_cb
	.section	.text.alloc_env_cb,"ax",@progbits
	.align	1
	.type	alloc_env_cb, @function
alloc_env_cb:
.LFB34:
	.loc 1 1036 1
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
	.loc 1 1037 13
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 1038 15
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 1043 15
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1043 8
	beq	a5,zero,.L213
	.loc 1 1043 35 discriminator 1
	lw	a5,-36(s0)
	lw	a4,16(a5)
	.loc 1 1043 46 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1043 26 discriminator 1
	bleu	a4,a5,.L213
	.loc 1 1044 32
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 1044 13
	li	a5,1
	beq	a4,a5,.L214
	.loc 1 1045 39
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 1045 21
	li	a5,2
	bne	a4,a5,.L213
	.loc 1 1045 70 discriminator 1
	lui	a5,%hi(gc_request)
	lbu	a5,%lo(gc_request)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1045 67 discriminator 1
	beq	a5,zero,.L213
.L214:
	.loc 1 1046 28
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 1 1046 20
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 1047 16
	li	a5,1
	j	.L215
.L213:
	.loc 1 1050 12
	li	a5,0
.L215:
	.loc 1 1051 1
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
.LFE34:
	.size	alloc_env_cb, .-alloc_env_cb
	.section	.rodata
	.align	2
.LC17:
	.string	"Trigger a GC check after alloc ENV failed.\r\n"
	.section	.text.alloc_env,"ax",@progbits
	.align	1
	.type	alloc_env, @function
alloc_env:
.LFB35:
	.loc 1 1054 1
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
	.loc 1 1055 14
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 1056 12
	sw	zero,-24(s0)
	.loc 1 1056 30
	sw	zero,-28(s0)
	.loc 1 1059 5
	addi	a3,s0,-28
	addi	a2,s0,-24
	li	a5,0
	lui	a4,%hi(sector_statistics_cb)
	addi	a4,a4,%lo(sector_statistics_cb)
	li	a1,0
	lw	a0,-36(s0)
	call	sector_iterator
	.loc 1 1060 22
	lw	a5,-28(s0)
	.loc 1 1060 8
	beq	a5,zero,.L217
	.loc 1 1062 9
	addi	a3,s0,-20
	addi	a2,s0,-40
	li	a5,1
	lui	a4,%hi(alloc_env_cb)
	addi	a4,a4,%lo(alloc_env_cb)
	li	a1,2
	lw	a0,-36(s0)
	call	sector_iterator
.L217:
	.loc 1 1064 22
	lw	a5,-24(s0)
	.loc 1 1064 8
	beq	a5,zero,.L218
	.loc 1 1064 39 discriminator 1
	lw	a4,-20(s0)
	.loc 1 1064 26 discriminator 1
	li	a5,-1
	bne	a4,a5,.L218
	.loc 1 1065 26
	lw	a4,-24(s0)
	.loc 1 1065 12
	li	a5,1
	bgtu	a4,a5,.L219
	.loc 1 1065 30 discriminator 1
	lui	a5,%hi(gc_request)
	lbu	a5,%lo(gc_request)(a5)
	beq	a5,zero,.L220
.L219:
	.loc 1 1066 13
	addi	a3,s0,-20
	addi	a2,s0,-40
	li	a5,1
	lui	a4,%hi(alloc_env_cb)
	addi	a4,a4,%lo(alloc_env_cb)
	li	a1,1
	lw	a0,-36(s0)
	call	sector_iterator
	j	.L218
.L220:
	.loc 1 1069 13
	lui	a5,%hi(.LC17)
	addi	a2,a5,%lo(.LC17)
	li	a1,1069
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1070 24
	lui	a5,%hi(gc_request)
	li	a4,1
	sb	a4,%lo(gc_request)(a5)
.L218:
	.loc 1 1074 12
	lw	a5,-20(s0)
	.loc 1 1075 1
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
.LFE35:
	.size	alloc_env, .-alloc_env
	.section	.rodata
	.align	2
.LC18:
	.string	"Not found '%s' in ENV.\r\n"
	.section	.text.del_env,"ax",@progbits
	.align	1
	.type	del_env, @function
del_env:
.LFB36:
	.loc 1 1077 86
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	mv	a5,a2
	sb	a5,-137(s0)
	.loc 1 1078 15
	sb	zero,-17(s0)
	.loc 1 1089 8
	lw	a5,-136(s0)
	bne	a5,zero,.L223
.LBB21:
	.loc 1 1092 13
	addi	a5,s0,-120
	mv	a1,a5
	lw	a0,-132(s0)
	call	find_env
	mv	a5,a0
	.loc 1 1092 12 discriminator 1
	beq	a5,zero,.L224
	.loc 1 1093 21
	addi	a5,s0,-120
	sw	a5,-136(s0)
	j	.L223
.L224:
	.loc 1 1095 13
	lw	a3,-132(s0)
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	li	a1,1095
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1096 20
	li	a5,4
	j	.L231
.L223:
.LBE21:
	.loc 1 1100 9
	lbu	a5,-137(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1100 8
	beq	a5,zero,.L226
	.loc 1 1101 18
	lw	a5,-136(s0)
	lw	a5,80(a5)
	addi	a4,s0,-32
	li	a3,3
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1102 30
	lui	a5,%hi(last_is_complete_del.4)
	li	a4,1
	sb	a4,%lo(last_is_complete_del.4)(a5)
	j	.L227
.L226:
	.loc 1 1104 18
	lw	a5,-136(s0)
	lw	a5,80(a5)
	addi	a4,s0,-32
	li	a3,4
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1106 13
	lui	a5,%hi(last_is_complete_del.4)
	lbu	a5,%lo(last_is_complete_del.4)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1106 12
	beq	a5,zero,.L228
	.loc 1 1106 35 discriminator 1
	lbu	a5,-17(s0)
	bne	a5,zero,.L228
	.loc 1 1109 16
	lw	a5,-132(s0)
	beq	a5,zero,.L229
	.loc 1 1111 17
	lw	a0,-132(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1111 17 is_stmt 0 discriminator 1
	li	a2,-1
	mv	a1,a5
	lw	a0,-132(s0)
	call	update_env_cache
	j	.L228
.L229:
	.loc 1 1112 23 is_stmt 1
	lw	a5,-136(s0)
	beq	a5,zero,.L228
	.loc 1 1114 41
	lw	a5,-136(s0)
	addi	a4,a5,16
	.loc 1 1114 56
	lw	a5,-136(s0)
	lbu	a5,2(a5)
	.loc 1 1114 17
	li	a2,-1
	mv	a1,a5
	mv	a0,a4
	call	update_env_cache
.L228:
	.loc 1 1119 30
	lui	a5,%hi(last_is_complete_del.4)
	sb	zero,%lo(last_is_complete_del.4)(a5)
.L227:
	.loc 1 1122 40
	lw	a5,-136(s0)
	lw	a4,80(a5)
	.loc 1 1122 48
	li	a5,-4096
	and	a5,a4,a5
	.loc 1 1122 23
	addi	a5,a5,3
	sw	a5,-24(s0)
	.loc 1 1124 8
	lbu	a5,-17(s0)
	bne	a5,zero,.L230
	.loc 1 1125 16
	addi	a5,s0,-32
	li	a2,4
	mv	a1,a5
	lw	a0,-24(s0)
	call	read_status
	mv	a4,a0
	.loc 1 1125 13 discriminator 1
	li	a5,1
	bne	a4,a5,.L230
	.loc 1 1126 18
	addi	a5,s0,-32
	li	a3,2
	li	a2,4
	mv	a1,a5
	lw	a0,-24(s0)
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
.L230:
	.loc 1 1129 12
	lbu	a5,-17(s0)
.L231:
	.loc 1 1130 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	del_env, .-del_env
	.section	.rodata
	.align	2
.LC19:
	.string	"Moved the ENV (%.*s) from 0x%08X to 0x%08X.\r\n"
	.section	.text.move_env,"ax",@progbits
	.align	1
	.type	move_env, @function
move_env:
.LFB37:
	.loc 1 1136 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-228(s0)
	.loc 1 1137 15
	sb	zero,-17(s0)
	.loc 1 1143 12
	lw	a5,-228(s0)
	lbu	a4,0(a5)
	.loc 1 1143 8
	li	a5,2
	bne	a4,a5,.L233
	.loc 1 1144 9
	li	a2,0
	lw	a1,-228(s0)
	li	a0,0
	call	del_env
.L233:
	.loc 1 1147 43
	lw	a5,-228(s0)
	lw	a4,8(a5)
	.loc 1 1147 21
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	alloc_env
	sw	a0,-32(s0)
	.loc 1 1147 8 discriminator 1
	lw	a4,-32(s0)
	li	a5,-1
	beq	a4,a5,.L234
	.loc 1 1148 13
	lui	a5,%hi(in_recovery_check)
	lbu	a5,%lo(in_recovery_check)(a5)
	.loc 1 1148 12
	beq	a5,zero,.L235
.LBB22:
	.loc 1 1150 18
	addi	a5,s0,-224
	li	a4,65
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1151 30
	lw	a5,-228(s0)
	addi	a4,a5,16
	.loc 1 1151 41
	lw	a5,-228(s0)
	lbu	a5,2(a5)
	.loc 1 1151 13
	mv	a3,a5
	addi	a5,s0,-224
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	strncpy
	.loc 1 1153 17
	addi	a4,s0,-156
	addi	a5,s0,-224
	mv	a1,a4
	mv	a0,a5
	call	find_env_no_cache
	mv	a5,a0
	.loc 1 1153 16 discriminator 1
	beq	a5,zero,.L235
	.loc 1 1155 24
	sb	zero,-17(s0)
	j	.L237
.L234:
.LBE22:
	.loc 1 1160 16
	li	a5,6
	j	.L243
.L235:
.LBB23:
	.loc 1 1165 27
	lw	a5,-228(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	.loc 1 1168 39
	lw	a5,-228(s0)
	lw	a4,8(a5)
	.loc 1 1168 9
	addi	a5,s0,-68
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	update_sec_status
	.loc 1 1170 9
	addi	a5,s0,-44
	li	a3,1
	li	a2,6
	mv	a1,a5
	lw	a0,-32(s0)
	call	write_status
	.loc 1 1171 17
	lw	a5,-36(s0)
	addi	a5,a5,-8
	sw	a5,-36(s0)
	.loc 1 1172 18
	sw	zero,-24(s0)
	.loc 1 1172 28
	sw	zero,-28(s0)
	.loc 1 1172 9
	j	.L239
.L242:
	.loc 1 1173 21
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 1 1173 16
	lw	a4,-36(s0)
	bleu	a4,a5,.L240
	.loc 1 1174 22
	li	a5,32
	sw	a5,-28(s0)
	j	.L241
.L240:
	.loc 1 1176 22
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
.L241:
	.loc 1 1178 35
	lw	a5,-228(s0)
	lw	a4,80(a5)
	.loc 1 1178 98
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,8
	.loc 1 1178 13
	addi	a4,s0,-156
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	ef_port_read
	.loc 1 1179 101
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,8
	.loc 1 1179 22
	addi	a4,s0,-156
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	ef_port_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1172 52 discriminator 2
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L239:
	.loc 1 1172 37 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L242
	.loc 1 1181 9
	addi	a5,s0,-44
	li	a3,2
	li	a2,6
	mv	a1,a5
	lw	a0,-32(s0)
	call	write_status
	.loc 1 1184 9
	lw	a4,-32(s0)
	li	a5,-4096
	and	a3,a4,a5
	.loc 1 1185 126
	lw	a5,-228(s0)
	lbu	a5,2(a5)
	.loc 1 1185 163
	mv	a4,a5
	.loc 1 1185 117
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 1 1185 201
	lw	a5,-228(s0)
	lw	a5,12(a5)
	.loc 1 1185 192
	add	a5,a4,a5
	addi	a5,a5,28
	.loc 1 1184 9
	mv	a1,a5
	mv	a0,a3
	call	update_sector_cache
	.loc 1 1186 29
	lw	a5,-228(s0)
	addi	a4,a5,16
	.loc 1 1186 40
	lw	a5,-228(s0)
	lbu	a5,2(a5)
	.loc 1 1186 9
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	update_env_cache
.LBE23:
	.loc 1 1190 153
	lw	a5,-228(s0)
	lbu	a5,2(a5)
	.loc 1 1190 5
	mv	a3,a5
	.loc 1 1190 168
	lw	a5,-228(s0)
	addi	a4,a5,16
	.loc 1 1190 5
	lw	a5,-228(s0)
	lw	a5,80(a5)
	lw	a6,-32(s0)
	lui	a2,%hi(.LC19)
	addi	a2,a2,%lo(.LC19)
	li	a1,1190
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	ef_log_debug
.L237:
	.loc 1 1193 5
	li	a2,1
	lw	a1,-228(s0)
	li	a0,0
	call	del_env
	.loc 1 1195 12
	lbu	a5,-17(s0)
.L243:
	.loc 1 1196 1
	mv	a0,a5
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	move_env, .-move_env
	.section	.rodata
	.align	2
.LC20:
	.string	"Warning: Alloc an ENV (size %d) failed when new ENV. Now will GC then retry.\r\n"
	.section	.text.new_env,"ax",@progbits
	.align	1
	.type	new_env, @function
new_env:
.LFB38:
	.loc 1 1199 1
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
	.loc 1 1200 10
	sb	zero,-17(s0)
	.loc 1 1201 14
	li	a5,-1
	sw	a5,-24(s0)
.L245:
	.loc 1 1205 22
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	alloc_env
	sw	a0,-24(s0)
	.loc 1 1205 8 discriminator 1
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L246
	.loc 1 1205 65 discriminator 2
	lui	a5,%hi(gc_request)
	lbu	a5,%lo(gc_request)(a5)
	beq	a5,zero,.L246
	.loc 1 1205 82 discriminator 3
	lbu	a5,-17(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1205 79 discriminator 3
	beq	a5,zero,.L246
	.loc 1 1206 9
	lw	a3,-40(s0)
	lui	a5,%hi(.LC20)
	addi	a2,a5,%lo(.LC20)
	li	a1,1206
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1207 9
	call	gc_collect
	.loc 1 1208 20
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 1209 9
	j	.L245
.L246:
	.loc 1 1212 12
	lw	a5,-24(s0)
	.loc 1 1213 1
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
.LFE38:
	.size	new_env, .-new_env
	.section	.text.new_env_by_kv,"ax",@progbits
	.align	1
	.type	new_env_by_kv, @function
new_env_by_kv:
.LFB39:
	.loc 1 1216 1
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
	.loc 1 1217 180
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 1 1217 12
	addi	a5,a5,28
	sw	a5,-20(s0)
	.loc 1 1219 12
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	new_env
	mv	a5,a0
	.loc 1 1220 1
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
.LFE39:
	.size	new_env_by_kv, .-new_env_by_kv
	.section	.text.gc_check_cb,"ax",@progbits
	.align	1
	.type	gc_check_cb, @function
gc_check_cb:
.LFB40:
	.loc 1 1223 1
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
	.loc 1 1224 13
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 1226 15
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1226 8
	beq	a5,zero,.L251
	.loc 1 1227 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1227 33
	addi	a4,a5,1
	.loc 1 1227 20
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L251:
	.loc 1 1230 12
	li	a5,0
	.loc 1 1232 1
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
.LFE40:
	.size	gc_check_cb, .-gc_check_cb
	.section	.rodata
	.align	2
.LC21:
	.string	"Error: Moved the ENV (%.*s) for GC failed.\r\n"
	.align	2
.LC22:
	.string	"Collect a sector @0x%08X\r\n"
	.section	.text.do_gc,"ax",@progbits
	.align	1
	.type	do_gc, @function
do_gc:
.LFB41:
	.loc 1 1235 1
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
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	.loc 1 1238 15
	lw	a5,-116(s0)
	lbu	a5,0(a5)
	.loc 1 1238 8
	beq	a5,zero,.L254
	.loc 1 1238 44 discriminator 1
	lw	a5,-116(s0)
	lbu	a4,2(a5)
	.loc 1 1238 26 discriminator 1
	li	a5,2
	beq	a4,a5,.L255
	.loc 1 1238 89 discriminator 2
	lw	a5,-116(s0)
	lbu	a4,2(a5)
	.loc 1 1238 72 discriminator 2
	li	a5,3
	bne	a4,a5,.L254
.L255:
.LBB24:
	.loc 1 1241 28
	lw	a5,-116(s0)
	lw	a5,4(a5)
	.loc 1 1241 35
	addi	a5,a5,3
	.loc 1 1241 9
	addi	a4,s0,-108
	li	a3,3
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	write_status
	.loc 1 1243 24
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 1244 15
	j	.L256
.L259:
	.loc 1 1245 13
	addi	a5,s0,-104
	mv	a0,a5
	call	read_env
	.loc 1 1246 20
	lbu	a5,-103(s0)
	.loc 1 1246 16
	beq	a5,zero,.L256
	.loc 1 1246 38 discriminator 1
	lbu	a4,-104(s0)
	.loc 1 1246 31 discriminator 1
	li	a5,2
	beq	a4,a5,.L258
	.loc 1 1246 65 discriminator 2
	lbu	a4,-104(s0)
	.loc 1 1246 59 discriminator 2
	li	a5,3
	bne	a4,a5,.L256
.L258:
	.loc 1 1248 21
	addi	a5,s0,-104
	mv	a0,a5
	call	move_env
	mv	a5,a0
	.loc 1 1248 20 discriminator 1
	beq	a5,zero,.L256
	.loc 1 1249 168
	lbu	a5,-102(s0)
	.loc 1 1249 21
	mv	a3,a5
	addi	a5,s0,-104
	addi	a5,a5,16
	mv	a4,a5
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	li	a1,1249
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L256:
	.loc 1 1244 34
	addi	a5,s0,-104
	mv	a1,a5
	lw	a0,-116(s0)
	call	get_next_env_addr
	mv	a5,a0
	.loc 1 1244 32 discriminator 1
	sw	a5,-24(s0)
	.loc 1 1244 25 discriminator 1
	lw	a4,-24(s0)
	.loc 1 1244 67 discriminator 1
	li	a5,-1
	bne	a4,a5,.L259
	.loc 1 1253 9
	lw	a5,-116(s0)
	lw	a5,4(a5)
	li	a1,-1
	mv	a0,a5
	call	format_sector
	.loc 1 1254 9
	lw	a5,-116(s0)
	lw	a5,4(a5)
	mv	a3,a5
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	li	a1,1254
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L254:
.LBE24:
	.loc 1 1257 12
	li	a5,0
	.loc 1 1258 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	do_gc, .-do_gc
	.section	.rodata
	.align	2
.LC23:
	.string	"The remain empty sector is %d, GC threshold is %d.\r\n"
	.section	.text.gc_collect,"ax",@progbits
	.align	1
	.type	gc_collect, @function
gc_collect:
.LFB42:
	.loc 1 1266 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 1268 12
	sw	zero,-44(s0)
	.loc 1 1271 5
	addi	a2,s0,-44
	addi	a0,s0,-40
	li	a5,0
	lui	a4,%hi(gc_check_cb)
	addi	a4,a4,%lo(gc_check_cb)
	li	a3,0
	li	a1,1
	call	sector_iterator
	.loc 1 1274 5
	lw	a5,-44(s0)
	li	a4,1
	mv	a3,a5
	lui	a5,%hi(.LC23)
	addi	a2,a5,%lo(.LC23)
	li	a1,1274
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1275 19
	lw	a4,-44(s0)
	.loc 1 1275 8
	li	a5,1
	bgtu	a4,a5,.L262
	.loc 1 1276 9
	addi	a0,s0,-40
	li	a5,0
	lui	a4,%hi(do_gc)
	addi	a4,a4,%lo(do_gc)
	li	a3,0
	li	a2,0
	li	a1,0
	call	sector_iterator
.L262:
	.loc 1 1279 16
	lui	a5,%hi(gc_request)
	sb	zero,%lo(gc_request)(a5)
	.loc 1 1280 1
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
.LFE42:
	.size	gc_collect, .-gc_collect
	.section	.text.align_write,"ax",@progbits
	.align	1
	.type	align_write, @function
align_write:
.LFB43:
	.loc 1 1283 1
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
	.loc 1 1284 15
	sb	zero,-17(s0)
	.loc 1 1289 12
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 1296 5
	addi	a5,s0,-32
	lw	a2,-24(s0)
	li	a1,255
	mv	a0,a5
	call	memset
	.loc 1 1297 14
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ef_port_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1299 18
	sw	zero,-28(s0)
	.loc 1 1300 8
	lbu	a5,-17(s0)
	bne	a5,zero,.L264
	.loc 1 1300 29 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L264
	.loc 1 1301 9
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a4,a4,a5
	addi	a5,s0,-32
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 1302 37
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 1 1302 18
	addi	a4,s0,-32
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	ef_port_write
	mv	a5,a0
	sb	a5,-17(s0)
.L264:
	.loc 1 1305 12
	lbu	a5,-17(s0)
	.loc 1 1306 1
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
.LFE43:
	.size	align_write, .-align_write
	.section	.rodata
	.align	2
.LC24:
	.string	"Error: The ENV name length is more than %d\r\n"
	.align	2
.LC25:
	.string	"Error: The ENV size is too big\r\n"
	.align	2
.LC26:
	.string	"Trigger a GC check after created ENV.\r\n"
	.section	.text.create_env_blob,"ax",@progbits
	.align	1
	.type	create_env_blob, @function
create_env_blob:
.LFB44:
	.loc 1 1309 1
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
	.loc 1 1310 15
	sb	zero,-17(s0)
	.loc 1 1312 10
	sb	zero,-57(s0)
	.loc 1 1313 14
	lw	a5,-68(s0)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	.loc 1 1315 9
	lw	a0,-72(s0)
	call	strlen
	mv	a4,a0
	.loc 1 1315 8 discriminator 1
	li	a5,64
	bleu	a4,a5,.L267
	.loc 1 1316 9
	li	a1,64
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	ef_log_info
	.loc 1 1317 16
	li	a5,4
	j	.L284
.L267:
	.loc 1 1320 5
	addi	a5,s0,-56
	li	a2,28
	li	a1,255
	mv	a0,a5
	call	memset
	.loc 1 1321 19
	li	a5,808734720
	addi	a5,a5,1611
	sw	a5,-48(s0)
	.loc 1 1322 24
	lw	a0,-72(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1322 22 discriminator 1
	andi	a5,a5,0xff
	sb	a5,-36(s0)
	.loc 1 1323 23
	lw	a5,-80(s0)
	sw	a5,-32(s0)
	.loc 1 1324 121
	lbu	a5,-36(s0)
	.loc 1 1324 186
	mv	a4,a5
	.loc 1 1324 199
	lw	a5,-32(s0)
	.loc 1 1324 186
	add	a5,a4,a5
	addi	a5,a5,28
	.loc 1 1324 17
	sw	a5,-44(s0)
	.loc 1 1326 16
	lw	a4,-44(s0)
	.loc 1 1326 8
	li	a5,4096
	addi	a5,a5,-20
	bleu	a4,a5,.L269
	.loc 1 1327 9
	lui	a5,%hi(.LC25)
	addi	a0,a5,%lo(.LC25)
	call	ef_log_info
	.loc 1 1328 16
	li	a5,6
	j	.L284
.L269:
	.loc 1 1331 8
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L270
	.loc 1 1331 70 discriminator 1
	lw	a5,-44(s0)
	.loc 1 1331 47 discriminator 1
	mv	a1,a5
	lw	a0,-68(s0)
	call	new_env
	sw	a0,-24(s0)
	.loc 1 1331 32 discriminator 2
	lw	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L271
.L270:
.LBB25:
	.loc 1 1334 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L272
	.loc 1 1335 55
	lw	a5,-44(s0)
	.loc 1 1335 22
	addi	a4,s0,-57
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	update_sec_status
	mv	a5,a0
	sb	a5,-17(s0)
.L272:
	.loc 1 1337 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L273
.LBB26:
	.loc 1 1338 21
	li	a5,-1
	sb	a5,-58(s0)
	.loc 1 1340 29
	addi	a5,s0,-56
	addi	a5,a5,20
	li	a2,8
	mv	a1,a5
	li	a0,0
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 1340 27 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1341 29
	lw	a5,-40(s0)
	.loc 1 1341 70
	lbu	a4,-36(s0)
	.loc 1 1341 29
	mv	a2,a4
	lw	a1,-72(s0)
	mv	a0,a5
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 1341 27 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1342 26
	sw	zero,-28(s0)
	.loc 1 1343 19
	j	.L274
.L275:
	.loc 1 1344 33
	lw	a5,-40(s0)
	addi	a4,s0,-58
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 1344 31 discriminator 1
	sw	a5,-40(s0)
.L274:
	.loc 1 1343 32
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	.loc 1 1343 20
	bne	a5,zero,.L275
	.loc 1 1346 29
	lw	a5,-40(s0)
	.loc 1 1346 72
	lw	a4,-32(s0)
	.loc 1 1346 29
	mv	a2,a4
	lw	a1,-76(s0)
	mv	a0,a5
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 1346 27 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1347 26
	sw	zero,-28(s0)
	.loc 1 1348 19
	j	.L276
.L277:
	.loc 1 1349 33
	lw	a5,-40(s0)
	addi	a4,s0,-58
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	ef_calc_crc32
	mv	a5,a0
	.loc 1 1349 31 discriminator 1
	sw	a5,-40(s0)
.L276:
	.loc 1 1348 32
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	.loc 1 1348 20
	bne	a5,zero,.L277
	.loc 1 1352 22
	addi	a5,s0,-56
	mv	a1,a5
	lw	a0,-24(s0)
	call	write_env_hdr
	mv	a5,a0
	sb	a5,-17(s0)
.L273:
.LBE26:
	.loc 1 1356 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L278
	.loc 1 1357 43
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 1 1357 160
	lbu	a4,-36(s0)
	.loc 1 1357 22
	mv	a2,a4
	lw	a1,-72(s0)
	mv	a0,a5
	call	align_write
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1360 17
	lbu	a5,-57(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1360 16
	beq	a5,zero,.L279
	.loc 1 1361 17
	lw	a5,-68(s0)
	lw	a3,4(a5)
	.loc 1 1362 138
	lbu	a5,-36(s0)
	.loc 1 1362 174
	mv	a4,a5
	.loc 1 1362 125
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 1362 216
	lw	a5,-32(s0)
	.loc 1 1362 203
	add	a5,a4,a5
	addi	a5,a5,28
	.loc 1 1361 17
	mv	a1,a5
	mv	a0,a3
	call	update_sector_cache
.L279:
	.loc 1 1364 42
	lbu	a5,-36(s0)
	.loc 1 1364 13
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-72(s0)
	call	update_env_cache
.L278:
	.loc 1 1368 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L280
	.loc 1 1369 147
	lbu	a5,-36(s0)
	.loc 1 1369 183
	mv	a4,a5
	.loc 1 1369 134
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,28
	.loc 1 1370 28
	lw	a4,-32(s0)
	.loc 1 1369 22
	mv	a2,a4
	lw	a1,-76(s0)
	mv	a0,a5
	call	align_write
	mv	a5,a0
	sb	a5,-17(s0)
.L280:
	.loc 1 1373 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L281
	.loc 1 1374 22
	addi	a5,s0,-56
	li	a3,2
	li	a2,6
	mv	a1,a5
	lw	a0,-24(s0)
	call	write_status
	mv	a5,a0
	sb	a5,-17(s0)
.L281:
	.loc 1 1377 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L285
	.loc 1 1377 33 discriminator 1
	lbu	a5,-57(s0)
	beq	a5,zero,.L285
	.loc 1 1378 13
	lui	a5,%hi(.LC26)
	addi	a2,a5,%lo(.LC26)
	li	a1,1378
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1379 24
	lui	a5,%hi(gc_request)
	li	a4,1
	sb	a4,%lo(gc_request)(a5)
.LBE25:
	.loc 1 1331 92
	j	.L285
.L271:
	.loc 1 1382 16
	li	a5,6
	sb	a5,-17(s0)
	j	.L283
.L285:
	.loc 1 1331 92
	nop
.L283:
	.loc 1 1385 12
	lbu	a5,-17(s0)
.L284:
	.loc 1 1386 1
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
.LFE44:
	.size	create_env_blob, .-create_env_blob
	.section	.rodata
	.align	2
.LC27:
	.string	"Error: ENV isn't initialize OK.\r\n"
	.align	2
.LC28:
	.string	"[%10u][%s: %s:%4d] key = %p\r\n"
	.section	.text.ef_del_env,"ax",@progbits
	.align	1
	.globl	ef_del_env
	.type	ef_del_env, @function
ef_del_env:
.LFB45:
	.loc 1 1396 1
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
	.loc 1 1397 15
	sb	zero,-17(s0)
	.loc 1 1399 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1399 8
	beq	a5,zero,.L287
	.loc 1 1400 9
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	ef_log_info
	.loc 1 1401 16
	li	a5,7
	j	.L288
.L287:
	.loc 1 1404 8
	lw	a5,-36(s0)
	beq	a5,zero,.L289
	.loc 1 1404 18 discriminator 1
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 1404 14 discriminator 2
	li	a5,64
	bleu	a4,a5,.L290
.L289:
.LBB27:
.LBB28:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE28:
.LBE27:
	.loc 1 1405 16 discriminator 1
	beq	a5,zero,.L292
	.loc 1 1405 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L293
.L292:
	.loc 1 1405 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L293:
	.loc 1 1405 16 discriminator 7
	lw	a5,-36(s0)
	li	a4,1405
	lui	a3,%hi(.LC10)
	addi	a3,a3,%lo(.LC10)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	lui	a0,%hi(.LC28)
	addi	a0,a0,%lo(.LC28)
	call	bl_printk
	.loc 1 1406 16
	li	a5,0
	j	.L288
.L290:
	.loc 1 1410 5
	call	ef_port_env_lock
	.loc 1 1412 14
	li	a2,1
	li	a1,0
	lw	a0,-36(s0)
	call	del_env
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1415 5
	call	ef_port_env_unlock
	.loc 1 1417 12
	lbu	a5,-17(s0)
.L288:
	.loc 1 1418 1
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
.LFE45:
	.size	ef_del_env, .-ef_del_env
	.section	.text.ef_del_and_save_env,"ax",@progbits
	.align	1
	.globl	ef_del_and_save_env
	.type	ef_del_and_save_env, @function
ef_del_and_save_env:
.LFB46:
	.loc 1 1431 1
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
	.loc 1 1432 12
	lw	a0,-20(s0)
	call	ef_del_env
	mv	a5,a0
	.loc 1 1433 1
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
.LFE46:
	.size	ef_del_and_save_env, .-ef_del_and_save_env
	.section	.text.set_env,"ax",@progbits
	.align	1
	.type	set_env, @function
set_env:
.LFB47:
	.loc 1 1436 1
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
	.loc 1 1437 15
	sb	zero,-17(s0)
	.loc 1 1440 10
	sb	zero,-18(s0)
	.loc 1 1442 8
	lw	a5,-40(s0)
	bne	a5,zero,.L297
	.loc 1 1443 18
	li	a2,1
	li	a1,0
	lw	a0,-36(s0)
	call	del_env
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L298
.L297:
	.loc 1 1446 13
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1446 13 is_stmt 0 discriminator 1
	lw	a2,-44(s0)
	mv	a1,a5
	lui	a5,%hi(sector.3)
	addi	a0,a5,%lo(sector.3)
	call	new_env_by_kv
	mv	a4,a0
	.loc 1 1446 12 is_stmt 1 discriminator 2
	li	a5,-1
	bne	a4,a5,.L299
	.loc 1 1447 20
	li	a5,6
	j	.L300
.L299:
	.loc 1 1449 24
	lui	a5,%hi(env.2)
	addi	a1,a5,%lo(env.2)
	lw	a0,-36(s0)
	call	find_env
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 1451 12
	lbu	a5,-18(s0)
	beq	a5,zero,.L301
	.loc 1 1452 22
	li	a2,0
	lui	a5,%hi(env.2)
	addi	a1,a5,%lo(env.2)
	lw	a0,-36(s0)
	call	del_env
	mv	a5,a0
	sb	a5,-17(s0)
.L301:
	.loc 1 1455 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L302
	.loc 1 1456 22
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(sector.3)
	addi	a0,a5,%lo(sector.3)
	call	create_env_blob
	mv	a5,a0
	sb	a5,-17(s0)
.L302:
	.loc 1 1459 12
	lbu	a5,-18(s0)
	beq	a5,zero,.L303
	.loc 1 1459 26 discriminator 1
	lbu	a5,-17(s0)
	bne	a5,zero,.L303
	.loc 1 1460 22
	li	a2,1
	lui	a5,%hi(env.2)
	addi	a1,a5,%lo(env.2)
	lw	a0,-36(s0)
	call	del_env
	mv	a5,a0
	sb	a5,-17(s0)
.L303:
	.loc 1 1463 13
	lui	a5,%hi(gc_request)
	lbu	a5,%lo(gc_request)(a5)
	.loc 1 1463 12
	beq	a5,zero,.L298
	.loc 1 1464 13
	call	gc_collect
.L298:
	.loc 1 1468 12
	lbu	a5,-17(s0)
.L300:
	.loc 1 1469 1
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
.LFE47:
	.size	set_env, .-set_env
	.section	.rodata
	.align	2
.LC29:
	.string	"[%10u][%s: %s:%4d] buf_len err. %d > %d\r\n"
	.section	.text.ef_set_env_blob,"ax",@progbits
	.align	1
	.globl	ef_set_env_blob
	.type	ef_set_env_blob, @function
ef_set_env_blob:
.LFB48:
	.loc 1 1482 1
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
	sw	a2,-44(s0)
	.loc 1 1483 15
	sb	zero,-17(s0)
	.loc 1 1486 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1486 8
	beq	a5,zero,.L305
	.loc 1 1487 9
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	ef_log_info
	.loc 1 1488 16
	li	a5,7
	j	.L306
.L305:
	.loc 1 1491 8
	lw	a5,-36(s0)
	beq	a5,zero,.L307
	.loc 1 1491 14 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L308
.L307:
.LBB29:
.LBB30:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE30:
.LBE29:
	.loc 1 1492 16 discriminator 1
	beq	a5,zero,.L310
	.loc 1 1492 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L311
.L310:
	.loc 1 1492 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L311:
	.loc 1 1492 16 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-36(s0)
	li	a4,1492
	lui	a3,%hi(.LC10)
	addi	a3,a3,%lo(.LC10)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
	.loc 1 1493 16
	li	a5,8
	j	.L306
.L308:
	.loc 1 1496 9
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 1496 8 discriminator 1
	li	a5,64
	bleu	a4,a5,.L312
.LBB31:
.LBB32:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE32:
.LBE31:
	.loc 1 1497 16 discriminator 1
	beq	a5,zero,.L314
	.loc 1 1497 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L315
.L314:
	.loc 1 1497 129 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L315:
	.loc 1 1497 16 discriminator 7
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1497 16 is_stmt 0 discriminator 8
	li	a6,64
	li	a4,1497
	lui	a3,%hi(.LC10)
	addi	a3,a3,%lo(.LC10)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	mv	a1,s1
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
	.loc 1 1498 16 is_stmt 1
	li	a5,8
	j	.L306
.L312:
	.loc 1 1501 8
	lw	a4,-44(s0)
	li	a5,4096
	addi	a5,a5,-116
	bleu	a4,a5,.L316
.LBB33:
.LBB34:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE34:
.LBE33:
	.loc 1 1502 16 discriminator 1
	beq	a5,zero,.L318
	.loc 1 1502 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L319
.L318:
	.loc 1 1502 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L319:
	.loc 1 1502 16 discriminator 7
	li	a5,4096
	addi	a6,a5,-116
	lw	a5,-44(s0)
	li	a4,1502
	lui	a3,%hi(.LC10)
	addi	a3,a3,%lo(.LC10)
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	lui	a0,%hi(.LC29)
	addi	a0,a0,%lo(.LC29)
	call	bl_printk
	.loc 1 1503 16
	li	a5,8
	j	.L306
.L316:
	.loc 1 1507 5
	call	ef_port_env_lock
	.loc 1 1509 14
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	set_env
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1512 5
	call	ef_port_env_unlock
	.loc 1 1514 12
	lbu	a5,-17(s0)
.L306:
	.loc 1 1515 1
	mv	a0,a5
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
.LFE48:
	.size	ef_set_env_blob, .-ef_set_env_blob
	.section	.text.ef_set_env,"ax",@progbits
	.align	1
	.globl	ef_set_env
	.type	ef_set_env, @function
ef_set_env:
.LFB49:
	.loc 1 1527 1
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
	.loc 1 1528 12
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1528 12 is_stmt 0 discriminator 1
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ef_set_env_blob
	mv	a5,a0
	.loc 1 1529 1 is_stmt 1
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
.LFE49:
	.size	ef_set_env, .-ef_set_env
	.section	.text.ef_set_and_save_env,"ax",@progbits
	.align	1
	.globl	ef_set_and_save_env
	.type	ef_set_and_save_env, @function
ef_set_and_save_env:
.LFB50:
	.loc 1 1543 1
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
	.loc 1 1544 12
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1544 12 is_stmt 0 discriminator 1
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ef_set_env_blob
	mv	a5,a0
	.loc 1 1545 1 is_stmt 1
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
.LFE50:
	.size	ef_set_and_save_env, .-ef_set_and_save_env
	.section	.text.ef_save_env,"ax",@progbits
	.align	1
	.globl	ef_save_env
	.type	ef_save_env, @function
ef_save_env:
.LFB51:
	.loc 1 1553 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1555 12
	li	a5,0
	.loc 1 1556 1
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
.LFE51:
	.size	ef_save_env, .-ef_save_env
	.section	.rodata
	.align	2
.LC30:
	.string	"default_env_set"
	.align	2
.LC31:
	.string	"default_env_set_size"
	.section	.text.ef_env_set_default,"ax",@progbits
	.align	1
	.globl	ef_env_set_default
	.type	ef_env_set_default, @function
ef_env_set_default:
.LFB52:
	.loc 1 1564 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 1565 15
	sb	zero,-17(s0)
	.loc 1 1569 9
	lui	a5,%hi(default_env_set)
	lw	a5,%lo(default_env_set)(a5)
	.loc 1 1569 8
	bne	a5,zero,.L327
	.loc 1 1569 31 discriminator 1
	lui	a5,%hi(__FUNCTION__.1)
	addi	a4,a5,%lo(__FUNCTION__.1)
	lui	a5,%hi(.LC30)
	addi	a3,a5,%lo(.LC30)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,1569
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L328:
	.loc 1 1569 202
	nop
	j	.L328
.L327:
	.loc 1 1570 9
	lui	a5,%hi(default_env_set_size)
	lw	a5,%lo(default_env_set_size)(a5)
	.loc 1 1570 8
	bne	a5,zero,.L329
	.loc 1 1570 36 discriminator 1
	lui	a5,%hi(__FUNCTION__.1)
	addi	a4,a5,%lo(__FUNCTION__.1)
	lui	a5,%hi(.LC31)
	addi	a3,a5,%lo(.LC31)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,1570
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L330:
	.loc 1 1570 212
	nop
	j	.L330
.L329:
	.loc 1 1573 5
	call	ef_port_env_lock
	.loc 1 1575 15
	lui	a5,%hi(env_start_addr)
	lw	a5,%lo(env_start_addr)(a5)
	sw	a5,-24(s0)
	.loc 1 1575 5
	j	.L331
.L334:
	.loc 1 1576 18
	li	a1,-1
	lw	a0,-24(s0)
	call	format_sector
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 1577 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L341
	.loc 1 1575 77 discriminator 2
	lw	a4,-24(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-24(s0)
.L331:
	.loc 1 1575 55 discriminator 1
	lui	a5,%hi(env_start_addr)
	lw	a4,%lo(env_start_addr)(a5)
	li	a5,32768
	add	a5,a4,a5
	.loc 1 1575 38 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L334
	.loc 1 1582 12
	sw	zero,-28(s0)
	.loc 1 1582 5
	j	.L335
.L339:
	.loc 1 1585 28
	lui	a5,%hi(default_env_set)
	lw	a3,%lo(default_env_set)(a5)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 1585 31
	lw	a5,8(a5)
	.loc 1 1585 12
	bne	a5,zero,.L336
	.loc 1 1586 47
	lui	a5,%hi(default_env_set)
	lw	a3,%lo(default_env_set)(a5)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 1586 50
	lw	a5,4(a5)
	.loc 1 1586 25
	mv	a0,a5
	call	strlen
	sw	a0,-32(s0)
	j	.L337
.L336:
	.loc 1 1588 40
	lui	a5,%hi(default_env_set)
	lw	a3,%lo(default_env_set)(a5)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 1588 23
	lw	a5,8(a5)
	sw	a5,-32(s0)
.L337:
	.loc 1 1590 26
	li	a5,-1
	sw	a5,-36(s0)
	.loc 1 1591 49
	lui	a5,%hi(default_env_set)
	lw	a3,%lo(default_env_set)(a5)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 1591 52
	lw	a1,0(a5)
	.loc 1 1591 73
	lui	a5,%hi(default_env_set)
	lw	a3,%lo(default_env_set)(a5)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 1591 76
	lw	a4,4(a5)
	.loc 1 1591 9
	addi	a5,s0,-56
	lw	a3,-32(s0)
	mv	a2,a4
	mv	a0,a5
	call	create_env_blob
	.loc 1 1592 12
	lbu	a5,-17(s0)
	bne	a5,zero,.L342
	.loc 1 1582 44 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L335:
	.loc 1 1582 19 discriminator 1
	lui	a5,%hi(default_env_set_size)
	lw	a5,%lo(default_env_set_size)(a5)
	lw	a4,-28(s0)
	bltu	a4,a5,.L339
	.loc 1 1597 1
	j	.L333
.L341:
	.loc 1 1578 13
	nop
	j	.L333
.L342:
	.loc 1 1593 13
	nop
.L333:
	.loc 1 1599 5
	call	ef_port_env_unlock
	.loc 1 1601 12
	lbu	a5,-17(s0)
	.loc 1 1602 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	ef_env_set_default, .-ef_env_set_default
	.section	.rodata
	.align	2
.LC32:
	.string	"%.*s="
	.align	2
.LC33:
	.string	"%.*s"
	.align	2
.LC34:
	.string	"blob @0x%08X %dbytes"
	.align	2
.LC35:
	.string	"\r\n"
	.section	.text.print_env_cb,"ax",@progbits
	.align	1
	.type	print_env_cb, @function
print_env_cb:
.LFB53:
	.loc 1 1605 1
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
	.loc 1 1606 10
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 1606 31
	sb	zero,-18(s0)
	.loc 1 1607 13
	lw	a5,-72(s0)
	sw	a5,-32(s0)
	.loc 1 1609 12
	lw	a5,-68(s0)
	lbu	a5,1(a5)
	.loc 1 1609 8
	beq	a5,zero,.L344
	.loc 1 1611 9
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 1611 27
	lw	a5,-68(s0)
	lw	a5,8(a5)
	.loc 1 1611 21
	add	a4,a4,a5
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 1 1613 16
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	.loc 1 1613 12
	li	a5,2
	bne	a4,a5,.L344
	.loc 1 1614 34
	lw	a5,-68(s0)
	lbu	a5,2(a5)
	.loc 1 1614 13
	mv	a4,a5
	.loc 1 1614 49
	lw	a5,-68(s0)
	addi	a5,a5,16
	.loc 1 1614 13
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	ef_print
	.loc 1 1616 20
	lw	a5,-68(s0)
	lw	a4,12(a5)
	.loc 1 1616 16
	li	a5,4096
	addi	a5,a5,-117
	bgtu	a4,a5,.L345
.LBB35:
	.loc 1 1619 1
	nop
.L346:
	.loc 1 1621 26
	sw	zero,-24(s0)
	.loc 1 1621 36
	sw	zero,-28(s0)
	.loc 1 1621 17
	j	.L347
.L353:
	.loc 1 1622 29
	lw	a5,-24(s0)
	addi	a4,a5,32
	.loc 1 1622 48
	lw	a5,-68(s0)
	lw	a5,12(a5)
	.loc 1 1622 24
	bgeu	a4,a5,.L348
	.loc 1 1623 30
	li	a5,32
	sw	a5,-28(s0)
	j	.L349
.L348:
	.loc 1 1625 35
	lw	a5,-68(s0)
	lw	a4,12(a5)
	.loc 1 1625 30
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
.L349:
	.loc 1 1627 43
	lw	a5,-68(s0)
	lw	a4,84(a5)
	.loc 1 1627 50
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 1627 21
	addi	a4,s0,-64
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	ef_port_read
	.loc 1 1628 24
	lbu	a5,-18(s0)
	beq	a5,zero,.L350
	.loc 1 1629 25
	addi	a5,s0,-64
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC33)
	addi	a0,a5,%lo(.LC33)
	call	ef_print
	j	.L351
.L350:
	.loc 1 1630 33
	addi	a5,s0,-64
	lw	a1,-28(s0)
	mv	a0,a5
	call	ef_is_str
	mv	a5,a0
	.loc 1 1630 32 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1630 31 discriminator 1
	beq	a5,zero,.L351
	.loc 1 1631 38
	sb	zero,-17(s0)
	.loc 1 1632 25
	j	.L354
.L351:
	.loc 1 1621 67 discriminator 2
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L347:
	.loc 1 1621 50 discriminator 1
	lw	a5,-68(s0)
	lw	a5,12(a5)
	.loc 1 1621 45 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L353
	j	.L354
.L345:
.LBE35:
	.loc 1 1636 30
	sb	zero,-17(s0)
.L354:
	.loc 1 1638 16
	lbu	a5,-17(s0)
	beq	a5,zero,.L355
	.loc 1 1638 33 discriminator 1
	lbu	a5,-18(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1638 30 discriminator 1
	beq	a5,zero,.L355
	.loc 1 1639 29
	li	a5,1
	sb	a5,-18(s0)
	.loc 1 1640 17
	j	.L346
.L355:
	.loc 1 1641 24
	lbu	a5,-17(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1641 23
	beq	a5,zero,.L356
	.loc 1 1642 17
	lw	a5,-68(s0)
	lw	a4,84(a5)
	lw	a5,-68(s0)
	lw	a5,12(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC34)
	addi	a0,a5,%lo(.LC34)
	call	ef_print
.L356:
	.loc 1 1644 13
	lui	a5,%hi(.LC35)
	addi	a0,a5,%lo(.LC35)
	call	ef_print
.L344:
	.loc 1 1648 12
	li	a5,0
	.loc 1 1649 1
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
.LFE53:
	.size	print_env_cb, .-print_env_cb
	.section	.rodata
	.align	2
.LC36:
	.string	"\r\nmode: next generation\r\n"
	.align	2
.LC37:
	.string	"size: %lu/%lu bytes.\r\n"
	.section	.text.ef_print_env,"ax",@progbits
	.align	1
	.globl	ef_print_env
	.type	ef_print_env, @function
ef_print_env:
.LFB54:
	.loc 1 1656 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	.loc 1 1658 12
	sw	zero,-108(s0)
	.loc 1 1660 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1660 8
	beq	a5,zero,.L359
	.loc 1 1661 9
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	ef_log_info
	j	.L358
.L359:
	.loc 1 1666 5
	call	ef_port_env_lock
	.loc 1 1668 5
	addi	a1,s0,-108
	addi	a4,s0,-104
	lui	a5,%hi(print_env_cb)
	addi	a3,a5,%lo(print_env_cb)
	li	a2,0
	mv	a0,a4
	call	env_iterator
	.loc 1 1670 5
	lui	a5,%hi(.LC36)
	addi	a0,a5,%lo(.LC36)
	call	ef_print
	.loc 1 1671 5
	lw	a5,-108(s0)
	addi	a5,a5,140
	li	a2,28672
	mv	a1,a5
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	ef_print
	.loc 1 1675 5
	call	ef_port_env_unlock
.L358:
	.loc 1 1676 1
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	ef_print_env, .-ef_print_env
	.section	.rodata
	.align	2
.LC38:
	.string	"Warning: Sector header check failed. Format this sector (0x%08x).\r\n"
	.section	.text.check_sec_hdr_cb,"ax",@progbits
	.align	1
	.type	check_sec_hdr_cb, @function
check_sec_hdr_cb:
.LFB55:
	.loc 1 1718 1
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
	.loc 1 1719 16
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1719 9
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1719 8
	beq	a5,zero,.L362
.LBB36:
	.loc 1 1720 17
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 1722 9
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a1,a5
	lui	a5,%hi(.LC38)
	addi	a0,a5,%lo(.LC38)
	call	ef_log_info
	.loc 1 1723 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1723 25
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 1724 9
	lw	a5,-36(s0)
	lw	a5,4(a5)
	li	a1,-1
	mv	a0,a5
	call	format_sector
.L362:
.LBE36:
	.loc 1 1727 12
	li	a5,0
	.loc 1 1728 1
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
.LFE55:
	.size	check_sec_hdr_cb, .-check_sec_hdr_cb
	.section	.text.check_and_recovery_gc_cb,"ax",@progbits
	.align	1
	.type	check_and_recovery_gc_cb, @function
check_and_recovery_gc_cb:
.LFB56:
	.loc 1 1731 1
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
	.loc 1 1732 15
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 1732 8
	beq	a5,zero,.L365
	.loc 1 1732 43 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,2(a5)
	.loc 1 1732 26 discriminator 1
	li	a5,3
	bne	a4,a5,.L365
	.loc 1 1734 20
	lui	a5,%hi(gc_request)
	li	a4,1
	sb	a4,%lo(gc_request)(a5)
	.loc 1 1736 9
	call	gc_collect
.L365:
	.loc 1 1739 12
	li	a5,0
	.loc 1 1740 1
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
.LFE56:
	.size	check_and_recovery_gc_cb, .-check_and_recovery_gc_cb
	.section	.rodata
	.align	2
.LC39:
	.string	"Found an ENV (%.*s) which has changed value failed. Now will recovery it.\r\n"
	.align	2
.LC40:
	.string	"Recovery the ENV successful.\r\n"
	.align	2
.LC41:
	.string	"Warning: Moved an ENV (size %d) failed when recovery. Now will GC then retry.\r\n"
	.section	.text.check_and_recovery_env_cb,"ax",@progbits
	.align	1
	.type	check_and_recovery_env_cb, @function
check_and_recovery_env_cb:
.LFB57:
	.loc 1 1743 1
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
	.loc 1 1745 12
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 1745 8
	beq	a5,zero,.L368
	.loc 1 1745 30 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 1745 24 discriminator 1
	li	a5,3
	bne	a4,a5,.L368
	.loc 1 1746 105
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 1746 9
	mv	a4,a5
	.loc 1 1746 120
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 1746 9
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC39)
	addi	a0,a5,%lo(.LC39)
	call	ef_log_info
	.loc 1 1748 13
	lw	a0,-36(s0)
	call	move_env
	mv	a5,a0
	.loc 1 1748 12 discriminator 1
	bne	a5,zero,.L369
	.loc 1 1749 13
	lui	a5,%hi(.LC40)
	addi	a2,a5,%lo(.LC40)
	li	a1,1749
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1748 12
	j	.L372
.L369:
	.loc 1 1751 13
	lw	a5,-36(s0)
	lw	a5,8(a5)
	mv	a3,a5
	lui	a5,%hi(.LC41)
	addi	a2,a5,%lo(.LC41)
	li	a1,1751
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1752 20
	li	a5,1
	j	.L371
.L368:
	.loc 1 1754 19
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 1754 15
	li	a5,1
	bne	a4,a5,.L372
.LBB37:
	.loc 1 1758 9
	lw	a5,-36(s0)
	lw	a5,80(a5)
	addi	a4,s0,-24
	li	a3,5
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	write_status
	.loc 1 1759 16
	li	a5,1
	j	.L371
.L372:
.LBE37:
	.loc 1 1762 12
	li	a5,0
.L371:
	.loc 1 1763 1
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
.LFE57:
	.size	check_and_recovery_env_cb, .-check_and_recovery_env_cb
	.section	.rodata
	.align	2
.LC42:
	.string	"Warning: All sector header check failed. Set it to default.\r\n"
	.section	.text.ef_load_env,"ax",@progbits
	.align	1
	.globl	ef_load_env
	.type	ef_load_env, @function
ef_load_env:
.LFB58:
	.loc 1 1771 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	.loc 1 1772 15
	sb	zero,-17(s0)
	.loc 1 1775 12
	sw	zero,-136(s0)
	.loc 1 1777 23
	lui	a5,%hi(in_recovery_check)
	li	a4,1
	sb	a4,%lo(in_recovery_check)(a5)
	.loc 1 1779 5
	addi	a2,s0,-136
	addi	a0,s0,-132
	li	a5,0
	lui	a4,%hi(check_sec_hdr_cb)
	addi	a4,a4,%lo(check_sec_hdr_cb)
	li	a3,0
	li	a1,0
	call	sector_iterator
	.loc 1 1781 28
	lw	a4,-136(s0)
	.loc 1 1781 8
	li	a5,8
	bne	a4,a5,.L374
	.loc 1 1782 9
	lui	a5,%hi(.LC42)
	addi	a0,a5,%lo(.LC42)
	call	ef_log_info
	.loc 1 1783 9
	call	ef_env_set_default
.L374:
	.loc 1 1787 5
	call	ef_port_env_lock
	.loc 1 1789 5
	addi	a0,s0,-132
	li	a5,0
	lui	a4,%hi(check_and_recovery_gc_cb)
	addi	a4,a4,%lo(check_and_recovery_gc_cb)
	li	a3,0
	li	a2,0
	li	a1,0
	call	sector_iterator
.L375:
	.loc 1 1793 5
	addi	a4,s0,-108
	lui	a5,%hi(check_and_recovery_env_cb)
	addi	a3,a5,%lo(check_and_recovery_env_cb)
	li	a2,0
	li	a1,0
	mv	a0,a4
	call	env_iterator
	.loc 1 1794 9
	lui	a5,%hi(gc_request)
	lbu	a5,%lo(gc_request)(a5)
	.loc 1 1794 8
	beq	a5,zero,.L376
	.loc 1 1795 9
	call	gc_collect
	.loc 1 1796 9
	j	.L375
.L376:
	.loc 1 1799 23
	lui	a5,%hi(in_recovery_check)
	sb	zero,%lo(in_recovery_check)(a5)
	.loc 1 1802 5
	call	ef_port_env_unlock
	.loc 1 1804 12
	lbu	a5,-17(s0)
	.loc 1 1805 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	ef_load_env, .-ef_load_env
	.section	.rodata
	.align	2
.LC43:
	.string	"default_env"
	.align	2
.LC44:
	.string	"ENV start address is 0x%08X, size is %d bytes.\r\n"
	.section	.text.ef_env_init,"ax",@progbits
	.align	1
	.globl	ef_env_init
	.type	ef_env_init, @function
ef_env_init:
.LFB59:
	.loc 1 1815 75
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
	.loc 1 1816 15
	sb	zero,-21(s0)
	.loc 1 1822 8
	lw	a5,-36(s0)
	bne	a5,zero,.L379
	.loc 1 1822 27 discriminator 1
	lui	a5,%hi(__FUNCTION__.0)
	addi	a4,a5,%lo(__FUNCTION__.0)
	lui	a5,%hi(.LC43)
	addi	a3,a5,%lo(.LC43)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	li	a1,1822
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
.L380:
	.loc 1 1822 194
	nop
	j	.L380
.L379:
	.loc 1 1831 9
	lui	a5,%hi(init_ok)
	lbu	a5,%lo(init_ok)(a5)
	.loc 1 1831 8
	beq	a5,zero,.L381
	.loc 1 1832 16
	li	a5,0
	j	.L382
.L381:
	.loc 1 1836 12
	sw	zero,-20(s0)
	.loc 1 1836 5
	j	.L383
.L384:
	.loc 1 1837 36
	lui	a5,%hi(sector_cache_table)
	addi	a4,a5,%lo(sector_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-1
	sw	a4,0(a5)
	.loc 1 1836 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L383:
	.loc 1 1836 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L384
	.loc 1 1839 12
	sw	zero,-20(s0)
	.loc 1 1839 5
	j	.L385
.L386:
	.loc 1 1840 33
	lui	a5,%hi(env_cache_table)
	addi	a4,a5,%lo(env_cache_table)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-1
	sw	a4,4(a5)
	.loc 1 1839 26 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L385:
	.loc 1 1839 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L386
	.loc 1 1844 20
	lui	a5,%hi(env_start_addr)
	sw	zero,%lo(env_start_addr)(a5)
	.loc 1 1845 21
	lui	a5,%hi(default_env_set)
	lw	a4,-36(s0)
	sw	a4,%lo(default_env_set)(a5)
	.loc 1 1846 26
	lui	a5,%hi(default_env_set_size)
	lw	a4,-40(s0)
	sw	a4,%lo(default_env_set_size)(a5)
	.loc 1 1848 5
	li	a4,32768
	li	a3,0
	lui	a5,%hi(.LC44)
	addi	a2,a5,%lo(.LC44)
	li	a1,1848
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	ef_log_debug
	.loc 1 1850 14
	call	ef_load_env
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 1858 8
	lbu	a5,-21(s0)
	bne	a5,zero,.L387
	.loc 1 1859 17
	lui	a5,%hi(init_ok)
	li	a4,1
	sb	a4,%lo(init_ok)(a5)
.L387:
	.loc 1 1862 12
	lbu	a5,-21(s0)
.L382:
	.loc 1 1863 1
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
.LFE59:
	.size	ef_env_init, .-ef_env_init
	.section	.rodata.__FUNCTION__.11,"a"
	.align	2
	.type	__FUNCTION__.11, @object
	.size	__FUNCTION__.11, 13
__FUNCTION__.11:
	.string	"write_status"
	.section	.rodata.__FUNCTION__.10,"a"
	.align	2
	.type	__FUNCTION__.10, @object
	.size	__FUNCTION__.10, 12
__FUNCTION__.10:
	.string	"read_status"
	.section	.rodata.__FUNCTION__.9,"a"
	.align	2
	.type	__FUNCTION__.9, @object
	.size	__FUNCTION__.9, 9
__FUNCTION__.9:
	.string	"read_env"
	.section	.rodata.__FUNCTION__.8,"a"
	.align	2
	.type	__FUNCTION__.8, @object
	.size	__FUNCTION__.8, 22
__FUNCTION__.8:
	.string	"read_sector_meta_data"
	.section	.bss.value.7,"aw",@nobits
	.align	2
	.type	value.7, @object
	.size	value.7, 3981
value.7:
	.zero	3981
	.section	.rodata.__FUNCTION__.6,"a"
	.align	2
	.type	__FUNCTION__.6, @object
	.size	__FUNCTION__.6, 18
__FUNCTION__.6:
	.string	"ef_read_env_value"
	.section	.rodata.__FUNCTION__.5,"a"
	.align	2
	.type	__FUNCTION__.5, @object
	.size	__FUNCTION__.5, 14
__FUNCTION__.5:
	.string	"format_sector"
	.section	.sbss.last_is_complete_del.4,"aw",@nobits
	.type	last_is_complete_del.4, @object
	.size	last_is_complete_del.4, 1
last_is_complete_del.4:
	.zero	1
	.section	.bss.sector.3,"aw",@nobits
	.align	2
	.type	sector.3, @object
	.size	sector.3, 24
sector.3:
	.zero	24
	.section	.bss.env.2,"aw",@nobits
	.align	2
	.type	env.2, @object
	.size	env.2, 88
env.2:
	.zero	88
	.section	.rodata.__FUNCTION__.1,"a"
	.align	2
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 19
__FUNCTION__.1:
	.string	"ef_env_set_default"
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 12
__FUNCTION__.0:
	.string	"ef_env_init"
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc/ef_def.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc/easyflash.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1eed
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF233
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x19
	.4byte	0x89
	.uleb128 0xc
	.4byte	0x9a
	.uleb128 0x19
	.4byte	0x90
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xf
	.4byte	0x9a
	.uleb128 0xc
	.4byte	0xa1
	.uleb128 0x19
	.4byte	0xa6
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0xf
	.4byte	0xd4
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0xc
	.byte	0x5
	.byte	0x49
	.byte	0x10
	.4byte	0x11a
	.uleb128 0x1d
	.string	"key"
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.4byte	0x90
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x4b
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4c
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4d
	.byte	0x3
	.4byte	0xe5
	.uleb128 0xf
	.4byte	0x11a
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x5a
	.byte	0x5
	.byte	0x50
	.byte	0xe
	.4byte	0x170
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5a
	.byte	0x3
	.4byte	0x12b
	.uleb128 0x1e
	.4byte	.LASF52
	.4byte	0x5a
	.byte	0x5
	.byte	0x63
	.4byte	0x1b6
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x6c
	.byte	0x19
	.4byte	0x17c
	.uleb128 0x1f
	.byte	0x8
	.byte	0x5
	.byte	0x76
	.4byte	0x1e5
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x77
	.byte	0x12
	.4byte	0xd4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x78
	.byte	0x12
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x58
	.byte	0x5
	.byte	0x6e
	.byte	0x8
	.4byte	0x25b
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x5
	.byte	0x6f
	.byte	0x12
	.4byte	0x1b6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x5
	.byte	0x70
	.byte	0xa
	.4byte	0x25b
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x1d
	.string	"len"
	.byte	0x5
	.byte	0x73
	.byte	0xe
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0xd4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x5
	.byte	0x75
	.byte	0xa
	.4byte	0x262
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x5
	.byte	0x79
	.byte	0x7
	.4byte	0x1c2
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.4byte	.LASF48
	.uleb128 0x9
	.4byte	0x9a
	.4byte	0x272
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7b
	.byte	0x1e
	.4byte	0x27e
	.uleb128 0xc
	.4byte	0x1e5
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xb0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x28
	.4byte	.LASF92
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x283
	.uleb128 0xc
	.4byte	0xbc
	.uleb128 0x1e
	.4byte	.LASF53
	.4byte	0x5a
	.byte	0x1
	.byte	0x87
	.4byte	0x2da
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8e
	.byte	0x22
	.4byte	0x2ac
	.uleb128 0x1e
	.4byte	.LASF60
	.4byte	0x5a
	.byte	0x1
	.byte	0x90
	.4byte	0x314
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1
	.byte	0x97
	.byte	0x22
	.4byte	0x2e6
	.uleb128 0x1f
	.byte	0x6
	.byte	0x1
	.byte	0x9a
	.4byte	0x343
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9b
	.byte	0x11
	.4byte	0x343
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	0x343
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0xbc
	.4byte	0x353
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x14
	.byte	0x1
	.byte	0x99
	.byte	0x8
	.4byte	0x395
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x1
	.byte	0x9d
	.byte	0x7
	.4byte	0x320
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9e
	.byte	0xe
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x1
	.byte	0x9f
	.byte	0xe
	.4byte	0xd4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa0
	.byte	0xe
	.4byte	0xd4
	.byte	0x10
	.byte	0
	.uleb128 0x1f
	.byte	0x2
	.byte	0x1
	.byte	0xa6
	.4byte	0x3b8
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa7
	.byte	0x1f
	.4byte	0x2da
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa8
	.byte	0x1f
	.4byte	0x314
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x18
	.byte	0x1
	.byte	0xa4
	.byte	0x8
	.4byte	0x421
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa5
	.byte	0xa
	.4byte	0x25b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa9
	.byte	0x7
	.4byte	0x395
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x1
	.byte	0xab
	.byte	0xe
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x1
	.byte	0xac
	.byte	0xe
	.4byte	0xd4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x1
	.byte	0xad
	.byte	0xc
	.4byte	0x32
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x1
	.byte	0xae
	.byte	0xe
	.4byte	0xd4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x1
	.byte	0xb0
	.byte	0x22
	.4byte	0x42d
	.uleb128 0xc
	.4byte	0x3b8
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1c
	.byte	0x1
	.byte	0xb2
	.byte	0x8
	.4byte	0x48e
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.4byte	0x48e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb4
	.byte	0xe
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.byte	0xe
	.4byte	0xd4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0xd4
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0xbc
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0xd4
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	0xbc
	.4byte	0x49e
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x1
	.byte	0xba
	.byte	0x1e
	.4byte	0x4aa
	.uleb128 0xc
	.4byte	0x432
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x8
	.byte	0x1
	.byte	0xbc
	.byte	0x8
	.4byte	0x4e4
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x1
	.byte	0xbd
	.byte	0xe
	.4byte	0xc8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0xc8
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x8
	.byte	0x1
	.byte	0xc3
	.byte	0x8
	.4byte	0x50c
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc4
	.byte	0xe
	.4byte	0xd4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc5
	.byte	0xe
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0xcc
	.byte	0x11
	.4byte	0xd4
	.uleb128 0x5
	.byte	0x3
	.4byte	env_start_addr
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0xce
	.byte	0x16
	.4byte	0x52e
	.uleb128 0x5
	.byte	0x3
	.4byte	default_env_set
	.uleb128 0xc
	.4byte	0x126
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0xd0
	.byte	0xf
	.4byte	0x32
	.uleb128 0x5
	.byte	0x3
	.4byte	default_env_set_size
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0xd2
	.byte	0xd
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	init_ok
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0xd4
	.byte	0xd
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	gc_request
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0xd6
	.byte	0xd
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	in_recovery_check
	.uleb128 0x9
	.4byte	0x4af
	.4byte	0x587
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x20
	.4byte	.LASF93
	.byte	0xda
	.byte	0x17
	.4byte	0x577
	.uleb128 0x5
	.byte	0x3
	.4byte	env_cache_table
	.uleb128 0x9
	.4byte	0x4e4
	.4byte	0x5a8
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF94
	.byte	0xdc
	.byte	0x1a
	.4byte	0x598
	.uleb128 0x5
	.byte	0x3
	.4byte	sector_cache_table
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x7
	.byte	0x6a
	.4byte	0x5cb
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x5eb
	.uleb128 0x4
	.4byte	0x8b
	.uleb128 0x4
	.4byte	0x5f0
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	0x5f5
	.uleb128 0x19
	.4byte	0x5eb
	.uleb128 0x29
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x6
	.byte	0x2c
	.byte	0x7
	.4byte	0x90
	.4byte	0x616
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x4
	.4byte	0xab
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x7
	.byte	0x64
	.byte	0xb
	.4byte	0x170
	.4byte	0x631
	.uleb128 0x4
	.4byte	0xd4
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x8
	.byte	0x9e
	.4byte	0x643
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x1b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF100
	.2byte	0x54c
	.4byte	0x28f
	.uleb128 0x21
	.4byte	.LASF101
	.2byte	0x55d
	.4byte	0x28f
	.uleb128 0x22
	.4byte	.LASF102
	.byte	0x67
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x66
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x67b
	.uleb128 0x4
	.4byte	0xa6
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x7
	.byte	0x69
	.4byte	0x68d
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x6
	.byte	0x2b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x6ad
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x7
	.byte	0x60
	.byte	0xa
	.4byte	0xd4
	.4byte	0x6cd
	.uleb128 0x4
	.4byte	0xd4
	.uleb128 0x4
	.4byte	0x5eb
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x7
	.byte	0x63
	.byte	0xb
	.4byte	0x170
	.4byte	0x6ed
	.uleb128 0x4
	.4byte	0xd4
	.uleb128 0x4
	.4byte	0x6ed
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	0xd4
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x7
	.byte	0x65
	.byte	0xb
	.4byte	0x170
	.4byte	0x712
	.uleb128 0x4
	.4byte	0xd4
	.uleb128 0x4
	.4byte	0x712
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	0xe0
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x7
	.byte	0x68
	.4byte	0x733
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x753
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF115
	.2byte	0x717
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b7
	.uleb128 0x2
	.4byte	.LASF112
	.2byte	0x717
	.byte	0x25
	.4byte	0x52e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF113
	.2byte	0x717
	.byte	0x39
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x718
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.string	"i"
	.2byte	0x71b
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x7c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x7c7
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.4byte	0x7b7
	.uleb128 0xe
	.4byte	.LASF116
	.2byte	0x6ea
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x831
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x6ec
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.string	"env"
	.2byte	0x6ed
	.byte	0x19
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x6ee
	.byte	0x1d
	.4byte	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1
	.4byte	.LASF118
	.2byte	0x6ef
	.byte	0xc
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.4byte	.LASF129
	.2byte	0x6ff
	.4byte	.L375
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.2byte	0x6ce
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x892
	.uleb128 0x5
	.string	"env"
	.2byte	0x6ce
	.byte	0x36
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x6ce
	.byte	0x51
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x6ce
	.byte	0x6d
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x6db
	.byte	0x11
	.4byte	0x48e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF122
	.2byte	0x6c2
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8da
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x6c2
	.byte	0x39
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x6c2
	.byte	0x57
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x6c2
	.byte	0x73
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF123
	.2byte	0x6b5
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93b
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x6b5
	.byte	0x31
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x6b5
	.byte	0x3f
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x6b5
	.byte	0x5b
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1
	.4byte	.LASF124
	.2byte	0x6b8
	.byte	0x11
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x32
	.uleb128 0x2a
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x677
	.byte	0x6
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x978
	.uleb128 0x8
	.string	"env"
	.2byte	0x679
	.byte	0x19
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	.LASF125
	.2byte	0x67a
	.byte	0xc
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x6
	.4byte	.LASF126
	.2byte	0x644
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa32
	.uleb128 0x5
	.string	"env"
	.2byte	0x644
	.byte	0x29
	.4byte	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x644
	.byte	0x34
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x644
	.byte	0x50
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF127
	.2byte	0x646
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x646
	.byte	0x1f
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.4byte	.LASF125
	.2byte	0x647
	.byte	0xd
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LASF130
	.2byte	0x653
	.4byte	.L346
	.uleb128 0x10
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x8
	.string	"buf"
	.2byte	0x651
	.byte	0x19
	.4byte	0xa32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"len"
	.2byte	0x652
	.byte	0x18
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF131
	.2byte	0x652
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xbc
	.4byte	0xa42
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF132
	.2byte	0x61b
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac0
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x61d
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x61e
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"i"
	.2byte	0x61e
	.byte	0x14
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x61e
	.byte	0x17
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x61f
	.byte	0x1d
	.4byte	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0xad0
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.1
	.uleb128 0x17
	.4byte	.LASF134
	.2byte	0x63d
	.4byte	.L333
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0xad0
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.4byte	0xac0
	.uleb128 0x2b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x610
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF135
	.2byte	0x606
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb25
	.uleb128 0x5
	.string	"key"
	.2byte	0x606
	.byte	0x2b
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF18
	.2byte	0x606
	.byte	0x3c
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF136
	.2byte	0x5f6
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5e
	.uleb128 0x5
	.string	"key"
	.2byte	0x5f6
	.byte	0x22
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF18
	.2byte	0x5f6
	.byte	0x33
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF137
	.2byte	0x5c9
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe5
	.uleb128 0x5
	.string	"key"
	.2byte	0x5c9
	.byte	0x27
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x5c9
	.byte	0x38
	.4byte	0x5eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x5c9
	.byte	0x4a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x5cb
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	0x1ee3
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.2byte	0x5d4
	.byte	0x51
	.uleb128 0x15
	.4byte	0x1ee3
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.2byte	0x5d9
	.byte	0x49
	.uleb128 0x15
	.4byte	0x1ee3
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.2byte	0x5de
	.byte	0x4d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF140
	.2byte	0x59b
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6f
	.uleb128 0x5
	.string	"key"
	.2byte	0x59b
	.byte	0x26
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x59b
	.byte	0x37
	.4byte	0x5eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x59b
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x59d
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.string	"env"
	.2byte	0x59e
	.byte	0x20
	.4byte	0x1e5
	.uleb128 0x5
	.byte	0x3
	.4byte	env.2
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x59f
	.byte	0x24
	.4byte	0x3b8
	.uleb128 0x5
	.byte	0x3
	.4byte	sector.3
	.uleb128 0x1
	.4byte	.LASF141
	.2byte	0x5a0
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF142
	.2byte	0x596
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc99
	.uleb128 0x5
	.string	"key"
	.2byte	0x596
	.byte	0x2b
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF143
	.2byte	0x573
	.byte	0xb
	.4byte	0x170
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x5
	.string	"key"
	.2byte	0x573
	.byte	0x22
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x575
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	0x1ee3
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.2byte	0x57d
	.byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF144
	.2byte	0x51c
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdaa
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x51c
	.byte	0x35
	.4byte	0x421
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"key"
	.2byte	0x51c
	.byte	0x49
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF18
	.2byte	0x51c
	.byte	0x5a
	.4byte	0x5eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.string	"len"
	.2byte	0x51c
	.byte	0x68
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x51e
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x51f
	.byte	0x19
	.4byte	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x520
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0x521
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x1
	.4byte	.LASF148
	.2byte	0x534
	.byte	0x10
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x8
	.string	"ff"
	.2byte	0x53a
	.byte	0x15
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF149
	.2byte	0x502
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2e
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x502
	.byte	0x27
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.2byte	0x502
	.byte	0x3d
	.4byte	0x712
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x502
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x504
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF148
	.2byte	0x505
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x508
	.byte	0xd
	.4byte	0xe2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x509
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0xbc
	.4byte	0xe3e
	.uleb128 0xb
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF173
	.2byte	0x4f1
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe72
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x4f3
	.byte	0x1d
	.4byte	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x4f4
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF153
	.2byte	0x4d2
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee7
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x4d2
	.byte	0x26
	.4byte	0x421
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x4d2
	.byte	0x44
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x4d2
	.byte	0x60
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x8
	.string	"env"
	.2byte	0x4d4
	.byte	0x19
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x4d7
	.byte	0x11
	.4byte	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF154
	.2byte	0x4c6
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3e
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x4c6
	.byte	0x2c
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x4c6
	.byte	0x3a
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x4c6
	.byte	0x56
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x4c8
	.byte	0xd
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x4bf
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf95
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x4bf
	.byte	0x32
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF156
	.2byte	0x4bf
	.byte	0x41
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x4bf
	.byte	0x51
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x4c1
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.2byte	0x4ae
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff7
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x4ae
	.byte	0x2c
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF159
	.2byte	0x4ae
	.byte	0x3b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF160
	.2byte	0x4b0
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x4b1
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LASF129
	.2byte	0x4b3
	.4byte	.L245
	.byte	0
	.uleb128 0x6
	.4byte	.LASF161
	.2byte	0x46f
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10df
	.uleb128 0x5
	.string	"env"
	.2byte	0x46f
	.byte	0x2a
	.4byte	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x471
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x472
	.byte	0xd
	.4byte	0x48e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0x473
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x474
	.byte	0x1d
	.4byte	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.4byte	.LASF134
	.2byte	0x4a8
	.4byte	.L237
	.uleb128 0x2c
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1097
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x47d
	.byte	0x21
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x47e
	.byte	0x12
	.4byte	0x10df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x10
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x8
	.string	"buf"
	.2byte	0x48c
	.byte	0x11
	.4byte	0xa32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x8
	.string	"len"
	.2byte	0x48d
	.byte	0x10
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF131
	.2byte	0x48d
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x48d
	.byte	0x1b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x9a
	.4byte	0x10ef
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	.LASF163
	.2byte	0x435
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1193
	.uleb128 0x5
	.string	"key"
	.2byte	0x435
	.byte	0x26
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2
	.4byte	.LASF164
	.2byte	0x435
	.byte	0x3a
	.4byte	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2
	.4byte	.LASF165
	.2byte	0x435
	.byte	0x48
	.4byte	0x25b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x436
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF166
	.2byte	0x437
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0x438
	.byte	0x11
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	last_is_complete_del.4
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x43b
	.byte	0xd
	.4byte	0x48e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x8
	.string	"env"
	.2byte	0x442
	.byte	0x1d
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF168
	.2byte	0x41d
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f9
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x41d
	.byte	0x2e
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF159
	.2byte	0x41d
	.byte	0x3d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x41f
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0x420
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x420
	.byte	0x1e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	.LASF171
	.2byte	0x40b
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125f
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x40b
	.byte	0x2d
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x40b
	.byte	0x3b
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x40b
	.byte	0x47
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF159
	.2byte	0x40d
	.byte	0xd
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x40e
	.byte	0xf
	.4byte	0x6ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF172
	.2byte	0x3fe
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c5
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x3fe
	.byte	0x35
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x3fe
	.byte	0x43
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x3fe
	.byte	0x4f
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0x400
	.byte	0xd
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x400
	.byte	0x23
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF174
	.2byte	0x3ea
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1344
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x3ea
	.byte	0x30
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0x3ea
	.byte	0x4e
	.4byte	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x3ea
	.byte	0x5c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x3ea
	.byte	0x68
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x3eb
	.byte	0x10
	.4byte	0x135d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF176
	.2byte	0x3eb
	.byte	0x53
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x3ec
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	0x25b
	.4byte	0x135d
	.uleb128 0x4
	.4byte	0x421
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x4
	.4byte	0x89
	.byte	0
	.uleb128 0xc
	.4byte	0x1344
	.uleb128 0x6
	.4byte	.LASF178
	.2byte	0x3cc
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c8
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x3cc
	.byte	0x37
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF179
	.2byte	0x3cc
	.byte	0x46
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x3cc
	.byte	0x59
	.4byte	0x13c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x3ce
	.byte	0xd
	.4byte	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x3cf
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	0x25b
	.uleb128 0x6
	.4byte	.LASF180
	.2byte	0x3b0
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1433
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x3b0
	.byte	0x29
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF181
	.2byte	0x3b0
	.byte	0x38
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x3b2
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x3b3
	.byte	0x1c
	.4byte	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x1443
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.5
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x1443
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.4byte	0x1433
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x3a3
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1490
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x3a3
	.byte	0x29
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x3a3
	.byte	0x3e
	.4byte	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x3a4
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF184
	.2byte	0x385
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f6
	.uleb128 0x5
	.string	"env"
	.2byte	0x385
	.byte	0x29
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x385
	.byte	0x37
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x385
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF185
	.2byte	0x387
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x1506
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.6
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x1506
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	0x14f6
	.uleb128 0xe
	.4byte	.LASF186
	.2byte	0x369
	.byte	0x7
	.4byte	0x90
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1556
	.uleb128 0x5
	.string	"key"
	.2byte	0x369
	.byte	0x1e
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x36b
	.byte	0x11
	.4byte	0x1556
	.uleb128 0x5
	.byte	0x3
	.4byte	value.7
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x36c
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x9a
	.4byte	0x1567
	.uleb128 0x2d
	.4byte	0x3e
	.2byte	0xf8c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF188
	.2byte	0x342
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ed
	.uleb128 0x5
	.string	"key"
	.2byte	0x342
	.byte	0x24
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x342
	.byte	0x2f
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x342
	.byte	0x41
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF189
	.2byte	0x342
	.byte	0x52
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF185
	.2byte	0x344
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	0x1ee3
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.2byte	0x34c
	.byte	0x51
	.uleb128 0x15
	.4byte	0x1ee3
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.2byte	0x351
	.byte	0x49
	.byte	0
	.uleb128 0xe
	.4byte	.LASF190
	.2byte	0x324
	.byte	0x6
	.4byte	0x25b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1635
	.uleb128 0x5
	.string	"key"
	.2byte	0x324
	.byte	0x21
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"env"
	.2byte	0x324
	.byte	0x35
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF191
	.2byte	0x326
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF192
	.2byte	0x306
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16af
	.uleb128 0x5
	.string	"key"
	.2byte	0x306
	.byte	0x23
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x306
	.byte	0x2e
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x306
	.byte	0x40
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2
	.4byte	.LASF19
	.2byte	0x306
	.byte	0x51
	.4byte	0x93b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.string	"env"
	.2byte	0x308
	.byte	0x19
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.4byte	.LASF185
	.2byte	0x309
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF193
	.2byte	0x2f9
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f5
	.uleb128 0x2
	.4byte	.LASF18
	.2byte	0x2f9
	.byte	0x20
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"len"
	.2byte	0x2f9
	.byte	0x2e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"i"
	.2byte	0x2fc
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.2byte	0x2e1
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x174c
	.uleb128 0x5
	.string	"key"
	.2byte	0x2e1
	.byte	0x22
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"env"
	.2byte	0x2e1
	.byte	0x36
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF191
	.2byte	0x2e3
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF156
	.2byte	0x2e6
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.2byte	0x2d8
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1794
	.uleb128 0x5
	.string	"key"
	.2byte	0x2d8
	.byte	0x2b
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"env"
	.2byte	0x2d8
	.byte	0x3f
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF191
	.2byte	0x2da
	.byte	0xa
	.4byte	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF196
	.2byte	0x2c7
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1809
	.uleb128 0x5
	.string	"env"
	.2byte	0x2c7
	.byte	0x28
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x2c7
	.byte	0x33
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x2c7
	.byte	0x3f
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"key"
	.2byte	0x2c9
	.byte	0x11
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF191
	.2byte	0x2ca
	.byte	0xb
	.4byte	0x13c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF156
	.2byte	0x2cb
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF197
	.2byte	0x2a9
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1879
	.uleb128 0x5
	.string	"env"
	.2byte	0x2a9
	.byte	0x29
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x2a9
	.byte	0x34
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x2a9
	.byte	0x40
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF175
	.2byte	0x2aa
	.byte	0x10
	.4byte	0x1892
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x2ac
	.byte	0x1d
	.4byte	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x2ad
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	0x25b
	.4byte	0x1892
	.uleb128 0x4
	.4byte	0x272
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x4
	.4byte	0x89
	.byte	0
	.uleb128 0xc
	.4byte	0x1879
	.uleb128 0x16
	.4byte	.LASF198
	.2byte	0x292
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d0
	.uleb128 0x2
	.4byte	.LASF199
	.2byte	0x292
	.byte	0x39
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF200
	.2byte	0x294
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF201
	.2byte	0x245
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197b
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x245
	.byte	0x31
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x245
	.byte	0x4a
	.4byte	0x421
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2
	.4byte	.LASF202
	.2byte	0x245
	.byte	0x57
	.4byte	0x25b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -153
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x247
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x248
	.byte	0x1c
	.4byte	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x198b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.8
	.uleb128 0x10
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1
	.4byte	.LASF203
	.2byte	0x264
	.byte	0x21
	.4byte	0x1e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x10
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x27e
	.byte	0x1a
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x198b
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.4byte	0x197b
	.uleb128 0x6
	.4byte	.LASF205
	.2byte	0x20b
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a44
	.uleb128 0x5
	.string	"env"
	.2byte	0x20b
	.byte	0x2a
	.4byte	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x20d
	.byte	0x19
	.4byte	0x432
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.string	"buf"
	.2byte	0x20e
	.byte	0xd
	.4byte	0xa32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x20f
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF207
	.2byte	0x20f
	.byte	0x1e
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF208
	.2byte	0x20f
	.byte	0x2c
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x210
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.string	"len"
	.2byte	0x211
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF131
	.2byte	0x211
	.byte	0x11
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x1a54
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.9
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x1a54
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x1a44
	.uleb128 0x6
	.4byte	.LASF209
	.2byte	0x1e7
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa1
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x1e7
	.byte	0x36
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF210
	.2byte	0x1e7
	.byte	0x4d
	.4byte	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x1e9
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF211
	.2byte	0x1c8
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b25
	.uleb128 0x2
	.4byte	.LASF39
	.2byte	0x1c8
	.byte	0x2d
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"end"
	.2byte	0x1c8
	.byte	0x3d
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"buf"
	.2byte	0x1ca
	.byte	0xd
	.4byte	0xa32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF212
	.2byte	0x1cb
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"i"
	.2byte	0x1cb
	.byte	0x21
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x1cc
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x1cf
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x6
	.4byte	.LASF213
	.2byte	0x1aa
	.byte	0x11
	.4byte	0xd4
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba9
	.uleb128 0x2
	.4byte	.LASF39
	.2byte	0x1aa
	.byte	0x2b
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.string	"end"
	.2byte	0x1aa
	.byte	0x3b
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"buf"
	.2byte	0x1ac
	.byte	0xd
	.4byte	0xa32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF214
	.2byte	0x1ac
	.byte	0x16
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.string	"i"
	.2byte	0x1ad
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x1ad
	.byte	0xf
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF215
	.2byte	0x1ad
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF216
	.2byte	0x18d
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2a
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x18d
	.byte	0x2c
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x18d
	.byte	0x39
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x18d
	.byte	0x4d
	.4byte	0x6ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x8
	.string	"i"
	.2byte	0x18f
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x190
	.byte	0xe
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x10
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x1
	.4byte	.LASF217
	.2byte	0x194
	.byte	0x12
	.4byte	0x262
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF218
	.2byte	0x161
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cb6
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x161
	.byte	0x2a
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x161
	.byte	0x37
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x161
	.byte	0x4a
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"i"
	.2byte	0x163
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF219
	.2byte	0x163
	.byte	0xf
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF220
	.2byte	0x163
	.byte	0x21
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x164
	.byte	0xe
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF221
	.2byte	0x164
	.byte	0x4e
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0x16
	.4byte	.LASF222
	.2byte	0x151
	.byte	0xd
	.4byte	0x25b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cfc
	.uleb128 0x2
	.4byte	.LASF177
	.2byte	0x151
	.byte	0x2c
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x151
	.byte	0x40
	.4byte	0x6ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"i"
	.2byte	0x153
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x133
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d4e
	.uleb128 0x2
	.4byte	.LASF177
	.2byte	0x133
	.byte	0x2a
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x133
	.byte	0x3d
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"i"
	.2byte	0x135
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF219
	.2byte	0x135
	.byte	0xf
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF224
	.2byte	0x126
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1da5
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x126
	.byte	0x24
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x126
	.byte	0x32
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF225
	.2byte	0x126
	.byte	0x49
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x7c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF226
	.2byte	0x10c
	.byte	0x12
	.4byte	0x170
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e29
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x10c
	.byte	0x28
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x10c
	.byte	0x36
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF227
	.2byte	0x10c
	.byte	0x4d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF228
	.2byte	0x10c
	.byte	0x60
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x10e
	.byte	0xf
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF229
	.2byte	0x10f
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF133
	.4byte	0x1e39
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.11
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x1e39
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	0x1e29
	.uleb128 0x2f
	.4byte	.LASF230
	.byte	0x1
	.byte	0xf7
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e90
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0xf7
	.byte	0x22
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF227
	.byte	0xf7
	.byte	0x39
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF231
	.byte	0xf9
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.byte	0xdf
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ee3
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0xdf
	.byte	0x22
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF227
	.byte	0xdf
	.byte	0x39
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF228
	.byte	0xdf
	.byte	0x4c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.4byte	.LASF229
	.byte	0xe1
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF236
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x283
	.byte	0x3
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.sleb128 13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.sleb128 5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1cc
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
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
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
	.string	"ef_set_and_save_env"
.LASF64:
	.string	"SECTOR_DIRTY_GC"
.LASF235:
	.string	"ef_save_env"
.LASF148:
	.string	"align_remain"
.LASF122:
	.string	"check_and_recovery_gc_cb"
.LASF89:
	.string	"init_ok"
.LASF80:
	.string	"env_hdr_data_t"
.LASF215:
	.string	"read_size"
.LASF104:
	.string	"strlen"
.LASF106:
	.string	"strncmp"
.LASF171:
	.string	"alloc_env_cb"
.LASF133:
	.string	"__FUNCTION__"
.LASF36:
	.string	"ENV_ERR_HDR"
.LASF90:
	.string	"gc_request"
.LASF224:
	.string	"read_status"
.LASF31:
	.string	"ENV_UNUSED"
.LASF2:
	.string	"unsigned int"
.LASF188:
	.string	"ef_get_env_blob"
.LASF129:
	.string	"__retry"
.LASF164:
	.string	"old_env"
.LASF78:
	.string	"env_hdr_data"
.LASF196:
	.string	"find_env_cb"
.LASF61:
	.string	"SECTOR_DIRTY_UNUSED"
.LASF77:
	.string	"sector_meta_data_t"
.LASF170:
	.string	"using_sector"
.LASF231:
	.string	"status_num_bak"
.LASF49:
	.string	"env_node_obj_t"
.LASF71:
	.string	"combined"
.LASF217:
	.string	"saved_name"
.LASF105:
	.string	"ef_log_info"
.LASF207:
	.string	"crc_data_len"
.LASF228:
	.string	"status_index"
.LASF147:
	.string	"env_addr"
.LASF151:
	.string	"align_data_size"
.LASF33:
	.string	"ENV_WRITE"
.LASF93:
	.string	"env_cache_table"
.LASF145:
	.string	"env_hdr"
.LASF83:
	.string	"active"
.LASF211:
	.string	"find_next_env_addr"
.LASF128:
	.string	"print_value"
.LASF160:
	.string	"already_gc"
.LASF218:
	.string	"update_env_cache"
.LASF168:
	.string	"alloc_env"
.LASF150:
	.string	"align_data"
.LASF17:
	.string	"uint32_t"
.LASF98:
	.string	"ef_print"
.LASF109:
	.string	"ef_port_write"
.LASF40:
	.string	"_ef_env"
.LASF205:
	.string	"read_env"
.LASF127:
	.string	"value_is_str"
.LASF152:
	.string	"empty_sec"
.LASF190:
	.string	"ef_get_env_obj"
.LASF124:
	.string	"failed_count"
.LASF213:
	.string	"continue_ff_addr"
.LASF114:
	.string	"result"
.LASF97:
	.string	"ef_port_erase"
.LASF11:
	.string	"long long unsigned int"
.LASF26:
	.string	"EF_ENV_NAME_EXIST"
.LASF96:
	.string	"strncpy"
.LASF210:
	.string	"pre_env"
.LASF20:
	.string	"ef_env"
.LASF199:
	.string	"pre_sec"
.LASF154:
	.string	"gc_check_cb"
.LASF85:
	.string	"empty_addr"
.LASF232:
	.string	"set_status"
.LASF99:
	.string	"bl_printk"
.LASF76:
	.string	"empty_env"
.LASF173:
	.string	"gc_collect"
.LASF121:
	.string	"check_and_recovery_env_cb"
.LASF115:
	.string	"ef_env_init"
.LASF18:
	.string	"value"
.LASF92:
	.string	"TrapNetCounter"
.LASF186:
	.string	"ef_get_env"
.LASF13:
	.string	"size_t"
.LASF214:
	.string	"last_data"
.LASF81:
	.string	"env_cache_node"
.LASF41:
	.string	"env_node_obj"
.LASF144:
	.string	"create_env_blob"
.LASF204:
	.string	"ff_addr"
.LASF23:
	.string	"EF_READ_ERR"
.LASF206:
	.string	"calc_crc32"
.LASF112:
	.string	"default_env"
.LASF43:
	.string	"crc_is_ok"
.LASF197:
	.string	"env_iterator"
.LASF191:
	.string	"find_ok"
.LASF165:
	.string	"complete_del"
.LASF162:
	.string	"env_bak"
.LASF185:
	.string	"read_len"
.LASF229:
	.string	"byte_index"
.LASF69:
	.string	"sector_hdr_data"
.LASF19:
	.string	"value_len"
.LASF143:
	.string	"ef_del_env"
.LASF12:
	.string	"char"
.LASF161:
	.string	"move_env"
.LASF183:
	.string	"write_env_hdr"
.LASF27:
	.string	"EF_ENV_FULL"
.LASF209:
	.string	"get_next_env_addr"
.LASF68:
	.string	"dirty"
.LASF169:
	.string	"empty_sector"
.LASF126:
	.string	"print_env_cb"
.LASF187:
	.string	"get_size"
.LASF117:
	.string	"sector"
.LASF59:
	.string	"sector_store_status_t"
.LASF70:
	.string	"status_table"
.LASF15:
	.string	"uint8_t"
.LASF42:
	.string	"status"
.LASF84:
	.string	"sector_cache_node"
.LASF172:
	.string	"sector_statistics_cb"
.LASF138:
	.string	"value_buf"
.LASF100:
	.string	"xTaskGetTickCount"
.LASF52:
	.string	"env_status"
.LASF130:
	.string	"__reload"
.LASF3:
	.string	"long long int"
.LASF203:
	.string	"env_meta"
.LASF157:
	.string	"env_len"
.LASF181:
	.string	"combined_value"
.LASF179:
	.string	"new_env_len"
.LASF178:
	.string	"update_sec_status"
.LASF140:
	.string	"set_env"
.LASF94:
	.string	"sector_cache_table"
.LASF125:
	.string	"using_size"
.LASF198:
	.string	"get_next_sector_addr"
.LASF50:
	.string	"BaseType_t"
.LASF91:
	.string	"in_recovery_check"
.LASF35:
	.string	"ENV_DELETED"
.LASF156:
	.string	"key_len"
.LASF167:
	.string	"last_is_complete_del"
.LASF220:
	.string	"min_activity_index"
.LASF184:
	.string	"ef_read_env_value"
.LASF111:
	.string	"memset"
.LASF119:
	.string	"arg1"
.LASF120:
	.string	"arg2"
.LASF22:
	.string	"EF_ERASE_ERR"
.LASF131:
	.string	"size"
.LASF56:
	.string	"SECTOR_STORE_USING"
.LASF57:
	.string	"SECTOR_STORE_FULL"
.LASF142:
	.string	"ef_del_and_save_env"
.LASF113:
	.string	"default_env_size"
.LASF236:
	.string	"xPortIsInsideInterrupt"
.LASF53:
	.string	"sector_store_status"
.LASF37:
	.string	"ENV_STATUS_NUM"
.LASF195:
	.string	"find_env_no_cache"
.LASF21:
	.string	"EF_NO_ERR"
.LASF48:
	.string	"_Bool"
.LASF193:
	.string	"ef_is_str"
.LASF51:
	.string	"TickType_t"
.LASF86:
	.string	"env_start_addr"
.LASF29:
	.string	"EF_ENV_ARG_ERR"
.LASF25:
	.string	"EF_ENV_NAME_ERR"
.LASF176:
	.string	"traversal_env"
.LASF4:
	.string	"long double"
.LASF16:
	.string	"uint16_t"
.LASF222:
	.string	"get_sector_from_cache"
.LASF201:
	.string	"read_sector_meta_data"
.LASF44:
	.string	"name_len"
.LASF158:
	.string	"new_env"
.LASF75:
	.string	"remain"
.LASF62:
	.string	"SECTOR_DIRTY_FALSE"
.LASF200:
	.string	"next_addr"
.LASF225:
	.string	"total_num"
.LASF149:
	.string	"align_write"
.LASF227:
	.string	"status_num"
.LASF28:
	.string	"EF_ENV_INIT_FAILED"
.LASF102:
	.string	"ef_port_env_unlock"
.LASF7:
	.string	"short int"
.LASF153:
	.string	"do_gc"
.LASF166:
	.string	"dirty_status_addr"
.LASF223:
	.string	"update_sector_cache"
.LASF9:
	.string	"long int"
.LASF132:
	.string	"ef_env_set_default"
.LASF174:
	.string	"sector_iterator"
.LASF155:
	.string	"new_env_by_kv"
.LASF180:
	.string	"format_sector"
.LASF216:
	.string	"get_env_from_cache"
.LASF219:
	.string	"empty_index"
.LASF177:
	.string	"sec_addr"
.LASF66:
	.string	"sector_dirty_status_t"
.LASF60:
	.string	"sector_dirty_status"
.LASF88:
	.string	"default_env_set_size"
.LASF134:
	.string	"__exit"
.LASF46:
	.string	"name"
.LASF39:
	.string	"start"
.LASF87:
	.string	"default_env_set"
.LASF230:
	.string	"get_status"
.LASF45:
	.string	"magic"
.LASF63:
	.string	"SECTOR_DIRTY_TRUE"
.LASF24:
	.string	"EF_WRITE_ERR"
.LASF139:
	.string	"buf_len"
.LASF141:
	.string	"env_is_found"
.LASF107:
	.string	"ef_calc_crc32"
.LASF67:
	.string	"store"
.LASF189:
	.string	"saved_value_len"
.LASF10:
	.string	"long unsigned int"
.LASF32:
	.string	"ENV_PRE_WRITE"
.LASF14:
	.string	"int32_t"
.LASF65:
	.string	"SECTOR_DIRTY_STATUS_NUM"
.LASF54:
	.string	"SECTOR_STORE_UNUSED"
.LASF6:
	.string	"unsigned char"
.LASF192:
	.string	"get_env"
.LASF110:
	.string	"ef_log_debug"
.LASF82:
	.string	"name_crc"
.LASF208:
	.string	"env_name_addr"
.LASF137:
	.string	"ef_set_env_blob"
.LASF55:
	.string	"SECTOR_STORE_EMPTY"
.LASF47:
	.string	"addr"
.LASF175:
	.string	"callback"
.LASF34:
	.string	"ENV_PRE_DELETE"
.LASF108:
	.string	"ef_port_read"
.LASF79:
	.string	"crc32"
.LASF221:
	.string	"min_activity"
.LASF74:
	.string	"check_ok"
.LASF234:
	.string	"ef_print_env"
.LASF202:
	.string	"traversal"
.LASF118:
	.string	"check_failed_count"
.LASF5:
	.string	"signed char"
.LASF8:
	.string	"short unsigned int"
.LASF103:
	.string	"ef_port_env_lock"
.LASF73:
	.string	"sector_meta_data"
.LASF95:
	.string	"memcpy"
.LASF58:
	.string	"SECTOR_STORE_STATUS_NUM"
.LASF72:
	.string	"reserved"
.LASF163:
	.string	"del_env"
.LASF159:
	.string	"env_size"
.LASF30:
	.string	"EfErrCode"
.LASF146:
	.string	"is_full"
.LASF116:
	.string	"ef_load_env"
.LASF101:
	.string	"xTaskGetTickCountFromISR"
.LASF194:
	.string	"find_env"
.LASF123:
	.string	"check_sec_hdr_cb"
.LASF182:
	.string	"sec_hdr"
.LASF233:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF38:
	.string	"env_status_t"
.LASF136:
	.string	"ef_set_env"
.LASF212:
	.string	"start_bak"
.LASF226:
	.string	"write_status"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_env.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/easyflash4"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
