	.file	"ef_port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ef_port_read,"ax",@progbits
	.align	1
	.globl	ef_port_read
	.type	ef_port_read, @function
ef_port_read:
.LVL0:
.LFB6:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	lui	a5,%hi(handle)
.LM5:
	mv	a3,a1
.LM6:
	mv	a1,a0
.LVL1:
.LM7:
	lw	a0,%lo(handle)(a5)
.LVL2:
.LM8:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM9:
	call	bl_mtd_read
.LVL3:
.LM10:
.LM11:
	lw	ra,12(sp)
	.cfi_restore 1
.LM12:
	srli	a0,a0,31
.LVL4:
.LM13:
	slli	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	ef_port_read, .-ef_port_read
	.section	.text.ef_port_write,"ax",@progbits
	.align	1
	.globl	ef_port_write
	.type	ef_port_write, @function
ef_port_write:
.LVL5:
.LFB8:
.LM14:
	.cfi_startproc
.LM15:
.LM16:
.LM17:
	lui	a5,%hi(handle)
.LM18:
	mv	a3,a1
.LM19:
	mv	a1,a0
.LVL6:
.LM20:
	lw	a0,%lo(handle)(a5)
.LVL7:
.LM21:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM22:
	call	bl_mtd_write
.LVL8:
.LM23:
	lw	ra,12(sp)
	.cfi_restore 1
.LM24:
	srai	a0,a0,31
.LVL9:
.LM25:
.LM26:
	andi	a0,a0,3
.LVL10:
.LM27:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	ef_port_write, .-ef_port_write
	.section	.text.ef_port_env_lock,"ax",@progbits
	.align	1
	.globl	ef_port_env_lock
	.type	ef_port_env_lock, @function
ef_port_env_lock:
.LFB9:
.LM28:
	.cfi_startproc
.LM29:
	lui	a5,%hi(env_cache_lock)
	lw	a0,%lo(env_cache_lock)(a5)
	li	a1,-1
	tail	xQueueSemaphoreTake
.LVL11:
	.cfi_endproc
.LFE9:
	.size	ef_port_env_lock, .-ef_port_env_lock
	.section	.text.ef_port_env_unlock,"ax",@progbits
	.align	1
	.globl	ef_port_env_unlock
	.type	ef_port_env_unlock, @function
ef_port_env_unlock:
.LFB10:
.LM30:
	.cfi_startproc
.LM31:
	lui	a5,%hi(env_cache_lock)
	lw	a0,%lo(env_cache_lock)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	tail	xQueueGenericSend
.LVL12:
	.cfi_endproc
.LFE10:
	.size	ef_port_env_unlock, .-ef_port_env_unlock
	.section	.text.ef_log_debug,"ax",@progbits
	.align	1
	.globl	ef_log_debug
	.type	ef_log_debug, @function
ef_log_debug:
.LVL13:
.LFB11:
.LM32:
	.cfi_startproc
.LM33:
.LM34:
.LM35:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
.LM36:
	addi	a1,sp,44
.LVL14:
.LM37:
	mv	a0,a2
.LVL15:
.LM38:
	sw	ra,28(sp)
	.cfi_offset 1, -36
.LM39:
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
.LM40:
	sw	a1,12(sp)
.LM41:
	call	vprint
.LVL16:
.LM42:
.LM43:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	ef_log_debug, .-ef_log_debug
	.section	.rodata.ef_port_erase.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"addr % EF_ERASE_MIN_SIZE == 0"
	.align	2
.LC1:
	.string	"(%s) has assert failed at %s.\r\n"
	.align	2
.LC2:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_port.c"
	.section	.text.ef_port_erase,"ax",@progbits
	.align	1
	.globl	ef_port_erase
	.type	ef_port_erase, @function
ef_port_erase:
.LVL17:
.LFB7:
.LM44:
	.cfi_startproc
.LM45:
.LM46:
.LM47:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM48:
	slli	a5,a0,20
.LM49:
	beq	a5,zero,.L12
.LM50:
	lui	a4,%hi(__FUNCTION__.0)
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
.LVL18:
.LM51:
	addi	a4,a4,%lo(__FUNCTION__.0)
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	li	a1,119
.LVL19:
.LM52:
	addi	a0,a0,%lo(.LC2)
	call	ef_log_debug
