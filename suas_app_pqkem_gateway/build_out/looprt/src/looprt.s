	.file	"looprt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/looprt" "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt.c"
	.section	.bss.looprt,"aw",@nobits
	.align	2
	.type	looprt, @object
	.size	looprt, 1184
looprt:
	.zero	1184
	.section	.rodata
	.align	2
.LC0:
	.string	"--->>> Error terminated looprt\r\n"
	.section	.text.proc_entry_looprt,"ax",@progbits
	.align	1
	.type	proc_entry_looprt, @function
proc_entry_looprt:
.LFB22:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt.c"
	.loc 1 39 1
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
	.loc 1 40 5
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_run
.L2:
	.loc 1 44 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 45 9 discriminator 2
	li	a0,1000
	call	vTaskDelay
	.loc 1 44 9
	nop
	j	.L2
	.cfi_endproc
.LFE22:
	.size	proc_entry_looprt, .-proc_entry_looprt
	.section	.text.looprt_evt_notify_async,"ax",@progbits
	.align	1
	.globl	looprt_evt_notify_async
	.type	looprt_evt_notify_async, @function
looprt_evt_notify_async:
.LFB23:
	.loc 1 50 1
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
	.loc 1 51 5
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_evt_set_async
	.loc 1 52 1
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
.LFE23:
	.size	looprt_evt_notify_async, .-looprt_evt_notify_async
	.section	.text.looprt_evt_notify_async_fromISR,"ax",@progbits
	.align	1
	.globl	looprt_evt_notify_async_fromISR
	.type	looprt_evt_notify_async_fromISR, @function
looprt_evt_notify_async_fromISR:
.LFB24:
	.loc 1 55 1
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
	.loc 1 56 5
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_evt_set_async_fromISR
	.loc 1 57 1
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
.LFE24:
	.size	looprt_evt_notify_async_fromISR, .-looprt_evt_notify_async_fromISR
	.section	.text.looprt_evt_status_dump,"ax",@progbits
	.align	1
	.globl	looprt_evt_status_dump
	.type	looprt_evt_status_dump, @function
looprt_evt_status_dump:
.LFB25:
	.loc 1 60 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 61 5
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_status_dump
	.loc 1 62 1
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
.LFE25:
	.size	looprt_evt_status_dump, .-looprt_evt_status_dump
	.section	.text.looprt_evt_schedule,"ax",@progbits
	.align	1
	.globl	looprt_evt_schedule
	.type	looprt_evt_schedule, @function
looprt_evt_schedule:
.LFB26:
	.loc 1 65 1
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
	.loc 1 68 13
	li	a0,36
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 69 8
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 1 72 5
	li	a1,1
	lw	a0,-20(s0)
	call	bloop_timer_init
	.loc 1 73 5
	lw	a1,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	li	a3,0
	li	a2,0
	lw	a0,-20(s0)
	call	bloop_timer_configure
	.loc 1 74 5
	lw	a1,-20(s0)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_timer_register
	j	.L6
.L9:
	.loc 1 70 9
	nop
.L6:
	.loc 1 75 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	looprt_evt_schedule, .-looprt_evt_schedule
	.section	.rodata
	.align	2
.LC1:
	.string	"bloop_rt"
	.section	.text.looprt_start,"ax",@progbits
	.align	1
	.globl	looprt_start
	.type	looprt_start, @function
looprt_start:
.LFB27:
	.loc 1 78 1
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
	.loc 1 79 5
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_init
	.loc 1 82 5
	li	a2,31
	lui	a5,%hi(bloop_handler_sys)
	addi	a1,a5,%lo(bloop_handler_sys)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_handler_register
	.loc 1 84 5
	call	looprt_evt_status_dump
	.loc 1 86 5
	lw	a2,-24(s0)
	lw	a6,-28(s0)
	lw	a5,-20(s0)
	li	a4,26
	li	a3,0
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	lui	a0,%hi(proc_entry_looprt)
	addi	a0,a0,%lo(proc_entry_looprt)
	call	xTaskCreateStatic
	.loc 1 88 5
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_wait_startup
	.loc 1 90 12
	li	a5,0
	.loc 1 91 1
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
.LFE27:
	.size	looprt_start, .-looprt_start
	.section	.text.looprt_start_auto,"ax",@progbits
	.align	1
	.globl	looprt_start_auto
	.type	looprt_start_auto, @function
