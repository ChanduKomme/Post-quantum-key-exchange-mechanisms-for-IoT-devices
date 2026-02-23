	.file	"psa_crypto_slot_management.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_slot_management.c"
	.section	.text.mbedtls_svc_key_id_equal,"ax",@progbits
	.align	1
	.type	mbedtls_svc_key_id_equal, @function
mbedtls_svc_key_id_equal:
.LFB12:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_values.h"
	.loc 1 2464 1
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
	.loc 1 2465 16
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 2466 1
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
	.size	mbedtls_svc_key_id_equal, .-mbedtls_svc_key_id_equal
	.section	.text.mbedtls_svc_key_id_is_null,"ax",@progbits
	.align	1
	.type	mbedtls_svc_key_id_is_null, @function
mbedtls_svc_key_id_is_null:
.LFB13:
	.loc 1 2475 1
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
	.loc 1 2476 16
	lw	a5,-20(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 2477 1
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
	.size	mbedtls_svc_key_id_is_null, .-mbedtls_svc_key_id_is_null
	.section	.text.psa_key_handle_is_null,"ax",@progbits
	.align	1
	.type	psa_key_handle_is_null, @function
psa_key_handle_is_null:
.LFB53:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_compat.h"
	.loc 2 42 1
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
	.loc 2 43 12
	lw	a0,-20(s0)
	call	mbedtls_svc_key_id_is_null
	mv	a5,a0
	.loc 2 44 1
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
.LFE53:
	.size	psa_key_handle_is_null, .-psa_key_handle_is_null
	.section	.text.psa_key_slot_has_readers,"ax",@progbits
	.align	1
	.type	psa_key_slot_has_readers, @function
psa_key_slot_has_readers:
.LFB66:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.loc 3 195 1
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
	.loc 3 196 30
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 3 196 50
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 3 197 1
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
.LFE66:
	.size	psa_key_slot_has_readers, .-psa_key_slot_has_readers
	.section	.text.psa_key_id_is_volatile,"ax",@progbits
	.align	1
	.type	psa_key_id_is_volatile, @function
psa_key_id_is_volatile:
.LFB67:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_slot_management.h"
	.loc 4 49 1
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
	.loc 4 50 52
	lw	a4,-20(s0)
	li	a5,1073741824
	bltu	a4,a5,.L10
	.loc 4 50 52 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	li	a5,1073741824
	addi	a5,a5,31
	bgtu	a4,a5,.L10
	.loc 4 50 52 discriminator 3
	li	a5,1
	.loc 4 50 52
	j	.L12
.L10:
	.loc 4 50 52 discriminator 4
	li	a5,0
.L12:
	.loc 4 52 1 is_stmt 1
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
.LFE67:
	.size	psa_key_id_is_volatile, .-psa_key_id_is_volatile
	.section	.text.psa_key_slot_state_transition,"ax",@progbits
	.align	1
	.type	psa_key_slot_state_transition, @function
psa_key_slot_state_transition:
.LFB68:
	.loc 4 208 1
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
	mv	a4,a2
	sb	a5,-21(s0)
	mv	a5,a4
	sb	a5,-22(s0)
	.loc 4 209 13
	lw	a5,-20(s0)
	lbu	a5,24(a5)
	.loc 4 209 8
	lbu	a4,-21(s0)
	beq	a4,a5,.L14
	.loc 4 210 16
	li	a5,-151
	j	.L15
.L14:
	.loc 4 212 17
	lw	a5,-20(s0)
	lbu	a4,-22(s0)
	sb	a4,24(a5)
	.loc 4 213 12
	li	a5,0
.L15:
	.loc 4 214 1
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
.LFE68:
	.size	psa_key_slot_state_transition, .-psa_key_slot_state_transition
	.section	.text.psa_register_read,"ax",@progbits
	.align	1
	.type	psa_register_read, @function
psa_register_read:
.LFB69:
	.loc 4 231 1
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
	.loc 4 232 14
	lw	a5,-20(s0)
	lbu	a4,24(a5)
	.loc 4 232 8
	li	a5,2
	bne	a4,a5,.L17
	.loc 4 233 28
	lw	a5,-20(s0)
	lw	a4,28(a5)
	.loc 4 232 40 discriminator 1
	li	a5,-1
	bne	a4,a5,.L18
.L17:
	.loc 4 234 16
	li	a5,-151
	j	.L19
.L18:
	.loc 4 236 23
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 4 236 42
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,28(a5)
	.loc 4 238 12
	li	a5,0
.L19:
	.loc 4 239 1
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
.LFE69:
	.size	psa_register_read, .-psa_register_read
	.section	.text.psa_key_lifetime_is_external,"ax",@progbits
	.align	1
	.type	psa_key_lifetime_is_external, @function
psa_key_lifetime_is_external:
.LFB70:
	.loc 4 301 1
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
	.loc 4 302 46
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 4 303 12
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 4 304 1
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
.LFE70:
	.size	psa_key_lifetime_is_external, .-psa_key_lifetime_is_external
	.section	.bss.global_data,"aw",@nobits
	.align	2
	.type	global_data, @object
	.size	global_data, 1284
global_data:
	.zero	1284
	.section	.text.psa_get_key_slots_initialized,"ax",@progbits
	.align	1
	.type	psa_get_key_slots_initialized, @function
psa_get_key_slots_initialized:
.LFB74:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_slot_management.c"
	.loc 5 196 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 5 203 17
	lui	a5,%hi(global_data)
	addi	a5,a5,%lo(global_data)
	lbu	a5,1280(a5)
	sb	a5,-17(s0)
	.loc 5 209 12
	lbu	a5,-17(s0)
	.loc 5 210 1
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
.LFE74:
	.size	psa_get_key_slots_initialized, .-psa_get_key_slots_initialized
	.section	.text.key_slice_length,"ax",@progbits
	.align	1
	.type	key_slice_length, @function
key_slice_length:
.LFB75:
	.loc 5 303 1
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
	.loc 5 305 12
	li	a5,32
	.loc 5 306 1
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
.LFE75:
	.size	key_slice_length, .-key_slice_length
	.section	.text.get_volatile_key_slot,"ax",@progbits
	.align	1
	.type	get_volatile_key_slot, @function
get_volatile_key_slot:
.LFB76:
	.loc 5 309 1
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
	.loc 5 313 42
	lw	a4,-20(s0)
	li	a5,-1073741824
	add	a4,a4,a5
	.loc 5 313 12
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(global_data)
	addi	a4,a4,%lo(global_data)
	add	a5,a5,a4
	.loc 5 314 1
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
.LFE76:
	.size	get_volatile_key_slot, .-get_volatile_key_slot
	.section	.text.get_persistent_key_slot,"ax",@progbits
	.align	1
	.type	get_persistent_key_slot, @function
get_persistent_key_slot:
.LFB77:
	.loc 5 317 1
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
	.loc 5 318 12
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(global_data)
	addi	a4,a4,%lo(global_data)
	add	a5,a5,a4
	.loc 5 319 1
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
.LFE77:
	.size	get_persistent_key_slot, .-get_persistent_key_slot
	.section	.text.get_key_slot,"ax",@progbits
	.align	1
	.type	get_key_slot, @function
get_key_slot:
.LFB78:
	.loc 5 322 1
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
	.loc 5 324 12
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	lui	a4,%hi(global_data)
	addi	a4,a4,%lo(global_data)
	add	a5,a5,a4
	.loc 5 325 1
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
.LFE78:
	.size	get_key_slot, .-get_key_slot
	.section	.text.psa_is_valid_key_id,"ax",@progbits
	.align	1
	.globl	psa_is_valid_key_id
	.type	psa_is_valid_key_id, @function
psa_is_valid_key_id:
.LFB79:
	.loc 5 332 1
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
	.loc 5 333 18
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 5 335 8
	lw	a5,-20(s0)
	beq	a5,zero,.L33
	.loc 5 335 49 discriminator 1
	lw	a4,-20(s0)
	li	a5,1073741824
	bgeu	a4,a5,.L33
	.loc 5 337 16
	li	a5,1
	j	.L34
.L33:
	.loc 5 340 8
	lw	a5,-40(s0)
	beq	a5,zero,.L35
	.loc 5 340 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,1073741824
	bltu	a4,a5,.L35
	.loc 5 342 17
	lw	a5,-20(s0)
	.loc 5 341 49
	blt	a5,zero,.L35
	.loc 5 343 16
	li	a5,1
	j	.L34
.L35:
	.loc 5 346 12
	li	a5,0
.L34:
	.loc 5 347 1
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
.LFE79:
	.size	psa_is_valid_key_id, .-psa_is_valid_key_id
	.section	.text.psa_get_and_lock_key_slot_in_memory,"ax",@progbits
	.align	1
	.type	psa_get_and_lock_key_slot_in_memory, @function
psa_get_and_lock_key_slot_in_memory:
.LFB80:
	.loc 5 385 1
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
	.loc 5 386 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 5 387 18
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	.loc 5 389 21
	sw	zero,-28(s0)
	.loc 5 391 9
	lw	a0,-32(s0)
	call	psa_key_id_is_volatile
	mv	a5,a0
	.loc 5 391 8 discriminator 1
	beq	a5,zero,.L37
	.loc 5 392 16
	lw	a0,-32(s0)
	call	get_volatile_key_slot
	sw	a0,-28(s0)
	.loc 5 396 12
	lw	a5,-28(s0)
	beq	a5,zero,.L38
	.loc 5 397 17
	lw	a5,-28(s0)
	lbu	a4,24(a5)
	.loc 5 396 25 discriminator 1
	li	a5,2
	bne	a4,a5,.L38
	.loc 5 398 13
	lw	a5,-28(s0)
	lw	a5,20(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_svc_key_id_equal
	mv	a5,a0
	.loc 5 397 42
	beq	a5,zero,.L38
	.loc 5 399 20
	sw	zero,-20(s0)
	j	.L40
.L38:
	.loc 5 401 20
	li	a5,-140
	sw	a5,-20(s0)
	j	.L40
.L37:
	.loc 5 404 14
	li	a1,1
	lw	a0,-36(s0)
	call	psa_is_valid_key_id
	mv	a5,a0
	.loc 5 404 12 discriminator 1
	bne	a5,zero,.L41
	.loc 5 405 20
	li	a5,-136
	j	.L42
.L41:
	.loc 5 408 23
	sw	zero,-24(s0)
	.loc 5 408 9
	j	.L43
.L46:
	.loc 5 409 20
	lw	a0,-24(s0)
	call	get_persistent_key_slot
	sw	a0,-28(s0)
	.loc 5 411 22
	lw	a5,-28(s0)
	lbu	a4,24(a5)
	.loc 5 411 16
	li	a5,2
	bne	a4,a5,.L44
	.loc 5 412 18
	lw	a5,-28(s0)
	lw	a5,20(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_svc_key_id_equal
	mv	a5,a0
	.loc 5 411 48 discriminator 1
	bne	a5,zero,.L49
.L44:
	.loc 5 408 51 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L43:
	.loc 5 408 37 discriminator 1
	lw	a4,-24(s0)
	li	a5,31
	bleu	a4,a5,.L46
	j	.L45
.L49:
	.loc 5 413 17
	nop
.L45:
	.loc 5 417 36
	lw	a4,-24(s0)
	li	a5,31
	bgtu	a4,a5,.L47
	.loc 5 416 16
	sw	zero,-20(s0)
	j	.L40
.L47:
	li	a5,-140
	sw	a5,-20(s0)
.L40:
	.loc 5 420 8
	lw	a5,-20(s0)
	bne	a5,zero,.L48
	.loc 5 421 18
	lw	a0,-28(s0)
	call	psa_register_read
	sw	a0,-20(s0)
	.loc 5 422 12
	lw	a5,-20(s0)
	bne	a5,zero,.L48
	.loc 5 423 21
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L48:
	.loc 5 427 12
	lw	a5,-20(s0)
.L42:
	.loc 5 428 1
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
.LFE80:
	.size	psa_get_and_lock_key_slot_in_memory, .-psa_get_and_lock_key_slot_in_memory
	.section	.text.psa_initialize_key_slots,"ax",@progbits
	.align	1
	.globl	psa_initialize_key_slots
	.type	psa_initialize_key_slots, @function
psa_initialize_key_slots:
.LFB81:
	.loc 5 431 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 5 447 39
	lui	a5,%hi(global_data)
	addi	a5,a5,%lo(global_data)
	li	a4,1
	sb	a4,1280(a5)
	.loc 5 448 12
	li	a5,0
	.loc 5 449 1
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
.LFE81:
	.size	psa_initialize_key_slots, .-psa_initialize_key_slots
	.section	.text.psa_wipe_all_key_slots,"ax",@progbits
	.align	1
	.globl	psa_wipe_all_key_slots
	.type	psa_wipe_all_key_slots, @function
psa_wipe_all_key_slots:
.LFB82:
	.loc 5 452 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB2:
	.loc 5 453 17
	sw	zero,-20(s0)
	.loc 5 453 5
	j	.L53
.L56:
.LBB3:
	.loc 5 459 21
	sw	zero,-24(s0)
	.loc 5 459 9
	j	.L54
.L55:
.LBB4:
	.loc 5 460 36
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	get_key_slot
	sw	a0,-28(s0)
	.loc 5 479 51
	lw	a5,-28(s0)
	li	a4,1
	sw	a4,28(a5)
	.loc 5 480 25
	lw	a5,-28(s0)
	li	a4,3
	sb	a4,24(a5)
	.loc 5 481 20
	lw	a0,-28(s0)
	call	psa_wipe_key_slot
.LBE4:
	.loc 5 459 83 discriminator 4
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L54:
	.loc 5 459 46 discriminator 1
	lw	a0,-20(s0)
	call	key_slice_length
	mv	a4,a0
	.loc 5 459 44 discriminator 3
	lw	a5,-24(s0)
	bltu	a5,a4,.L55
.LBE3:
	.loc 5 453 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L53:
	.loc 5 453 42 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L56
.LBE2:
	.loc 5 496 39
	lui	a5,%hi(global_data)
	addi	a5,a5,%lo(global_data)
	sb	zero,1280(a5)
	.loc 5 497 1
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
.LFE82:
	.size	psa_wipe_all_key_slots, .-psa_wipe_all_key_slots
	.section	.text.psa_reserve_free_key_slot,"ax",@progbits
	.align	1
	.globl	psa_reserve_free_key_slot
	.type	psa_reserve_free_key_slot, @function
psa_reserve_free_key_slot:
.LFB83:
	.loc 5 597 1
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
	.loc 5 598 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 5 602 10
	call	psa_get_key_slots_initialized
	mv	a5,a0
	.loc 5 602 8 discriminator 1
	bne	a5,zero,.L58
	.loc 5 603 16
	li	a5,-137
	sw	a5,-20(s0)
	.loc 5 604 9
	j	.L59
.L58:
	.loc 5 617 48
	sw	zero,-32(s0)
	.loc 5 617 19
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	.loc 5 618 19
	sw	zero,-24(s0)
	.loc 5 618 5
	j	.L60
.L64:
.LBB5:
	.loc 5 619 32
	lw	a1,-24(s0)
	li	a0,0
	call	get_key_slot
	sw	a0,-36(s0)
	.loc 5 620 17
	lw	a5,-36(s0)
	lbu	a5,24(a5)
	.loc 5 620 12
	bne	a5,zero,.L61
	.loc 5 621 27
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 5 622 13
	j	.L62
.L61:
	.loc 5 625 12
	lw	a5,-32(s0)
	bne	a5,zero,.L63
	.loc 5 626 18
	lw	a5,-36(s0)
	lbu	a4,24(a5)
	.loc 5 625 49 discriminator 1
	li	a5,2
	bne	a4,a5,.L63
	.loc 5 627 15
	lw	a0,-36(s0)
	call	psa_key_slot_has_readers
	mv	a5,a0
	.loc 5 626 44
	bne	a5,zero,.L63
	.loc 5 628 53
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 5 628 17
	andi	a5,a5,0xff
	.loc 5 627 47
	beq	a5,zero,.L63
	.loc 5 629 40
	lw	a5,-36(s0)
	sw	a5,-32(s0)
.L63:
.LBE5:
	.loc 5 618 47 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L60:
	.loc 5 618 33 discriminator 1
	lw	a4,-24(s0)
	li	a5,31
	bleu	a4,a5,.L64
.L62:
	.loc 5 640 8
	lw	a5,-28(s0)
	bne	a5,zero,.L65
	.loc 5 640 32 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L65
	.loc 5 642 23
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	.loc 5 643 9
	lw	a0,-28(s0)
	call	psa_register_read
	.loc 5 644 18
	lw	a0,-28(s0)
	call	psa_wipe_key_slot
	sw	a0,-20(s0)
	.loc 5 645 12
	lw	a5,-20(s0)
	bne	a5,zero,.L70
.L65:
	.loc 5 650 8
	lw	a5,-28(s0)
	beq	a5,zero,.L66
	.loc 5 651 18
	li	a2,1
	li	a1,0
	lw	a0,-28(s0)
	call	psa_key_slot_state_transition
	sw	a0,-20(s0)
	.loc 5 653 12
	lw	a5,-20(s0)
	bne	a5,zero,.L71
	.loc 5 662 12
	lw	a5,-52(s0)
	beq	a5,zero,.L68
	.loc 5 665 38
	lw	a4,-28(s0)
	lui	a5,%hi(global_data)
	addi	a5,a5,%lo(global_data)
	sub	a5,a4,a5
	srai	a4,a5,3
	li	a5,-858992640
	addi	a5,a5,-819
	mul	a5,a4,a5
	.loc 5 665 22
	sw	a5,-24(s0)
	.loc 5 666 60
	lw	a4,-24(s0)
	li	a5,1073741824
	add	a4,a4,a5
	.loc 5 666 30
	lw	a5,-52(s0)
	sw	a4,0(a5)
.L68:
	.loc 5 669 17
	lw	a5,-56(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 5 671 16
	li	a5,0
	j	.L69
.L66:
	.loc 5 673 12
	li	a5,-141
	sw	a5,-20(s0)
	j	.L59
.L70:
	.loc 5 646 13
	nop
	j	.L59
.L71:
	.loc 5 654 13
	nop
.L59:
	.loc 5 676 13
	lw	a5,-56(s0)
	sw	zero,0(a5)
	.loc 5 678 12
	lw	a5,-20(s0)
.L69:
	.loc 5 679 1
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
.LFE83:
	.size	psa_reserve_free_key_slot, .-psa_reserve_free_key_slot
	.section	.text.psa_get_and_lock_key_slot,"ax",@progbits
	.align	1
	.globl	psa_get_and_lock_key_slot
	.type	psa_get_and_lock_key_slot, @function
psa_get_and_lock_key_slot:
.LFB84:
	.loc 5 800 1
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
	.loc 5 801 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 5 803 13
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 5 804 10
	call	psa_get_key_slots_initialized
	mv	a5,a0
	.loc 5 804 8 discriminator 1
	bne	a5,zero,.L73
	.loc 5 805 16
	li	a5,-137
	j	.L74
.L73:
	.loc 5 823 14
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	psa_get_and_lock_key_slot_in_memory
	sw	a0,-20(s0)
	.loc 5 824 8
	lw	a4,-20(s0)
	li	a5,-140
	beq	a4,a5,.L75
	.loc 5 829 16
	lw	a5,-20(s0)
	j	.L74
.L75:
	.loc 5 878 12
	li	a5,-136
	sw	a5,-20(s0)
	.loc 5 881 8
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 5 882 17
	lw	a5,-40(s0)
	sw	zero,0(a5)
.L76:
	.loc 5 888 12
	lw	a5,-20(s0)
.L74:
	.loc 5 889 1
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
.LFE84:
	.size	psa_get_and_lock_key_slot, .-psa_get_and_lock_key_slot
	.section	.text.psa_unregister_read,"ax",@progbits
	.align	1
	.globl	psa_unregister_read
	.type	psa_unregister_read, @function
psa_unregister_read:
.LFB85:
	.loc 5 892 1
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
	.loc 5 893 8
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	.loc 5 894 16
	li	a5,0
	j	.L79
.L78:
	.loc 5 896 14
	lw	a5,-20(s0)
	lbu	a4,24(a5)
	.loc 5 896 8
	li	a5,2
	beq	a4,a5,.L80
	.loc 5 897 14
	lw	a5,-20(s0)
	lbu	a4,24(a5)
	.loc 5 896 40 discriminator 1
	li	a5,3
	beq	a4,a5,.L80
	.loc 5 898 16
	li	a5,-151
	j	.L79
.L80:
	.loc 5 903 14
	lw	a5,-20(s0)
	lbu	a4,24(a5)
	.loc 5 903 8
	li	a5,3
	bne	a4,a5,.L81
	.loc 5 904 28
	lw	a5,-20(s0)
	lw	a4,28(a5)
	.loc 5 903 52 discriminator 1
	li	a5,1
	bne	a4,a5,.L81
	.loc 5 905 16
	lw	a0,-20(s0)
	call	psa_wipe_key_slot
	mv	a5,a0
	j	.L79
.L81:
	.loc 5 908 9
	lw	a0,-20(s0)
	call	psa_key_slot_has_readers
	mv	a5,a0
	.loc 5 908 8 discriminator 1
	beq	a5,zero,.L82
	.loc 5 909 27
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 5 909 46
	addi	a4,a5,-1
	lw	a5,-20(s0)
	sw	a4,28(a5)
	.loc 5 910 16
	li	a5,0
	j	.L79
.L82:
	.loc 5 922 12
	li	a5,-151
.L79:
	.loc 5 923 1
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
.LFE85:
	.size	psa_unregister_read, .-psa_unregister_read
	.section	.text.psa_unregister_read_under_mutex,"ax",@progbits
	.align	1
	.globl	psa_unregister_read_under_mutex
	.type	psa_unregister_read_under_mutex, @function
psa_unregister_read_under_mutex:
.LFB86:
	.loc 5 926 1
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
	.loc 5 927 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 5 935 14
	lw	a0,-36(s0)
	call	psa_unregister_read
	sw	a0,-20(s0)
	.loc 5 940 12
	lw	a5,-20(s0)
	.loc 5 941 1
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
.LFE86:
	.size	psa_unregister_read_under_mutex, .-psa_unregister_read_under_mutex
	.section	.text.psa_validate_key_location,"ax",@progbits
	.align	1
	.globl	psa_validate_key_location
	.type	psa_validate_key_location, @function
psa_validate_key_location:
.LFB87:
	.loc 5 945 1
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
	.loc 5 946 9
	lw	a0,-20(s0)
	call	psa_key_lifetime_is_external
	mv	a5,a0
	.loc 5 946 8 discriminator 1
	beq	a5,zero,.L86
	.loc 5 961 16
	li	a5,0
	j	.L87
.L86:
	.loc 5 964 16
	li	a5,0
.L87:
	.loc 5 966 1
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
.LFE87:
	.size	psa_validate_key_location, .-psa_validate_key_location
	.section	.text.psa_validate_key_persistence,"ax",@progbits
	.align	1
	.globl	psa_validate_key_persistence
	.type	psa_validate_key_persistence, @function
psa_validate_key_persistence:
.LFB88:
	.loc 5 969 1
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
	.loc 5 970 11
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 5 970 8
	bne	a5,zero,.L89
	.loc 5 972 16
	li	a5,0
	j	.L90
.L89:
	.loc 5 982 16
	li	a5,-134
.L90:
	.loc 5 985 1
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
.LFE88:
	.size	psa_validate_key_persistence, .-psa_validate_key_persistence
	.section	.text.psa_open_key,"ax",@progbits
	.align	1
	.globl	psa_open_key
	.type	psa_open_key, @function
psa_open_key:
.LFB89:
	.loc 5 988 1
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
	.loc 5 1010 13
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 5 1011 12
	li	a5,-134
	.loc 5 1013 1
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
.LFE89:
	.size	psa_open_key, .-psa_open_key
	.section	.text.psa_close_key,"ax",@progbits
	.align	1
	.globl	psa_close_key
	.type	psa_close_key, @function
psa_close_key:
.LFB90:
	.loc 5 1016 1
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
	.loc 5 1017 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 5 1020 9
	lw	a0,-36(s0)
	call	psa_key_handle_is_null
	mv	a5,a0
	.loc 5 1020 8 discriminator 1
	beq	a5,zero,.L94
	.loc 5 1021 16
	li	a5,0
	j	.L100
.L94:
	.loc 5 1031 14
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	psa_get_and_lock_key_slot_in_memory
	sw	a0,-20(s0)
	.loc 5 1032 8
	lw	a5,-20(s0)
	beq	a5,zero,.L96
	.loc 5 1033 12
	lw	a4,-20(s0)
	li	a5,-140
	bne	a4,a5,.L97
	.loc 5 1034 20
	li	a5,-136
	sw	a5,-20(s0)
.L97:
	.loc 5 1040 16
	lw	a5,-20(s0)
	j	.L100
.L96:
	.loc 5 1043 13
	lw	a5,-24(s0)
	.loc 5 1043 27
	lw	a4,28(a5)
	.loc 5 1043 8
	li	a5,1
	bne	a4,a5,.L98
	.loc 5 1044 18
	lw	a5,-24(s0)
	mv	a0,a5
	call	psa_wipe_key_slot
	sw	a0,-20(s0)
	j	.L99
.L98:
	.loc 5 1046 18
	lw	a5,-24(s0)
	mv	a0,a5
	call	psa_unregister_read
	sw	a0,-20(s0)
.L99:
	.loc 5 1053 12
	lw	a5,-20(s0)
.L100:
	.loc 5 1054 1
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
.LFE90:
	.size	psa_close_key, .-psa_close_key
	.section	.text.psa_purge_key,"ax",@progbits
	.align	1
	.globl	psa_purge_key
	.type	psa_purge_key, @function
psa_purge_key:
.LFB91:
	.loc 5 1057 1
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
	.loc 5 1058 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 5 1068 14
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	psa_get_and_lock_key_slot_in_memory
	sw	a0,-20(s0)
	.loc 5 1069 8
	lw	a5,-20(s0)
	beq	a5,zero,.L102
	.loc 5 1074 16
	lw	a5,-20(s0)
	j	.L106
.L102:
	.loc 5 1077 43
	lw	a5,-24(s0)
	.loc 5 1077 49
	lw	a5,4(a5)
	.loc 5 1077 13
	andi	a5,a5,0xff
	.loc 5 1077 8
	beq	a5,zero,.L104
	.loc 5 1078 14
	lw	a5,-24(s0)
	.loc 5 1078 28
	lw	a4,28(a5)
	.loc 5 1077 111 discriminator 1
	li	a5,1
	bne	a4,a5,.L104
	.loc 5 1079 18
	lw	a5,-24(s0)
	mv	a0,a5
	call	psa_wipe_key_slot
	sw	a0,-20(s0)
	.loc 5 1079 16
	j	.L105
.L104:
	.loc 5 1081 18
	lw	a5,-24(s0)
	mv	a0,a5
	call	psa_unregister_read
	sw	a0,-20(s0)
.L105:
	.loc 5 1088 12
	lw	a5,-20(s0)
.L106:
	.loc 5 1089 1
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
.LFE91:
	.size	psa_purge_key, .-psa_purge_key
	.section	.text.mbedtls_psa_get_stats,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_get_stats
	.type	mbedtls_psa_get_stats, @function
mbedtls_psa_get_stats:
.LFB92:
	.loc 5 1092 1
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
	.loc 5 1093 5
	li	a2,36
	li	a1,0
	lw	a0,-52(s0)
	call	memset
.LBB6:
	.loc 5 1095 17
	sw	zero,-20(s0)
	.loc 5 1095 5
	j	.L108
.L116:
.LBB7:
	.loc 5 1101 21
	sw	zero,-24(s0)
	.loc 5 1101 9
	j	.L109
.L115:
.LBB8:
	.loc 5 1102 42
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	get_key_slot
	sw	a0,-28(s0)
	.loc 5 1103 21
	lw	a5,-28(s0)
	lbu	a5,24(a5)
	.loc 5 1103 16
	bne	a5,zero,.L110
	.loc 5 1104 24
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 5 1104 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,20(a5)
	.loc 5 1105 17
	j	.L111
.L110:
	.loc 5 1107 17
	lw	a0,-28(s0)
	call	psa_key_slot_has_readers
	mv	a5,a0
	.loc 5 1107 16 discriminator 1
	beq	a5,zero,.L112
	.loc 5 1108 24
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 5 1108 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,24(a5)
.L112:
	.loc 5 1110 55
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 5 1110 19
	andi	a5,a5,0xff
	.loc 5 1110 16
	bne	a5,zero,.L113
	.loc 5 1111 24
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 1111 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,0(a5)
	j	.L114
.L113:
.LBB9:
	.loc 5 1113 30
	lw	a5,-28(s0)
	lw	a5,20(a5)
	sw	a5,-32(s0)
	.loc 5 1114 24
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 5 1114 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,4(a5)
	.loc 5 1115 31
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 5 1115 20
	lw	a4,-32(s0)
	bleu	a4,a5,.L114
	.loc 5 1116 53
	lw	a5,-52(s0)
	lw	a4,-32(s0)
	sw	a4,28(a5)
.L114:
.LBE9:
	.loc 5 1119 51
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 5 1119 62
	srli	a5,a5,8
	.loc 5 1119 16
	beq	a5,zero,.L111
.LBB10:
	.loc 5 1121 30
	lw	a5,-28(s0)
	lw	a5,20(a5)
	sw	a5,-36(s0)
	.loc 5 1122 24
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 5 1122 17
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,8(a5)
	.loc 5 1123 31
	lw	a5,-52(s0)
	lw	a5,32(a5)
	.loc 5 1123 20
	lw	a4,-36(s0)
	bleu	a4,a5,.L111
	.loc 5 1124 53
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,32(a5)
.L111:
.LBE10:
.LBE8:
	.loc 5 1101 83 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L109:
	.loc 5 1101 46 discriminator 1
	lw	a0,-20(s0)
	call	key_slice_length
	mv	a4,a0
	.loc 5 1101 44 discriminator 3
	lw	a5,-24(s0)
	bltu	a5,a4,.L115
.LBE7:
	.loc 5 1095 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L108:
	.loc 5 1095 42 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L116
.LBE6:
	.loc 5 1129 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE92:
	.size	mbedtls_psa_get_stats, .-mbedtls_psa_get_stats
	.text
.Letext0:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_extra.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_se.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xade
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF113
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
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x7
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x7
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x8
	.byte	0x3b
	.byte	0x11
	.4byte	0x84
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x8
	.byte	0x4e
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x86
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0xb7
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0xdb
	.byte	0x11
	.4byte	0x90
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x104
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x8
	.2byte	0x113
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x8
	.2byte	0x124
	.byte	0x16
	.4byte	0x106
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x8
	.2byte	0x143
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x13a
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x18
	.2byte	0x127
	.4byte	0x187
	.uleb128 0xc
	.4byte	.LASF28
	.2byte	0x12c
	.byte	0x14
	.4byte	0xc9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.2byte	0x12d
	.byte	0x14
	.4byte	0x1cd
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF30
	.2byte	0x12e
	.byte	0x18
	.4byte	0xe1
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.2byte	0x12f
	.byte	0x16
	.4byte	0x1c0
	.byte	0x8
	.uleb128 0x14
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x113
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x90
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0xc
	.2byte	0x10c
	.4byte	0x1c0
	.uleb128 0xc
	.4byte	.LASF34
	.2byte	0x10d
	.byte	0x15
	.4byte	0x120
	.byte	0
	.uleb128 0x14
	.string	"alg"
	.2byte	0x10e
	.byte	0x15
	.4byte	0xd5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.2byte	0x10f
	.byte	0x15
	.4byte	0xd5
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x9
	.2byte	0x111
	.byte	0x21
	.4byte	0x18c
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x9
	.2byte	0x11c
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2
	.byte	0x1f
	.byte	0x1e
	.4byte	0x113
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x24
	.byte	0xa
	.byte	0xe7
	.byte	0x10
	.4byte	0x269
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xa
	.byte	0xe9
	.byte	0xc
	.4byte	0x71
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0xec
	.byte	0xc
	.4byte	0x71
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xa
	.byte	0xef
	.byte	0xc
	.4byte	0x71
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xa
	.byte	0xf2
	.byte	0xc
	.4byte	0x71
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0xa
	.byte	0xf4
	.byte	0xc
	.4byte	0x71
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xa
	.byte	0xf6
	.byte	0xc
	.4byte	0x71
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xa
	.byte	0xf8
	.byte	0xc
	.4byte	0x71
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.4byte	0x106
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xa
	.byte	0xfc
	.byte	0x12
	.4byte	0x106
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xa
	.byte	0xfd
	.byte	0x3
	.4byte	0x1e6
	.uleb128 0x1f
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x3
	.byte	0x1b
	.byte	0xe
	.4byte	0x29c
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x3
	.byte	0x20
	.byte	0x3
	.4byte	0x275
	.uleb128 0x11
	.byte	0x4
	.byte	0x50
	.4byte	0x2bd
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x3
	.byte	0x60
	.byte	0x15
	.4byte	0x84
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x63
	.4byte	0x2d2
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x3
	.byte	0x7f
	.byte	0x14
	.4byte	0x71
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.byte	0x3
	.byte	0x4f
	.byte	0x5
	.4byte	0x2f0
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x61
	.4byte	0x2a8
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x80
	.4byte	0x2bd
	.byte	0
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.byte	0x3
	.byte	0x85
	.byte	0xc
	.4byte	0x318
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x3
	.byte	0x89
	.byte	0x12
	.4byte	0x187
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x3
	.byte	0x8b
	.byte	0x10
	.4byte	0x71
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x28
	.byte	0x25
	.4byte	0x350
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x3
	.byte	0x28
	.byte	0x1a
	.4byte	0x12d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x3
	.byte	0x3d
	.byte	0x1a
	.4byte	0x29c
	.byte	0x18
	.uleb128 0x17
	.string	"var"
	.byte	0x81
	.4byte	0x2d2
	.byte	0x1c
	.uleb128 0x17
	.string	"key"
	.byte	0x8c
	.4byte	0x2f0
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x3
	.byte	0x8d
	.byte	0x3
	.4byte	0x318
	.uleb128 0x21
	.4byte	0x350
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xb
	.byte	0x45
	.byte	0x29
	.4byte	0x36d
	.uleb128 0x22
	.4byte	.LASF114
	.uleb128 0x23
	.2byte	0x504
	.byte	0x5
	.byte	0xb7
	.byte	0x9
	.4byte	0x398
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x5
	.byte	0xbc
	.byte	0x14
	.4byte	0x398
	.byte	0
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x5
	.byte	0xbe
	.byte	0xd
	.4byte	0x90
	.2byte	0x500
	.byte	0
	.uleb128 0x25
	.4byte	0x350
	.4byte	0x3a8
	.uleb128 0x26
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x5
	.byte	0xbf
	.byte	0x3
	.4byte	0x372
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0xc1
	.byte	0x1a
	.4byte	0x3a8
	.uleb128 0x5
	.byte	0x3
	.4byte	global_data
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.4byte	0xb4
	.4byte	0x3e5
	.uleb128 0x10
	.4byte	0xb4
	.uleb128 0x10
	.4byte	0x63
	.uleb128 0x10
	.4byte	0x71
	.byte	0
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x3
	.byte	0xe7
	.byte	0xe
	.4byte	0xbd
	.4byte	0x3fb
	.uleb128 0x10
	.4byte	0x3fb
	.byte	0
	.uleb128 0x6
	.4byte	0x350
	.uleb128 0x1a
	.4byte	.LASF92
	.2byte	0x443
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a3
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x443
	.byte	0x31
	.4byte	0x4a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.4byte	.LASF72
	.2byte	0x447
	.byte	0x11
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x44d
	.byte	0x15
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x44e
	.byte	0x23
	.4byte	0x4a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x488
	.uleb128 0x1b
	.string	"id"
	.2byte	0x459
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1b
	.string	"id"
	.2byte	0x461
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x269
	.uleb128 0x6
	.4byte	0x35c
	.uleb128 0xa
	.4byte	.LASF77
	.2byte	0x420
	.4byte	0xbd
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f5
	.uleb128 0x8
	.string	"key"
	.byte	0x5
	.2byte	0x420
	.byte	0x31
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x422
	.byte	0x12
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x423
	.byte	0x15
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.2byte	0x3f7
	.4byte	0xbd
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x3f7
	.byte	0x2d
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x3f9
	.byte	0x12
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x3fa
	.byte	0x15
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF80
	.2byte	0x3db
	.byte	0xe
	.4byte	0xbd
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x578
	.uleb128 0x8
	.string	"key"
	.byte	0x5
	.2byte	0x3db
	.byte	0x30
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x3db
	.byte	0x47
	.4byte	0x578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x1da
	.uleb128 0x12
	.4byte	.LASF81
	.2byte	0x3c8
	.byte	0xe
	.4byte	0xbd
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a8
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x3c8
	.byte	0x3e
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.2byte	0x3af
	.4byte	0xbd
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e2
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x3af
	.byte	0x3b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x3b0
	.byte	0x43
	.4byte	0x5e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x5e7
	.uleb128 0x6
	.4byte	0x361
	.uleb128 0xa
	.4byte	.LASF84
	.2byte	0x39d
	.4byte	0xbd
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x625
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x39d
	.byte	0x3e
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x39f
	.byte	0x12
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.2byte	0x37b
	.4byte	0xbd
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64f
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x37b
	.byte	0x32
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x31e
	.4byte	0xbd
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x698
	.uleb128 0x8
	.string	"key"
	.byte	0x5
	.2byte	0x31e
	.byte	0x3d
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x31f
	.byte	0x39
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x321
	.byte	0x12
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x3fb
	.uleb128 0xa
	.4byte	.LASF88
	.2byte	0x253
	.4byte	0xbd
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x739
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x253
	.byte	0x36
	.4byte	0x739
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x254
	.byte	0x39
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x256
	.byte	0x12
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x257
	.byte	0xc
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x258
	.byte	0x15
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x258
	.byte	0x25
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x2a3
	.byte	0x1
	.4byte	.L59
	.uleb128 0x7
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x26b
	.byte	0x19
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x106
	.uleb128 0x1a
	.4byte	.LASF93
	.2byte	0x1c3
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79f
	.uleb128 0x7
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF72
	.2byte	0x1c5
	.byte	0x11
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x1cb
	.byte	0x15
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x1cc
	.byte	0x1d
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x1ae
	.byte	0xe
	.4byte	0xbd
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x17f
	.byte	0x15
	.4byte	0xbd
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x8
	.string	"key"
	.byte	0x5
	.2byte	0x180
	.byte	0x1a
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x180
	.byte	0x30
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF76
	.2byte	0x182
	.byte	0x12
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x183
	.byte	0x12
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x184
	.byte	0xc
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x185
	.byte	0x15
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF95
	.2byte	0x14b
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x878
	.uleb128 0x8
	.string	"key"
	.byte	0x5
	.2byte	0x14b
	.byte	0x2e
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x14b
	.byte	0x37
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x14d
	.byte	0x12
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x141
	.byte	0x1f
	.4byte	0x3fb
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b4
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x141
	.byte	0x33
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x141
	.byte	0x45
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x13c
	.byte	0x1f
	.4byte	0x3fb
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x13c
	.byte	0x3e
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x134
	.byte	0x1f
	.4byte	0x3fb
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90c
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x134
	.byte	0x42
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x12e
	.byte	0x16
	.4byte	0x71
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x938
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x12e
	.byte	0x2e
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x5
	.byte	0xc3
	.byte	0x10
	.4byte	0x90
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x961
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0xc5
	.byte	0xd
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x12c
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98d
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x12c
	.byte	0x43
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x4
	.byte	0xe6
	.byte	0x1c
	.4byte	0xbd
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b7
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x4
	.byte	0xe6
	.byte	0x3e
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x4
	.byte	0xcd
	.byte	0x1c
	.4byte	0xbd
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ff
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x4
	.byte	0xce
	.byte	0x15
	.4byte	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x4
	.byte	0xce
	.byte	0x30
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x4
	.byte	0xcf
	.byte	0x1a
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x4
	.byte	0x30
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa29
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x4
	.byte	0x30
	.byte	0x37
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x3
	.byte	0xc2
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa53
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x3
	.byte	0xc2
	.byte	0x42
	.4byte	0x4a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF111
	.byte	0x2
	.byte	0x29
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7d
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x2
	.byte	0x29
	.byte	0x3b
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x9aa
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0x8
	.string	"key"
	.byte	0x1
	.2byte	0x9aa
	.byte	0x43
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x99e
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"id1"
	.byte	0x1
	.2byte	0x99e
	.byte	0x41
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"id2"
	.byte	0x1
	.2byte	0x99f
	.byte	0x41
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.sleb128 5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.sleb128 5
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.sleb128 9
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0x2c
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
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
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
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0x7
	.4byte	.LFB86
	.uleb128 .LFE86-.LFB86
	.byte	0x7
	.4byte	.LFB87
	.uleb128 .LFE87-.LFB87
	.byte	0x7
	.4byte	.LFB88
	.uleb128 .LFE88-.LFB88
	.byte	0x7
	.4byte	.LFB89
	.uleb128 .LFE89-.LFB89
	.byte	0x7
	.4byte	.LFB90
	.uleb128 .LFE90-.LFB90
	.byte	0x7
	.4byte	.LFB91
	.uleb128 .LFE91-.LFB91
	.byte	0x7
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"psa_validate_key_location"
.LASF67:
	.string	"key_slots_initialized"
.LASF110:
	.string	"psa_key_slot_has_readers"
.LASF34:
	.string	"usage"
.LASF66:
	.string	"key_slots"
.LASF46:
	.string	"locked_slots"
.LASF63:
	.string	"state"
.LASF80:
	.string	"psa_open_key"
.LASF96:
	.string	"vendor_ok"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF106:
	.string	"psa_key_slot_state_transition"
.LASF98:
	.string	"get_key_slot"
.LASF19:
	.string	"psa_key_type_t"
.LASF75:
	.string	"stats"
.LASF47:
	.string	"max_open_internal_key_id"
.LASF60:
	.string	"data"
.LASF93:
	.string	"psa_wipe_all_key_slots"
.LASF77:
	.string	"psa_purge_key"
.LASF31:
	.string	"policy"
.LASF54:
	.string	"psa_key_slot_state_t"
.LASF107:
	.string	"expected_state"
.LASF112:
	.string	"mbedtls_svc_key_id_is_null"
.LASF87:
	.string	"p_slot"
.LASF83:
	.string	"p_drv"
.LASF59:
	.string	"key_data"
.LASF57:
	.string	"free"
.LASF102:
	.string	"psa_get_key_slots_initialized"
.LASF43:
	.string	"half_filled_slots"
.LASF95:
	.string	"psa_is_valid_key_id"
.LASF52:
	.string	"PSA_SLOT_FULL"
.LASF109:
	.string	"psa_key_id_is_volatile"
.LASF117:
	.string	"mbedtls_svc_key_id_equal"
.LASF8:
	.string	"long long int"
.LASF69:
	.string	"memset"
.LASF29:
	.string	"bits"
.LASF17:
	.string	"char"
.LASF53:
	.string	"PSA_SLOT_PENDING_DELETION"
.LASF55:
	.string	"next_free_relative_to_next"
.LASF6:
	.string	"long int"
.LASF39:
	.string	"mbedtls_psa_stats_s"
.LASF49:
	.string	"mbedtls_psa_stats_t"
.LASF105:
	.string	"psa_register_read"
.LASF61:
	.string	"bytes"
.LASF30:
	.string	"lifetime"
.LASF89:
	.string	"volatile_key_id"
.LASF35:
	.string	"alg2"
.LASF38:
	.string	"psa_key_handle_t"
.LASF73:
	.string	"slot_idx"
.LASF11:
	.string	"long double"
.LASF71:
	.string	"global_data"
.LASF3:
	.string	"unsigned char"
.LASF104:
	.string	"psa_key_lifetime_is_external"
.LASF84:
	.string	"psa_unregister_read_under_mutex"
.LASF116:
	.string	"psa_initialize_key_slots"
.LASF42:
	.string	"external_slots"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF100:
	.string	"get_volatile_key_slot"
.LASF28:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF115:
	.string	"error"
.LASF15:
	.string	"uint16_t"
.LASF37:
	.string	"psa_key_bits_t"
.LASF74:
	.string	"slot"
.LASF25:
	.string	"mbedtls_svc_key_id_t"
.LASF101:
	.string	"key_slice_length"
.LASF91:
	.string	"unused_persistent_key_slot"
.LASF5:
	.string	"short unsigned int"
.LASF76:
	.string	"status"
.LASF114:
	.string	"psa_se_drv_table_entry_s"
.LASF65:
	.string	"psa_se_drv_table_entry_t"
.LASF99:
	.string	"get_persistent_key_slot"
.LASF32:
	.string	"psa_key_attributes_s"
.LASF13:
	.string	"int32_t"
.LASF90:
	.string	"selected_slot"
.LASF58:
	.string	"occupied"
.LASF113:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF18:
	.string	"psa_status_t"
.LASF48:
	.string	"max_open_external_key_id"
.LASF41:
	.string	"persistent_slots"
.LASF72:
	.string	"slice_idx"
.LASF108:
	.string	"new_state"
.LASF51:
	.string	"PSA_SLOT_FILLING"
.LASF111:
	.string	"psa_key_handle_is_null"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long unsigned int"
.LASF68:
	.string	"psa_global_data_t"
.LASF70:
	.string	"psa_wipe_key_slot"
.LASF88:
	.string	"psa_reserve_free_key_slot"
.LASF79:
	.string	"handle"
.LASF94:
	.string	"key_id"
.LASF62:
	.string	"attr"
.LASF56:
	.string	"registered_readers"
.LASF86:
	.string	"psa_get_and_lock_key_slot"
.LASF20:
	.string	"psa_algorithm_t"
.LASF14:
	.string	"uint8_t"
.LASF27:
	.string	"psa_key_attributes_t"
.LASF40:
	.string	"volatile_slots"
.LASF44:
	.string	"cache_slots"
.LASF64:
	.string	"psa_key_slot_t"
.LASF97:
	.string	"psa_get_and_lock_key_slot_in_memory"
.LASF22:
	.string	"psa_key_persistence_t"
.LASF24:
	.string	"psa_key_id_t"
.LASF21:
	.string	"psa_key_lifetime_t"
.LASF81:
	.string	"psa_validate_key_persistence"
.LASF23:
	.string	"psa_key_location_t"
.LASF33:
	.string	"psa_key_policy_s"
.LASF36:
	.string	"psa_key_policy_t"
.LASF85:
	.string	"psa_unregister_read"
.LASF78:
	.string	"psa_close_key"
.LASF92:
	.string	"mbedtls_psa_get_stats"
.LASF45:
	.string	"empty_slots"
.LASF103:
	.string	"initialized"
.LASF50:
	.string	"PSA_SLOT_EMPTY"
.LASF26:
	.string	"psa_key_usage_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_slot_management.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