.LVL20:
.L13:
.LM53:
.LM54:
	j	.L13
.LVL21:
.L12:
.LM55:
	lui	a5,%hi(handle)
	mv	a2,a1
.LM56:
.LM57:
.LM58:
	mv	a1,a0
.LVL22:
.LM59:
	lw	a0,%lo(handle)(a5)
.LVL23:
.LM60:
	call	bl_mtd_erase
.LVL24:
.LM61:
.LM62:
	lw	ra,12(sp)
	.cfi_restore 1
	srli	a0,a0,31
.LVL25:
.LM63:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	ef_port_erase, .-ef_port_erase
	.section	.text.ef_log_info,"ax",@progbits
	.align	1
	.globl	ef_log_info
	.type	ef_log_info, @function
ef_log_info:
.LVL26:
.LFB12:
.LM64:
	.cfi_startproc
.LM65:
.LM66:
.LM67:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a1,36(sp)
.LM68:
	addi	a1,sp,36
.LM69:
	sw	ra,28(sp)
	.cfi_offset 1, -36
.LM70:
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
.LM71:
	sw	a1,12(sp)
.LM72:
	call	vprint
.LVL27:
.LM73:
.LM74:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	ef_log_info, .-ef_log_info
	.section	.rodata.ef_port_init.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"PSM"
	.align	2
.LC4:
	.string	"[EF] [PART] [XIP] error when get PSM partition %d\r\n"
	.align	2
.LC5:
	.string	"[EF] [PART] [XIP] Dead Loop. Reason: no Valid PSM partition found\r\n"
	.align	2
.LC6:
	.string	"[EF] Found Valid PSM partition, XIP Addr %08x, flash addr %08x\r\n"
	.align	2
.LC7:
	.string	"*default_env_size = 0x%08x\r\n"
	.section	.text.ef_port_init,"ax",@progbits
	.align	1
	.globl	ef_port_init
	.type	ef_port_init, @function
ef_port_init:
.LVL28:
.LFB5:
.LM75:
	.cfi_startproc
.LM76:
.LM77:
.LM78:
.LM79:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LM80:
	lui	s0,%hi(handle)
.LM81:
	mv	s1,a0
.LM82:
	lui	a0,%hi(.LC3)
.LVL29:
.LM83:
	sw	s2,32(sp)
.LM84:
	li	a2,2
	.cfi_offset 18, -16
.LM85:
	mv	s2,a1
.LM86:
	addi	a0,a0,%lo(.LC3)
	addi	a1,s0,%lo(handle)
.LVL30:
.LM87:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM88:
	call	bl_mtd_open
.LVL31:
.LM89:
.LM90:
	bge	a0,zero,.L18
	mv	a1,a0
.LM91:
	lui	a0,%hi(.LC4)
.LVL32:
.LM92:
	addi	a0,a0,%lo(.LC4)
	call	ef_log_info
.LVL33:
.LM93:
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	puts
.LVL34:
.L19:
.LM94:
.LM95:
.LM96:
	j	.L19
.LVL35:
.L18:
.LM97:
	li	a2,28
	li	a1,0
	addi	a0,sp,4
.LVL36:
.LM98:
	call	memset
.LVL37:
.LM99:
	lw	a0,%lo(handle)(s0)
	addi	a1,sp,4
.LM100:
	li	s0,1
.LM101:
	call	bl_mtd_info
.LVL38:
.LM102:
	lw	a2,20(sp)
	lw	a1,28(sp)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	ef_log_info
.LVL39:
.LM103:
.LM104:
	lui	a5,%hi(default_env_set)
	addi	a5,a5,%lo(default_env_set)
	sw	a5,0(s1)
.LM105:
.LM106:
	lui	a0,%hi(.LC7)
.LM107:
	sw	s0,0(s2)
.LM108:
	mv	a1,s0
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL40:
.LM109:
.LM110:
	mv	a0,s0
	call	xQueueCreateMutex
.LVL41:
.LM111:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LM112:
	lui	a5,%hi(env_cache_lock)
	sw	a0,%lo(env_cache_lock)(a5)
.LM113:
.LM114:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL42:
.LM115:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL43:
.LM116:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	ef_port_init, .-ef_port_init
	.section	.text.ef_print,"ax",@progbits
	.align	1
	.globl	ef_print
	.type	ef_print, @function