looprt_start_auto:
.LFB28:
	.loc 1 94 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 95 5
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_init
	.loc 1 98 5
	li	a2,31
	lui	a5,%hi(bloop_handler_sys)
	addi	a1,a5,%lo(bloop_handler_sys)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_handler_register
	.loc 1 100 5
	call	looprt_evt_status_dump
	.loc 1 102 5
	li	a5,0
	li	a4,26
	li	a3,0
	li	a2,4096
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	lui	a0,%hi(proc_entry_looprt)
	addi	a0,a0,%lo(proc_entry_looprt)
	call	xTaskCreate
	.loc 1 104 5
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_wait_startup
	.loc 1 106 12
	li	a5,0
	.loc 1 107 1
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
.LFE28:
	.size	looprt_start_auto, .-looprt_start_auto
	.section	.text.looprt_handler_register,"ax",@progbits
	.align	1
	.globl	looprt_handler_register
	.type	looprt_handler_register, @function
looprt_handler_register:
.LFB29:
	.loc 1 110 1
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
	.loc 1 111 22
	lui	a5,%hi(looprt)
	addi	a5,a5,%lo(looprt)
	lw	a5,0(a5)
	.loc 1 111 8
	bne	a5,zero,.L15
	.loc 1 112 16
	li	a5,-1
	j	.L16
.L15:
	.loc 1 114 12
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_handler_register
	mv	a5,a0
.L16:
	.loc 1 115 1
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
.LFE29:
	.size	looprt_handler_register, .-looprt_handler_register
	.section	.text.looprt_timer_register,"ax",@progbits
	.align	1
	.globl	looprt_timer_register
	.type	looprt_timer_register, @function
