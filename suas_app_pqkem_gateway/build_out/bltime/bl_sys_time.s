	.file	"bl_sys_time.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bltime" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time.c"
	.section	.sbss.epoch_time,"aw",@nobits
	.align	3
	.type	epoch_time, @object
	.size	epoch_time, 8
epoch_time:
	.zero	8
	.section	.sbss.time_synced,"aw",@nobits
	.align	3
	.type	time_synced, @object
	.size	time_synced, 8
time_synced:
	.zero	8
	.section	.sbss.init_tick_rtos,"aw",@nobits
	.align	2
	.type	init_tick_rtos, @object
	.size	init_tick_rtos, 4
init_tick_rtos:
	.zero	4
	.section	.sbss.init_tick_rtc,"aw",@nobits
	.align	2
	.type	init_tick_rtc, @object
	.size	init_tick_rtc, 4
init_tick_rtc:
	.zero	4
	.section	.sbss.sync_init,"aw",@nobits
	.align	2
	.type	sync_init, @object
	.size	sync_init, 4
sync_init:
	.zero	4
	.section	.text.bl_sys_time_update,"ax",@progbits
	.align	1
	.globl	bl_sys_time_update
	.type	bl_sys_time_update, @function
bl_sys_time_update:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time.c"
	.loc 1 43 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	.loc 1 44 19
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 44 19 is_stmt 0 discriminator 1
	mv	s2,a5
	li	s3,0
	.loc 1 44 17 is_stmt 1 discriminator 1
	lui	a5,%hi(time_synced)
	sw	s2,%lo(time_synced)(a5)
	sw	s3,%lo(time_synced+4)(a5)
	.loc 1 45 16
	lui	a3,%hi(epoch_time)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sw	a4,%lo(epoch_time)(a3)
	sw	a5,%lo(epoch_time+4)(a3)
	.loc 1 46 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s2,20(sp)
	.cfi_restore 18
	lw	s3,16(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_sys_time_update, .-bl_sys_time_update
	.section	.text.bl_sys_time_get,"ax",@progbits
	.align	1
	.globl	bl_sys_time_get
	.type	bl_sys_time_get, @function
bl_sys_time_get:
.LFB10:
	.loc 1 49 1
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
	.loc 1 52 8
	lw	a5,-36(s0)
	bne	a5,zero,.L3
	.loc 1 53 16
	li	a5,-1
	j	.L4
.L3:
	.loc 1 56 11
	lui	a5,%hi(epoch_time)
	lw	a2,%lo(epoch_time)(a5)
	lw	a3,%lo(epoch_time+4)(a5)
	.loc 1 56 8
	mv	a5,a2
	or	a5,a5,a3
	bne	a5,zero,.L5
	.loc 1 57 16
	li	a5,-1
	j	.L4
.L5:
	.loc 1 61 25
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 61 16 discriminator 1
	mv	a3,a5
	.loc 1 61 49 discriminator 1
	lui	a5,%hi(time_synced)
	lw	a4,%lo(time_synced)(a5)
	lw	a5,%lo(time_synced+4)(a5)
	mv	a5,a4
	.loc 1 61 13 discriminator 1
	sub	a5,a3,a5
	sw	a5,-20(s0)
	.loc 1 62 25
	lw	a5,-20(s0)
	mv	s2,a5
	srai	a5,a5,31
	mv	s3,a5
	lui	a5,%hi(epoch_time)
	lw	a2,%lo(epoch_time)(a5)
	lw	a3,%lo(epoch_time+4)(a5)
	add	a4,s2,a2
	mv	a1,a4
	sltu	a1,a1,s2
	add	a5,s3,a3
	add	a3,a1,a5
	mv	a5,a3
	.loc 1 62 12
	lw	a3,-36(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 64 12
	li	a5,0
.L4:
	.loc 1 65 1
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
.LFE10:
	.size	bl_sys_time_get, .-bl_sys_time_get
	.section	.text.bl_sys_time_sync_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_init
	.type	bl_sys_time_sync_init, @function
bl_sys_time_sync_init:
.LFB11:
	.loc 1 68 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 69 5
	call	vTaskEnterCritical
	.loc 1 70 22
	call	xTaskGetTickCount
	mv	a4,a0
	.loc 1 70 20 discriminator 1
	lui	a5,%hi(init_tick_rtos)
	sw	a4,%lo(init_tick_rtos)(a5)
	.loc 1 71 21
	call	bl_rtc_get_timestamp_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 71 19 discriminator 1
	lui	a5,%hi(init_tick_rtc)
	sw	a4,%lo(init_tick_rtc)(a5)
	.loc 1 72 5
	call	vTaskExitCritical
	.loc 1 74 15
	lui	a5,%hi(sync_init)
	li	a4,1
	sw	a4,%lo(sync_init)(a5)
	.loc 1 75 1
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
.LFE11:
	.size	bl_sys_time_sync_init, .-bl_sys_time_sync_init
	.section	.text.bl_sys_time_sync_state,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_state
	.type	bl_sys_time_sync_state, @function
bl_sys_time_sync_state:
.LFB12:
	.loc 1 78 1
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
	.loc 1 84 8
	lw	a5,-36(s0)
	bne	a5,zero,.L8
	.loc 1 85 16
	li	a5,-1
	j	.L9
.L8:
	.loc 1 88 8
	lui	a5,%hi(sync_init)
	lw	a5,%lo(sync_init)(a5)
	.loc 1 88 7
	bne	a5,zero,.L10
	.loc 1 89 16
	li	a5,-1
	j	.L9
.L10:
	.loc 1 92 5
	call	vTaskEnterCritical
	.loc 1 93 20
	call	xTaskGetTickCount
	sw	a0,-20(s0)
	.loc 1 94 19
	call	bl_rtc_get_timestamp_ms
	mv	a4,a0
	mv	a5,a1
	.loc 1 94 17 discriminator 1
	sw	a4,-24(s0)
	.loc 1 95 5
	call	vTaskExitCritical
	.loc 1 97 34
	lui	a5,%hi(init_tick_rtos)
	lw	a5,%lo(init_tick_rtos)(a5)
	.loc 1 97 19
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 98 32
	lui	a5,%hi(init_tick_rtc)
	lw	a5,%lo(init_tick_rtc)(a5)
	.loc 1 98 18
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 100 7
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L11
	.loc 1 101 38
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sub	a4,a4,a5
	.loc 1 101 23
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 102 16
	li	a5,1
	j	.L9
.L11:
	.loc 1 104 16
	li	a5,0
.L9:
	.loc 1 106 1
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
.LFE12:
	.size	bl_sys_time_sync_state, .-bl_sys_time_sync_state
	.section	.text.bl_sys_time_sync,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync
	.type	bl_sys_time_sync, @function
bl_sys_time_sync:
.LFB13:
	.loc 1 109 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 110 14
	sw	zero,-20(s0)
	.loc 1 112 8
	addi	a5,s0,-20
	mv	a0,a5
	call	bl_sys_time_sync_state
	mv	a5,a0
	.loc 1 112 7 discriminator 1
	ble	a5,zero,.L13
	.loc 1 113 9
	lw	a5,-20(s0)
	mv	a0,a5
	call	vTaskStepTickSafe
.L13:
	.loc 1 116 12
	lw	a5,-20(s0)
	.loc 1 117 1
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
	.size	bl_sys_time_sync, .-bl_sys_time_sync
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x239
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x61
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x95
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x76
	.uleb128 0xa
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x23
	.byte	0x11
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	epoch_time
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x24
	.byte	0x11
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	time_synced
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x26
	.byte	0x11
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	init_tick_rtos
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x27
	.byte	0x11
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	init_tick_rtc
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x28
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	sync_init
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x9bf
	.byte	0x6
	.4byte	0x11c
	.uleb128 0xc
	.4byte	0xa8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x67
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.byte	0x27
	.byte	0xa
	.4byte	0x89
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x66
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x54c
	.byte	0xc
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6c
	.byte	0xa
	.4byte	0x76
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6e
	.byte	0xe
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4d
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c9
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4d
	.byte	0x26
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x4f
	.byte	0xe
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x50
	.byte	0xe
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x51
	.byte	0xe
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x52
	.byte	0xe
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x30
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x216
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x30
	.byte	0x1f
	.4byte	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x32
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x2a
	.byte	0x22
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.4byte	0x3c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"TickType_t"
.LASF18:
	.string	"time_synced"
.LASF23:
	.string	"vTaskEnterCritical"
.LASF22:
	.string	"vTaskExitCritical"
.LASF9:
	.string	"short unsigned int"
.LASF28:
	.string	"bl_sys_time_sync_state"
.LASF31:
	.string	"deltaTickRtos"
.LASF19:
	.string	"init_tick_rtos"
.LASF29:
	.string	"currTickRtos"
.LASF20:
	.string	"init_tick_rtc"
.LASF14:
	.string	"long long unsigned int"
.LASF8:
	.string	"unsigned char"
.LASF21:
	.string	"sync_init"
.LASF12:
	.string	"long unsigned int"
.LASF27:
	.string	"bl_sys_time_sync"
.LASF39:
	.string	"bl_sys_time_update"
.LASF26:
	.string	"xTicksToJump"
.LASF35:
	.string	"ms_diff"
.LASF2:
	.string	"unsigned int"
.LASF24:
	.string	"bl_rtc_get_timestamp_ms"
.LASF16:
	.string	"char"
.LASF37:
	.string	"vTaskStepTickSafe"
.LASF10:
	.string	"int32_t"
.LASF33:
	.string	"bl_sys_time_get"
.LASF3:
	.string	"long long int"
.LASF6:
	.string	"short int"
.LASF32:
	.string	"deltaTickRtc"
.LASF36:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"epoch"
.LASF13:
	.string	"uint64_t"
.LASF11:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF38:
	.string	"bl_sys_time_sync_init"
.LASF17:
	.string	"epoch_time"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF25:
	.string	"xTaskGetTickCount"
.LASF30:
	.string	"currTickRtc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bltime"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