ef_print:
.LVL44:
.LFB13:
.LM117:
	.cfi_startproc
.LM118:
.LM119:
.LM120:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a1,36(sp)
.LM121:
	addi	a1,sp,36
.LM122:
	sw	ra,28(sp)
	.cfi_offset 1, -36
.LM123:
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
.LM124:
	sw	a1,12(sp)
.LM125:
	call	vprint
.LVL45:
.LM126:
.LM127:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	ef_print, .-ef_print
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 14
__FUNCTION__.0:
	.string	"ef_port_erase"
	.section	.sbss.env_cache_lock,"aw",@nobits
	.align	2
	.type	env_cache_lock, @object
	.size	env_cache_lock, 4
env_cache_lock:
	.zero	4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"boot_times"
	.align	2
.LC9:
	.string	"3"
	.section	.rodata.default_env_set,"a"
	.align	2
	.type	default_env_set, @object
	.size	default_env_set, 12
default_env_set:
	.word	.LC8
	.word	.LC9
	.word	1
	.section	.sbss.handle,"aw",@nobits
	.align	2
	.type	handle, @object
	.size	handle, 4
handle:
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8ab
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL19
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x53
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	0x53
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x77
	.uleb128 0x7
	.4byte	0x66
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x96
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0xc
	.byte	0x4
	.byte	0x49
	.byte	0x10
	.4byte	0xec
	.uleb128 0x1a
	.string	"key"
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0xec
	.byte	0
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4b
	.byte	0xb
	.4byte	0xfd
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4c
	.byte	0xc
	.4byte	0xa4
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0xf1
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	0xf1
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4d
	.byte	0x3
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0xff
	.uleb128 0x1c
	.byte	0x7
	.byte	0x1
	.4byte	0x77
	.byte	0x4
	.byte	0x50
	.byte	0xe
	.4byte	0x155
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x5a
	.byte	0x3
	.4byte	0x110
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x174
	.uleb128 0x1d
	.byte	0x4
	.4byte	.LASF77
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x67
	.byte	0x18
	.4byte	0x168
	.uleb128 0x4
	.4byte	0xf8
	.uleb128 0x1e
	.4byte	0x186
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.4byte	0x47
	.uleb128 0x7
	.4byte	0x190
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0x85
	.uleb128 0x4
	.4byte	0x66
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x1be
	.uleb128 0x4
	.4byte	0x1c3
	.uleb128 0x1f
	.4byte	.LASF78
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x25
	.byte	0x17
	.4byte	0x1b2
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x22
	.byte	0xf
	.4byte	0xfd
	.uleb128 0x20
	.byte	0x1c
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x21e
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x9
	.byte	0x24
	.byte	0xa
	.4byte	0x21e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x9
	.byte	0x25
	.byte	0x12
	.4byte	0x32
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x9
	.byte	0x26
	.byte	0x12
	.4byte	0x32
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x9
	.byte	0x27
	.byte	0xb
	.4byte	0xfd
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0xf1
	.4byte	0x22e
	.uleb128 0x12
	.4byte	0x32
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0x28
	.byte	0x3
	.4byte	0x1e0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x25
	.byte	0x18
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x3
	.4byte	handle
	.uleb128 0x11
	.4byte	0x10b
	.4byte	0x25b
	.uleb128 0x12
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x24b
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x28
	.byte	0x15
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	default_env_set
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x2c
	.byte	0x1a
	.4byte	0x1c8
	.uleb128 0x5
	.byte	0x3
	.4byte	env_cache_lock
	.uleb128 0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.4byte	0x299
	.uleb128 0x2
	.4byte	0x186
	.uleb128 0x2
	.4byte	0x17a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF46
	.2byte	0x28a
	.byte	0xc
	.4byte	0x190
	.4byte	0x2be
	.uleb128 0x2
	.4byte	0x1b2
	.uleb128 0x2
	.4byte	0x2c3
	.uleb128 0x2
	.4byte	0x1a1
	.uleb128 0x2
	.4byte	0x19c
	.byte	0
	.uleb128 0x4
	.4byte	0x2c8
	.uleb128 0x7
	.4byte	0x2be
	.uleb128 0x22
	.uleb128 0x13
	.4byte	.LASF47
	.2byte	0x58a
	.byte	0xc
	.4byte	0x190
	.4byte	0x2e4
	.uleb128 0x2
	.4byte	0x1b2
	.uleb128 0x2
	.4byte	0x1a1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x33
	.byte	0x5
	.4byte	0x9d
	.4byte	0x309
	.uleb128 0x2
	.4byte	0x1d4
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x309
	.byte	0
	.uleb128 0x4
	.4byte	0x72
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x31
	.byte	0x5
	.4byte	0x9d
	.4byte	0x32e
	.uleb128 0x2
	.4byte	0x1d4
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x34
	.byte	0x5
	.4byte	0x9d
	.4byte	0x353
	.uleb128 0x2
	.4byte	0x1d4
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x1ad
	.byte	0
	.uleb128 0x13
	.4byte	.LASF51
	.2byte	0x586
	.byte	0xf
	.4byte	0x1b2
	.4byte	0x369
	.uleb128 0x2
	.4byte	0x72
	.byte	0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xa
	.byte	0xce
	.byte	0x5
	.4byte	0x9d
	.4byte	0x380
	.uleb128 0x2
	.4byte	0x18b
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0x30
	.byte	0x5
	.4byte	0x9d
	.4byte	0x39b
	.uleb128 0x2
	.4byte	0x1d4
	.uleb128 0x2
	.4byte	0x39b
	.byte	0
	.uleb128 0x4
	.4byte	0x22e
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0xfd
	.4byte	0x3c0
	.uleb128 0x2
	.4byte	0xfd
	.uleb128 0x2
	.4byte	0x9d
	.uleb128 0x2
	.4byte	0xa4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0xe3
	.byte	0x5
	.4byte	0x9d
	.4byte	0x3d6
	.uleb128 0x2
	.4byte	0x186
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0x2e
	.byte	0x5
	.4byte	0x9d
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	0x186
	.uleb128 0x2
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x1d4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xde
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44f
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0xde
	.byte	0x1b
	.4byte	0x186
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xf
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xdf
	.byte	0xd
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LVL45
	.4byte	0x282
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0xcd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a3
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0xcd
	.byte	0x1e
	.4byte	0x186
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xf
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xce
	.byte	0xd
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LVL27
	.4byte	0x282
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0xb5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51d
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0xb5
	.byte	0x2f
	.4byte	0x186
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0xb5
	.byte	0x50
	.4byte	0x5a
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0xb5
	.byte	0x62
	.4byte	0x186
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xf
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xb9
	.byte	0xd
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LVL16
	.4byte	0x282
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0xa5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54b
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x299
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x570
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x2c9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x8b
	.4byte	0x155
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x8b
	.byte	0x22
	.4byte	0x85
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x16
	.string	"buf"
	.byte	0x8b
	.byte	0x38
	.4byte	0x605
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x8b
	.byte	0x44
	.4byte	0xa4
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x8c
	.4byte	0x155
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0x2e4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x91
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x73
	.4byte	0x155
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c6
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x73
	.byte	0x22
	.4byte	0x85
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x73
	.byte	0x2f
	.4byte	0xa4
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x74
	.4byte	0x155
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x23
	.4byte	.LASF80
	.4byte	0x6d6
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.uleb128 0xa
	.4byte	.LVL20
	.4byte	0x4a3
	.4byte	0x6a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL24
	.4byte	0x30e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xf8
	.4byte	0x6d6
	.uleb128 0x12
	.4byte	0x32
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x6c6
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x5c
	.4byte	0x155
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x770
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x5c
	.byte	0x21
	.4byte	0x85
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x16
	.string	"buf"
	.byte	0x5c
	.byte	0x31
	.4byte	0x770
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x5c
	.byte	0x3d
	.4byte	0xa4
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x5d
	.4byte	0x155
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x32e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x85
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x36
	.4byte	0x155
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89f
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x36
	.byte	0x27
	.4byte	0x89f
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x36
	.byte	0x3c
	.4byte	0x8a9
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x9d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x38
	.byte	0x13
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LVL31
	.4byte	0x3d6
	.4byte	0x7fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	handle
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL33
	.4byte	0x44f
	.4byte	0x811
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0xa
	.4byte	.LVL34
	.4byte	0x3c0
	.4byte	0x828
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xa
	.4byte	.LVL37
	.4byte	0x3a0
	.4byte	0x846
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0xa
	.4byte	.LVL38
	.4byte	0x380
	.4byte	0x85a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xa
	.4byte	.LVL39
	.4byte	0x44f
	.4byte	0x871
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0xa
	.4byte	.LVL40
	.4byte	0x369
	.4byte	0x88e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL41
	.4byte	0x353
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x8a4
	.uleb128 0x4
	.4byte	0x10b
	.uleb128 0x4
	.4byte	0xa4
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x14
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
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS18:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL45-1-.LVL44
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL45-1-.LVL44
	.uleb128 .LFE13-.LVL44
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL27-1-.LVL26
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL27-1-.LVL26
	.uleb128 .LFE12-.LVL26
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LFE11-.LVL13
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LFE11-.LVL13
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL16-1-.LVL13
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL16-1-.LVL13
	.uleb128 .LFE11-.LVL13
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL5
	.uleb128 .LVL8-1-.LVL5
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL8-1-.LVL5
	.uleb128 .LFE8-.LVL5
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LVL8-1-.LVL5
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL8-1-.LVL5
	.uleb128 .LFE8-.LVL5
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL8-1-.LVL5
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL8-1-.LVL5
	.uleb128 .LFE8-.LVL5
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
.LLST7:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL5
	.uleb128 .LVL10-.LVL5
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL18-.LVL17
	.uleb128 .LVL21-.LVL17
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL17
	.uleb128 .LVL23-.LVL17
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL23-.LVL17
	.uleb128 .LVL24-1-.LVL17
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL24-1-.LVL17
	.uleb128 .LFE7-.LVL17
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL21-.LVL17
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL22-.LVL17
	.uleb128 .LVL24-1-.LVL17
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL24-1-.LVL17
	.uleb128 .LFE7-.LVL17
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0x2
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x13
.LLST13:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL24-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL17
	.uleb128 .LVL25-.LVL17
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LFE6-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LFE6-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LFE6-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0x2
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xc
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL29-.LVL28
	.uleb128 .LVL42-.LVL28
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL42-.LVL28
	.uleb128 .LFE5-.LVL28
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL30-.LVL28
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL30-.LVL28
	.uleb128 .LVL43-.LVL28
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL43-.LVL28
	.uleb128 .LFE5-.LVL28
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x12
	.uleb128 0x16
	.uleb128 0x17