looprt_timer_register:
.LFB30:
	.loc 1 118 1
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
	.loc 1 119 5
	lw	a1,-20(s0)
	lui	a5,%hi(looprt)
	addi	a0,a5,%lo(looprt)
	call	bloop_timer_register
	.loc 1 121 12
	li	a5,0
	.loc 1 122 1
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
.LFE30:
	.size	looprt_timer_register, .-looprt_timer_register
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x986
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
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
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x8
	.4byte	0x84
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	0x8b
	.uleb128 0x3
	.4byte	0x92
	.uleb128 0x8
	.4byte	0x97
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x8
	.4byte	0xca
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x23
	.byte	0x10
	.4byte	0xe7
	.uleb128 0x3
	.4byte	0xec
	.uleb128 0x10
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0xca
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0xa1
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0xca
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xca
	.uleb128 0x8
	.4byte	0x11b
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x14
	.byte	0x6
	.2byte	0x425
	.byte	0x8
	.4byte	0x157
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x42a
	.byte	0xd
	.4byte	0x11b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x42b
	.byte	0x8
	.4byte	0x157
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x84
	.4byte	0x167
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x430
	.byte	0x22
	.4byte	0x12c
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x64
	.byte	0x6
	.2byte	0x458
	.byte	0x10
	.4byte	0x22b
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x45a
	.byte	0x8
	.4byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x45e
	.byte	0x13
	.4byte	0x22b
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x45f
	.byte	0xe
	.4byte	0x10f
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x460
	.byte	0x8
	.4byte	0x84
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x461
	.byte	0xa
	.4byte	0x23b
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x466
	.byte	0xf
	.4byte	0x10f
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x469
	.byte	0xf
	.4byte	0x24b
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x46c
	.byte	0xf
	.4byte	0x24b
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x472
	.byte	0x9
	.4byte	0x25b
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x47b
	.byte	0xc
	.4byte	0xca
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x47c
	.byte	0xb
	.4byte	0xad
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x47f
	.byte	0xb
	.4byte	0xad
	.byte	0x61
	.byte	0
	.uleb128 0x9
	.4byte	0x167
	.4byte	0x23b
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0xad
	.4byte	0x24b
	.uleb128 0xa
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x10f
	.4byte	0x25b
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x84
	.4byte	0x26b
	.uleb128 0xa
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x488
	.byte	0x3
	.4byte	0x174
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x7
	.byte	0x46
	.byte	0x25
	.4byte	0x284
	.uleb128 0x3
	.4byte	0x289
	.uleb128 0x1c
	.4byte	.LASF119
	.uleb128 0x3
	.4byte	0xf7
	.uleb128 0x8
	.4byte	0x28e
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x4
	.byte	0x8
	.byte	0x26
	.4byte	0x2b2
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.4byte	0x2b2
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x298
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x8
	.byte	0x2b
	.4byte	0x2de
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2e
	.byte	0x1c
	.4byte	0x2b2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.4byte	0x2b2
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x8
	.byte	0x8
	.2byte	0x118
	.byte	0x10
	.4byte	0x309
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x119
	.byte	0x1b
	.4byte	0x309
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x11a
	.byte	0x1b
	.4byte	0x309
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x2de
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.2byte	0x11b
	.byte	0x3
	.4byte	0x2de
	.uleb128 0x1d
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.byte	0x9
	.4byte	0x359
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2f
	.byte	0x15
	.4byte	0xad
	.byte	0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x9
	.byte	0x30
	.byte	0x15
	.4byte	0xad
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x9
	.byte	0x31
	.byte	0x15
	.4byte	0xad
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x9
	.byte	0x32
	.byte	0x15
	.4byte	0xad
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.byte	0x5
	.4byte	0x379
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x2d
	.byte	0xf
	.4byte	0x84
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x33
	.byte	0xb
	.4byte	0x31b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x18
	.byte	0x9
	.byte	0x2a
	.4byte	0x3d1
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x9
	.byte	0x2b
	.byte	0x1b
	.4byte	0x298
	.byte	0
	.uleb128 0xf
	.string	"u"
	.byte	0x34
	.byte	0x7
	.4byte	0x359
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x9
	.byte	0x36
	.byte	0xb
	.4byte	0x84
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x9
	.byte	0x37
	.byte	0x12
	.4byte	0x6a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x9
	.byte	0x38
	.byte	0x12
	.4byte	0x6a
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x10
	.byte	0x9
	.byte	0x3b
	.4byte	0x412
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x9
	.byte	0x3c
	.byte	0x12
	.4byte	0x6a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x9
	.byte	0x3d
	.byte	0x12
	.4byte	0x6a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3e
	.byte	0x12
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3f
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xc
	.byte	0x9
	.byte	0x42
	.4byte	0x445
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x9
	.byte	0x43
	.byte	0x11
	.4byte	0x97
	.byte	0
	.uleb128 0xf
	.string	"evt"
	.byte	0x44
	.byte	0xb
	.4byte	0x515
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x9
	.byte	0x45
	.byte	0xb
	.4byte	0x538
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x412
	.uleb128 0x16
	.4byte	0x63
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x50b
	.uleb128 0x1
	.4byte	0x510
	.uleb128 0x1
	.4byte	0x510
	.byte	0
	.uleb128 0x3
	.4byte	0x46d
	.uleb128 0x1f
	.4byte	.LASF69
	.2byte	0x4a0
	.byte	0x9
	.byte	0x4b
	.byte	0x8
	.4byte	0x50b
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x9
	.byte	0x4c
	.byte	0x12
	.4byte	0x278
	.byte	0
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x9
	.byte	0x4d
	.byte	0xe
	.4byte	0xca
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x9
	.byte	0x4e
	.byte	0xe
	.4byte	0xca
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x9
	.byte	0x4f
	.byte	0xe
	.4byte	0xca
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x9
	.byte	0x50
	.byte	0xe
	.4byte	0x53d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x9
	.byte	0x51
	.byte	0xe
	.4byte	0x53d
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x52
	.byte	0x17
	.4byte	0x54d
	.2byte	0x110
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x53
	.byte	0x27
	.4byte	0x55d
	.2byte	0x210
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x54
	.byte	0x24
	.4byte	0x56d
	.2byte	0x410
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x56
	.byte	0x13
	.4byte	0x30e
	.2byte	0x490
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x57
	.byte	0x13
	.4byte	0x30e
	.2byte	0x498
	.byte	0
	.uleb128 0x3
	.4byte	0x445
	.uleb128 0x3
	.4byte	0xca
	.uleb128 0x3
	.4byte	0x44a
	.uleb128 0x16
	.4byte	0x63
	.4byte	0x533
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x50b
	.uleb128 0x1
	.4byte	0x533
	.byte	0
	.uleb128 0x3
	.4byte	0x379
	.uleb128 0x3
	.4byte	0x51a
	.uleb128 0x9
	.4byte	0xca
	.4byte	0x54d
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x2b7
	.4byte	0x55d
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x3d1
	.4byte	0x56d
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x50b
	.4byte	0x57d
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x24
	.byte	0x9
	.byte	0x5a
	.4byte	0x5ef
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x9
	.byte	0x5b
	.byte	0x13
	.4byte	0x30e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x9
	.byte	0x62
	.byte	0xd
	.4byte	0xad
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x9
	.byte	0x64
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x9
	.byte	0x65
	.byte	0x12
	.4byte	0x6a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x9
	.byte	0x66
	.byte	0x9
	.4byte	0x63
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0xca
	.byte	0x18
	.uleb128 0xf
	.string	"cb"
	.byte	0x68
	.byte	0xc
	.4byte	0x609
	.byte	0x1c
	.uleb128 0xf
	.string	"arg"
	.byte	0x69
	.byte	0xb
	.4byte	0x84
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	0x57d
	.uleb128 0x3
	.4byte	0x5ef
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x9
	.byte	0x6d
	.byte	0x20
	.4byte	0x412
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x24
	.4byte	0x46d
	.uleb128 0x5
	.byte	0x3
	.4byte	looprt
	.uleb128 0x18
	.4byte	.LASF87
	.2byte	0x14a
	.byte	0xd
	.4byte	0x103
	.4byte	0x659
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x65e
	.byte	0
	.uleb128 0x3
	.4byte	0x278
	.uleb128 0x8
	.4byte	0x659
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7b
	.4byte	0x673
	.uleb128 0x1
	.4byte	0x468
	.byte	0
	.uleb128 0x18
	.4byte	.LASF88
	.2byte	0x1be
	.byte	0xf
	.4byte	0x278
	.4byte	0x6a7
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x10f
	.uleb128 0x1
	.4byte	0x293
	.uleb128 0x1
	.4byte	0x6ac
	.byte	0
	.uleb128 0x3
	.4byte	0x26b
	.uleb128 0x8
	.4byte	0x6a7
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x9
	.byte	0x73
	.byte	0x5
	.4byte	0x63
	.4byte	0x6d1
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x50b
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x9
	.byte	0x70
	.byte	0x5
	.4byte	0x63
	.4byte	0x6e7
	.uleb128 0x1
	.4byte	0x468
	.byte	0
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7a
	.4byte	0x6fc
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x604
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x76
	.4byte	0x725
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x6a
	.uleb128 0x1
	.4byte	0x725
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xca
	.byte	0
	.uleb128 0x3
	.4byte	0x72a
	.uleb128 0x10
	.4byte	0x73f
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x75
	.4byte	0x754
	.uleb128 0x1
	.4byte	0x604
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0xa
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x76a
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x9
	.byte	0x72
	.byte	0x5
	.4byte	0x63
	.4byte	0x780
	.uleb128 0x1
	.4byte	0x468
	.byte	0
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x7f
	.4byte	0x79a
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x6a
	.uleb128 0x1
	.4byte	0xca
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x7e
	.4byte	0x7b4
	.uleb128 0x1
	.4byte	0x468
	.uleb128 0x1
	.4byte	0x6a
	.uleb128 0x1
	.4byte	0xca
	.byte	0
	.uleb128 0x21
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x2f6
	.byte	0x6
	.4byte	0x7c7
	.uleb128 0x1
	.4byte	0x127
	.byte	0
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0xb
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0x7dd
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x9
	.byte	0x71
	.byte	0x5
	.4byte	0x63
	.4byte	0x7f3
	.uleb128 0x1
	.4byte	0x468
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x75
	.4byte	0x63
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81a
	.uleb128 0x5
	.4byte	.LASF104
	.byte	0x75
	.byte	0x2e
	.4byte	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x6d
	.4byte	0x63
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84f
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x6d
	.byte	0x3c
	.4byte	0x50b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x6d
	.byte	0x49
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x4d
	.4byte	0x63
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a8
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0x4d
	.byte	0x1f
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x4d
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x4d
	.byte	0x51
	.4byte	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x40
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f4
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0x40
	.byte	0x1e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x40
	.byte	0x2d
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF112
	.byte	0x40
	.byte	0x3a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x42
	.4byte	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF122
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x36
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x937
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0x36
	.byte	0x33
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x36
	.byte	0x42
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x31
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x968
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0x31
	.byte	0x2b
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x31
	.byte	0x3a
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF117
	.byte	0x26
	.byte	0x35
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"loop_evt_handler_statistic"
.LASF94:
	.string	"bloop_timer_init"