.LLST17:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL32-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL32-.LVL31
	.uleb128 .LVL33-1-.LVL31
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL35-.LVL31
	.uleb128 .LVL36-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
.LLRL19:
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
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
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x8
	.4byte	.LASF1
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xc
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF88
	.byte	0x4
	.4byte	.LASF89
	.byte	0x6
	.4byte	.LASF90
	.byte	0x6
	.4byte	.LASF91
	.byte	0x3
	.4byte	.LASF92
	.byte	0x6
	.4byte	.LASF93
	.byte	0x2
	.4byte	.LASF94
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.4byte	.LASF96
	.byte	0x5
	.4byte	.LASF97
	.byte	0x7
	.4byte	.LASF98
	.byte	0x7
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x72
	.byte	0x5
	.uleb128 0x43
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x11
	.byte	0x5
	.uleb128 0x43
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1d
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x11
	.byte	0x5
	.uleb128 0x43
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1d
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x12
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1c
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0xa1
	.byte	0x5
	.uleb128 0x4a
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x11
	.byte	0x5
	.uleb128 0x4a
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1d
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x11
	.byte	0x5
	.uleb128 0x4a
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1d
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0xd
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0xb1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0xbb
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0xcb
	.byte	0x5
	.uleb128 0x6f
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1a
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.uleb128 0x6f
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1e
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0xd
	.byte	0x5
	.uleb128 0x6f
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0x6f
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1e
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x19
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x89
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x35
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x1b
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd5
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x1
	.byte	0x5
	.uleb128 0xdb
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0xe1
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0xe3
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1a
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1b
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x13
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x1
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x1b
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x19
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x4c
	.byte	0x5
	.uleb128 0x4e
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x4e
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x1b
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x13
	.byte	0x5
	.uleb128 0x4e
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x1b
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x13
	.byte	0x5
	.uleb128 0x4e
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x1b
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x13
	.byte	0x5
	.uleb128 0x4e
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x1b
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x13
	.byte	0x5
	.uleb128 0x4e
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x1b
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x10
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x15
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x14
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM117
	.byte	0xf4
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x1a
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x1b
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x13
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x1b
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x19
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"vprint"
.LASF69:
	.string	"result"
.LASF66:
	.string	"addr"
.LASF71:
	.string	"ef_port_init"
.LASF58:
	.string	"ef_print"
.LASF49:
	.string	"bl_mtd_erase"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"size_t"
.LASF50:
	.string	"bl_mtd_read"
.LASF53:
	.string	"bl_mtd_info"
.LASF7:
	.string	"long long int"
.LASF44:
	.string	"default_env_set"
.LASF19:
	.string	"ef_env"
.LASF65:
	.string	"ef_port_env_lock"
.LASF62:
	.string	"file"
.LASF33:
	.string	"BaseType_t"
.LASF56:
	.string	"bl_mtd_open"
.LASF16:
	.string	"value"
.LASF32:
	.string	"va_list"
.LASF9:
	.string	"uint8_t"
.LASF64:
	.string	"ef_port_env_unlock"
.LASF63:
	.string	"line"
.LASF46:
	.string	"xQueueGenericSend"
.LASF37:
	.string	"bl_mtd_handle_t"
.LASF70:
	.string	"ef_port_read"
.LASF67:
	.string	"ef_port_write"
.LASF60:
	.string	"format"
.LASF34:
	.string	"TickType_t"
.LASF51:
	.string	"xQueueCreateMutex"
.LASF54:
	.string	"memset"