.LASF13:
	.string	"size_t"
.LASF48:
	.string	"prev"
.LASF65:
	.string	"count_triggered"
.LASF113:
	.string	"looprt"
.LASF71:
	.string	"bitmap_evt_async"
.LASF85:
	.string	"idx_task"
.LASF101:
	.string	"bloop_run"
.LASF9:
	.string	"long long unsigned int"
.LASF123:
	.string	"proc_entry_looprt"
.LASF54:
	.string	"container"
.LASF43:
	.string	"next"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF80:
	.string	"timer_dued"
.LASF7:
	.string	"long unsigned int"
.LASF99:
	.string	"vTaskDelay"
.LASF32:
	.string	"ucDummy7"
.LASF109:
	.string	"proc_task_looprt"
.LASF6:
	.string	"long int"
.LASF119:
	.string	"tskTaskControlBlock"
.LASF84:
	.string	"time_target"
.LASF41:
	.string	"TaskHandle_t"
.LASF22:
	.string	"TickType_t"
.LASF114:
	.string	"looprt_evt_schedule"
.LASF16:
	.string	"uint16_t"
.LASF20:
	.string	"BaseType_t"
.LASF92:
	.string	"bloop_timer_register"
.LASF91:
	.string	"bloop_wait_startup"
.LASF95:
	.string	"pvPortMalloc"