.LASF27:
	.string	"EF_ENV_INIT_FAILED"
.LASF6:
	.string	"long int"
.LASF22:
	.string	"EF_READ_ERR"
.LASF39:
	.string	"offset"
.LASF45:
	.string	"env_cache_lock"
.LASF80:
	.string	"__FUNCTION__"
.LASF24:
	.string	"EF_ENV_NAME_ERR"
.LASF29:
	.string	"EfErrCode"
.LASF35:
	.string	"QueueHandle_t"
.LASF17:
	.string	"value_len"
.LASF38:
	.string	"name"
.LASF15:
	.string	"long double"
.LASF36:
	.string	"SemaphoreHandle_t"
.LASF10:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF3:
	.string	"unsigned int"
.LASF47:
	.string	"xQueueSemaphoreTake"
.LASF57:
	.string	"args"
.LASF55:
	.string	"puts"
.LASF78:
	.string	"QueueDefinition"
.LASF11:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF30:
	.string	"_Bool"
.LASF41:
	.string	"xip_addr"
.LASF52:
	.string	"printf"
.LASF8:
	.string	"int32_t"
.LASF26:
	.string	"EF_ENV_FULL"
.LASF68:
	.string	"ef_port_erase"
.LASF25:
	.string	"EF_ENV_NAME_EXIST"
.LASF20:
	.string	"EF_NO_ERR"
.LASF72:
	.string	"default_env"
.LASF48:
	.string	"bl_mtd_write"
.LASF13:
	.string	"long unsigned int"
.LASF77:
	.string	"__builtin_va_list"
.LASF43:
	.string	"handle"
.LASF40:
	.string	"size"
.LASF74:
	.string	"info"
.LASF28:
	.string	"EF_ENV_ARG_ERR"
.LASF61:
	.string	"ef_log_debug"
.LASF31:
	.string	"__gnuc_va_list"
.LASF59:
	.string	"ef_log_info"
.LASF75:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF76:
	.string	"_ef_env"
.LASF42:
	.string	"bl_mtd_info_t"
.LASF23:
	.string	"EF_WRITE_ERR"
.LASF21:
	.string	"EF_ERASE_ERR"
.LASF73:
	.string	"default_env_size"
	.section	.debug_line_str,"MS",@progbits,1
.LASF84:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src"
.LASF87:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/easyflash4"
.LASF88:
	.string	"ef_port.c"
.LASF89:
	.string	"stdint-gcc.h"
.LASF96:
	.string	"bl_mtd.h"
.LASF83:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_port.c"
.LASF92:
	.string	"stdarg.h"
.LASF94:
	.string	"queue.h"
.LASF95:
	.string	"semphr.h"
.LASF91:
	.string	"ef_def.h"
.LASF98:
	.string	"string.h"
.LASF86:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF93:
	.string	"portmacro.h"
.LASF82:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF97:
	.string	"stdio.h"
.LASF81:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF85:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/include"
.LASF90:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