.LASF33:
	.string	"uxDummy9"
.LASF88:
	.string	"xTaskCreateStatic"
.LASF10:
	.string	"unsigned int"
.LASF98:
	.string	"bloop_evt_set_async"
.LASF70:
	.string	"looper"
.LASF60:
	.string	"time_added"
.LASF108:
	.string	"stack_count"
.LASF117:
	.string	"pvParameters"
.LASF67:
	.string	"name"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"StackType_t"
.LASF42:
	.string	"utils_list_hdr"
.LASF46:
	.string	"last"
.LASF50:
	.string	"priority"
.LASF34:
	.string	"uxDummy10"
.LASF35:
	.string	"uxDummy12"
.LASF73:
	.string	"bitmap_msg"
.LASF57:
	.string	"item"
.LASF115:
	.string	"looprt_evt_notify_async_fromISR"
.LASF96:
	.string	"bloop_status_dump"
.LASF37:
	.string	"ulDummy18"
.LASF105:
	.string	"handler"
.LASF100:
	.string	"puts"
.LASF97:
	.string	"bloop_evt_set_async_fromISR"
.LASF23:
	.string	"xDummy2"
.LASF29:
	.string	"xDummy3"
.LASF11:
	.string	"long double"
.LASF87:
	.string	"xTaskCreate"
.LASF107:
	.string	"proc_stack_looprt"
.LASF86:
	.string	"evt_type_map"
.LASF53:
	.string	"id_src"
.LASF51:
	.string	"id_dst"
.LASF104:
	.string	"timer"
.LASF39:
	.string	"uxDummy20"
.LASF25:
	.string	"StaticListItem_t"
.LASF78:
	.string	"handlers"
.LASF58:
	.string	"arg1"
.LASF31:
	.string	"pxDummy6"
.LASF106:
	.string	"looprt_start"
.LASF14:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF77:
	.string	"statistic"
.LASF4:
	.string	"short int"
.LASF64:
	.string	"time_accumulated"
.LASF81:
	.string	"loop_timer"
.LASF18:
	.string	"TaskFunction_t"
.LASF122:
	.string	"looprt_evt_status_dump"
.LASF90:
	.string	"bloop_init"
.LASF27:
	.string	"xSTATIC_TCB"
.LASF112:
	.string	"delay_ms"
.LASF17:
	.string	"uint32_t"
.LASF45:
	.string	"first"
.LASF82:
	.string	"dlist_item"
.LASF12:
	.string	"char"
.LASF116:
	.string	"looprt_evt_notify_async"
.LASF61:
	.string	"time_consumed"
.LASF24:
	.string	"pvDummy3"
.LASF52:
	.string	"id_msg"
.LASF93:
	.string	"bloop_timer_configure"
.LASF30:
	.string	"uxDummy5"
.LASF28:
	.string	"pxDummy1"
.LASF103:
	.string	"looprt_handler_register"
.LASF66:
	.string	"loop_evt_handler"
.LASF110:
	.string	"task"
.LASF121:
	.string	"looprt_start_auto"
.LASF118:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF89:
	.string	"bloop_handler_register"
.LASF59:
	.string	"arg2"
.LASF102:
	.string	"looprt_timer_register"
.LASF74:
	.string	"evt_type_map_async"
.LASF38:
	.string	"ucDummy19"
.LASF44:
	.string	"utils_list"
.LASF15:
	.string	"uint8_t"
.LASF83:
	.string	"flags"
.LASF111:
	.string	"evt_map"
.LASF75:
	.string	"evt_type_map_sync"
.LASF69:
	.string	"loop_ctx"
.LASF120:
	.string	"bloop_handler_sys"
.LASF68:
	.string	"handle"
.LASF72:
	.string	"bitmap_evt_sync"
.LASF26:
	.string	"xSTATIC_LIST_ITEM"
.LASF79:
	.string	"timer_dlist"
.LASF36:
	.string	"pvDummy15"
.LASF63:
	.string	"time_max"
.LASF56:
	.string	"loop_msg"
.LASF47:
	.string	"utils_dlist_s"
.LASF49:
	.string	"utils_dlist_t"
.LASF76:
	.string	"list"
.LASF21:
	.string	"UBaseType_t"
.LASF40:
	.string	"StaticTask_t"
.LASF55:
	.string	"header"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bloop/looprt/src/looprt.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/looprt"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
