	.file	"local_event.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.event_read_cb,"ax",@progbits
	.align	1
	.type	event_read_cb, @function
event_read_cb:
.LVL0:
.LFB16:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM5:
	li	a2,16
	mv	a1,sp
.LVL1:
.LM6:
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LM7:
	call	aos_read
.LVL2:
.LM8:
.LM9:
	li	a5,16
	bne	a0,a5,.L1
.LM10:
.LVL3:
.LBB11:
.LBI11:
.LM11:
.LBB12:
.LM12:
.LM13:
	lhu	a4,4(sp)
	li	a5,256
	bne	a4,a5,.L4
.LBB13:
.LM14:
.LVL4:
.LM15:
.LM16:
	lw	a0,12(sp)
.LVL5:
.LM17:
	lw	a5,8(sp)
	jalr	a5
.LVL6:
.LM18:
.L1:
.LM19:
.LBE13:
.LBE12:
.LBE11:
.LM20:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L4:
	.cfi_restore_state
.LBB15:
.LBB14:
.LM21:
.LM22:
.LM23:
	lui	s1,%hi(g_local_event_list)
	addi	s1,s1,%lo(g_local_event_list)
	lw	s0,4(s1)
.LVL8:
.L5:
.LM24:
	beq	s0,s1,.L1
.LM25:
.LM26:
	lhu	a5,16(s0)
.LM27:
	beq	a5,zero,.L6
.LM28:
	lhu	a4,4(sp)
	bne	a4,a5,.L7
.L6:
.LM29:
.LM30:
	lw	a5,8(s0)
	lw	a1,12(s0)
	mv	a0,sp
	jalr	a5
.LVL9:
.L7:
.LM31:
	lw	s0,4(s0)
.LVL10:
.LM32:
	j	.L5
.LBE14:
.LBE15:
	.cfi_endproc
.LFE16:
	.size	event_read_cb, .-event_read_cb
	.section	.text._schedule_call,"ax",@progbits
	.align	1
	.type	_schedule_call, @function
_schedule_call:
.LVL11:
.LFB22:
.LM33:
	.cfi_startproc
.LM34:
.LM35:
	beq	a1,zero,.L19
.LM36:
	lui	a5,%hi(g_main_ctx)
.LM37:
	lw	a4,%lo(g_main_ctx)(a5)
.LM38:
	li	a5,-22
.LM39:
	beq	a4,zero,.L26
.LM40:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM41:
	sw	zero,20(sp)
	li	a5,256
	sw	a3,12(sp)
.LM42:
.LM43:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM44:
	sw	zero,16(sp)
	sh	a5,20(sp)
	sw	a1,24(sp)
	sw	a2,28(sp)
.LM45:
.LM46:
	call	aos_loop_get_eventfd
.LVL12:
.LM47:
.LM48:
	lw	a3,12(sp)
	bge	a0,zero,.L16
.LM49:
.LM50:
	lui	a5,%hi(local_event)
	addi	a5,a5,%lo(local_event)
	lw	a0,4(a5)
.LVL13:
.L16:
.LM51:
.LM52:
	beq	a3,zero,.L17
.LM53:
.LM54:
	lhu	a5,20(sp)
	li	a4,-32768
	or	a5,a5,a4
	sh	a5,20(sp)
.L17:
.LM55:
.LVL14:
.LBB18:
.LBI18:
.LM56:
.LBB19:
.LM57:
.LM58:
	lhu	a1,20(sp)
.LVL15:
.LM59:
.LM60:
	addi	a2,sp,16
.LVL16:
.LM61:
	slli	a5,a1,17
.LM62:
	srli	a1,a1,15
.LVL17:
.LM63:
	srli	a5,a5,17
.LM64:
	addi	a1,a1,257
.LM65:
	sh	a5,20(sp)
.LVL18:
.LM66:
.LM67:
.LM68:
.LM69:
	call	aos_ioctl
.LVL19:
.LM70:
.LBE19:
.LBE18:
.LM71:
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL20:
.LM72:
	jr	ra
.LVL21:
.L19:
.LM73:
	li	a5,-22
.L26:
.LM74:
	mv	a0,a5
.LVL22:
.LM75:
	ret
	.cfi_endproc
.LFE22:
	.size	_schedule_call, .-_schedule_call
	.section	.rodata.aos_event_service_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"/dev/event"
	.section	.text.aos_event_service_init,"ax",@progbits
	.align	1
	.globl	aos_event_service_init
	.type	aos_event_service_init, @function
aos_event_service_init:
.LFB17:
.LM76:
	.cfi_startproc
.LM77:
.LM78:
	lui	a0,%hi(.LC0)
.LM79:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM80:
	li	a1,0
	addi	a0,a0,%lo(.LC0)
.LM81:
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LM82:
	call	aos_open
.LVL23:
.LM83:
	lui	a5,%hi(local_event)
	addi	a5,a5,%lo(local_event)
.LM84:
	lw	a4,4(a5)
.LM85:
	mv	s0,a0
.LVL24:
.LM86:
.LM87:
	bge	a4,zero,.L30
.LM88:
.LM89:
	sw	a0,4(a5)
.L30:
.LM90:
	lui	a1,%hi(event_read_cb)
	li	a2,0
	addi	a1,a1,%lo(event_read_cb)
	mv	a0,s0
	call	aos_poll_read_fd
.LVL25:
.LM91:
	mv	a0,s0
	call	aos_loop_set_eventfd
.LVL26:
.LM92:
.LM93:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL27:
.LM94:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	aos_event_service_init, .-aos_event_service_init
	.section	.text.aos_event_service_deinit,"ax",@progbits
	.align	1
	.globl	aos_event_service_deinit
	.type	aos_event_service_deinit, @function
aos_event_service_deinit:
.LVL28:
.LFB18:
.LM95:
	.cfi_startproc
.LM96:
	lui	a1,%hi(event_read_cb)
.LM97:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM98:
	li	a2,0
	addi	a1,a1,%lo(event_read_cb)
.LM99:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM100:
	sw	a0,12(sp)
.LM101:
	call	aos_cancel_poll_read_fd
.LVL29:
.LM102:
	lw	a0,12(sp)
.LM103:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL30:
.LM104:
	tail	aos_close
.LVL31:
	.cfi_endproc
.LFE18:
	.size	aos_event_service_deinit, .-aos_event_service_deinit
	.section	.text.aos_post_event,"ax",@progbits
	.align	1
	.globl	aos_post_event
	.type	aos_post_event, @function
aos_post_event:
.LVL32:
.LFB19:
.LM105:
	.cfi_startproc
.LM106:
.LM107:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM108:
	lui	a5,%hi(local_event)
.LM109:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB22:
.LBB23:
.LM110:
	addi	a5,a5,%lo(local_event)
.LBE23:
.LBE22:
.LM111:
	sh	a1,6(sp)
.LBB27:
.LBB24:
.LM112:
	slli	a4,a0,17
.LM113:
	srli	a1,a0,15
.LVL33:
.LM114:
	lw	a0,4(a5)
.LVL34:
.LM115:
.LBE24:
.LBE27:
.LM116:
	sw	a2,8(sp)
.LM117:
.LVL35:
.LBB28:
.LBI22:
.LM118:
.LBB25:
.LM119:
.LM120:
.LM121:
	srli	a4,a4,17
.LM122:
	mv	a2,sp
.LVL36:
.LM123:
	addi	a1,a1,257
.LBE25:
.LBE28:
.LM124:
	sw	zero,0(sp)
	sw	zero,12(sp)
.LBB29:
.LBB26:
.LM125:
	sh	a4,4(sp)
.LM126:
.LM127:
.LM128:
.LM129:
	call	aos_ioctl
.LVL37:
.LM130:
.LBE26:
.LBE29:
.LM131:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	aos_post_event, .-aos_post_event
	.section	.text.aos_register_event_filter,"ax",@progbits
	.align	1
	.globl	aos_register_event_filter
	.type	aos_register_event_filter, @function
aos_register_event_filter:
.LVL38:
.LFB20:
.LM132:
	.cfi_startproc
.LM133:
.LM134:
	beq	a1,zero,.L40
.LM135:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
.LM136:
.LM137:
	li	a0,20
.LVL39:
.LM138:
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a2,12(sp)
	sw	a1,8(sp)
.LM139:
	call	aos_malloc
.LVL40:
.LM140:
	mv	a5,a0
.LVL41:
.LM141:
.LM142:
	li	a0,-12
.LVL42:
.LM143:
	beq	a5,zero,.L38
.LM144:
.LBB30:
.LBB31:
.LM145:
	lui	a4,%hi(g_local_event_list)
	addi	a4,a4,%lo(g_local_event_list)
	lw	a3,0(a4)
.LBE31:
.LBE30:
.LM146:
	lw	a1,8(sp)
.LM147:
	lw	a2,12(sp)
.LBB38:
.LBB36:
.LBB32:
.LBB33:
.LM148:
	sw	a3,0(a5)
.LBE33:
.LBE32:
.LBE36:
.LBE38:
.LM149:
	sw	a1,8(a5)
.LM150:
.LM151:
	sh	s0,16(a5)
.LM152:
.LM153:
	sw	a2,12(a5)
.LM154:
.LVL43:
.LBB39:
.LBI30:
.LM155:
.LBB37:
.LM156:
.LBB35:
.LBI32:
.LM157:
.LBB34:
.LM158:
.LM159:
	sw	a4,4(a5)
.LM160:
.LM161:
.LM162:
	sw	a5,4(a3)
.LM163:
.LM164:
	sw	a5,0(a4)
.LVL44:
.LM165:
.LBE34:
.LBE35:
.LBE37:
.LBE39:
.LM166:
.LM167:
	li	a0,0
.L38:
.LM168:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL45:
.LM169:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL46:
.LM170:
	jr	ra
.LVL47:
.L40:
.LM171:
	li	a0,-22
.LVL48:
.LM172:
	ret
	.cfi_endproc
.LFE20:
	.size	aos_register_event_filter, .-aos_register_event_filter
	.section	.text.aos_unregister_event_filter,"ax",@progbits
	.align	1
	.globl	aos_unregister_event_filter
	.type	aos_unregister_event_filter, @function
aos_unregister_event_filter:
.LVL49:
.LFB21:
.LM173:
	.cfi_startproc
.LM174:
.LM175:
.LM176:
	lui	a4,%hi(g_local_event_list)
	addi	a4,a4,%lo(g_local_event_list)
	lw	a5,4(a4)
.LVL50:
.L47:
.LM177:
	bne	a5,a4,.L50
.LM178:
	li	a0,-22
.LVL51:
.LM179:
	ret
.LVL52:
.L50:
.LM180:
.LM181:
	lhu	a3,16(a5)
	bne	a3,a0,.L48
.LM182:
.LM183:
	lw	a3,8(a5)
	bne	a3,a1,.L48
.LM184:
.LM185:
	lw	a3,12(a5)
	bne	a3,a2,.L48
.LM186:
.LVL53:
.LBB42:
.LBI42:
.LM187:
.LBB43:
.LM188:
.LBE43:
.LBE42:
.LM189:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB46:
.LBB44:
.LM190:
	lw	a3,0(a5)
.LVL54:
.LM191:
.LM192:
	lw	a4,4(a5)
.LVL55:
.LM193:
.LBE44:
.LBE46:
.LM194:
	mv	a0,a5
.LVL56:
.LBB47:
.LBB45:
.LM195:
	sw	a4,4(a3)
.LM196:
.LM197:
	sw	a3,0(a4)
.LVL57:
.LM198:
.LBE45:
.LBE47:
.LM199:
	call	aos_free
.LVL58:
.LM200:
.LM201:
	lw	ra,12(sp)
	.cfi_restore 1
.LM202:
	li	a0,0
.LM203:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL59:
.L48:
.LM204:
	lw	a5,4(a5)
.LVL60:
.LM205:
	j	.L47
	.cfi_endproc
.LFE21:
	.size	aos_unregister_event_filter, .-aos_unregister_event_filter
	.section	.text.aos_loop_schedule_urgent_call,"ax",@progbits
	.align	1
	.globl	aos_loop_schedule_urgent_call
	.type	aos_loop_schedule_urgent_call, @function
aos_loop_schedule_urgent_call:
.LVL61:
.LFB23:
.LM206:
	.cfi_startproc
.LM207:
.LM208:
	li	a3,1
	tail	_schedule_call
.LVL62:
.LM209:
	.cfi_endproc
.LFE23:
	.size	aos_loop_schedule_urgent_call, .-aos_loop_schedule_urgent_call
	.section	.text.aos_loop_schedule_call,"ax",@progbits
	.align	1
	.globl	aos_loop_schedule_call
	.type	aos_loop_schedule_call, @function
aos_loop_schedule_call:
.LVL63:
.LFB24:
.LM210:
	.cfi_startproc
.LM211:
.LM212:
	li	a3,0
	tail	_schedule_call
.LVL64:
.LM213:
	.cfi_endproc
.LFE24:
	.size	aos_loop_schedule_call, .-aos_loop_schedule_call
	.section	.text.aos_schedule_call,"ax",@progbits
	.align	1
	.globl	aos_schedule_call
	.type	aos_schedule_call, @function
aos_schedule_call:
.LVL65:
.LFB25:
.LM214:
	.cfi_startproc
.LM215:
.LM216:
	mv	a2,a1
.LM217:
	li	a3,0
	mv	a1,a0
.LVL66:
.LM218:
	li	a0,0
.LVL67:
.LM219:
	tail	_schedule_call
.LVL68:
.LM220:
	.cfi_endproc
.LFE25:
	.size	aos_schedule_call, .-aos_schedule_call
	.section	.sdata.g_local_event_list,"aw"
	.align	2
	.type	g_local_event_list, @object
	.size	g_local_event_list, 8
g_local_event_list:
	.word	g_local_event_list
	.word	g_local_event_list
	.section	.sdata.local_event,"aw"
	.align	2
	.type	local_event, @object
	.size	local_event, 8
local_event:
	.zero	4
	.word	-1
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc00
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL50
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x74
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x39
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x22
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x19
	.4byte	.LASF35
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.byte	0x20
	.byte	0x15
	.4byte	0x11e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.4byte	0x11e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0xf7
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x2
	.byte	0x22
	.byte	0x3
	.4byte	0xf7
	.uleb128 0xf
	.byte	0x10
	.byte	0x8
	.byte	0x64
	.byte	0x9
	.4byte	0x17a
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x66
	.byte	0xe
	.4byte	0xdf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x68
	.byte	0xe
	.4byte	0xd3
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x6a
	.byte	0xe
	.4byte	0xd3
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x6c
	.byte	0x13
	.4byte	0xa1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x6e
	.byte	0x13
	.4byte	0xa1
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0x6f
	.byte	0x3
	.4byte	0x12f
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x8
	.byte	0x72
	.byte	0x10
	.4byte	0x192
	.uleb128 0x6
	.4byte	0x197
	.uleb128 0x14
	.4byte	0x1a7
	.uleb128 0x2
	.4byte	0x1a7
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0x6
	.4byte	0x17a
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x8
	.byte	0x74
	.byte	0x10
	.4byte	0x1b8
	.uleb128 0x6
	.4byte	0x1bd
	.uleb128 0x14
	.4byte	0x1c8
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x8
	.byte	0x76
	.byte	0x10
	.4byte	0x1d4
	.uleb128 0x6
	.4byte	0x1d9
	.uleb128 0x14
	.4byte	0x1e9
	.uleb128 0x2
	.4byte	0x4c
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0xce
	.byte	0xf
	.4byte	0xb4
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x9
	.byte	0x7
	.byte	0x8
	.4byte	0x228
	.uleb128 0x12
	.string	"fd"
	.byte	0x9
	.byte	0x8
	.byte	0x9
	.4byte	0x4c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9
	.byte	0xb
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa
	.byte	0xb
	.4byte	0x7b
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF39
	.uleb128 0xf
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.4byte	0x264
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xa
	.byte	0xb
	.byte	0x9
	.4byte	0x4c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xa
	.byte	0xc
	.byte	0xb
	.4byte	0xb4
	.byte	0x4
	.uleb128 0x12
	.string	"cb"
	.byte	0xa
	.byte	0xd
	.byte	0x15
	.4byte	0x1c8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xa
	.byte	0xe
	.byte	0x3
	.4byte	0x234
	.uleb128 0xf
	.byte	0x1c
	.byte	0xa
	.byte	0x10
	.byte	0x9
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x11
	.byte	0xd
	.4byte	0x123
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x12
	.byte	0x14
	.4byte	0x228
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xa
	.byte	0x13
	.byte	0x13
	.4byte	0x2e2
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xa
	.byte	0x14
	.byte	0x9
	.4byte	0x4c
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xa
	.byte	0x16
	.byte	0xe
	.4byte	0xd3
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xa
	.byte	0x17
	.byte	0xd
	.4byte	0xc7
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xa
	.byte	0x18
	.byte	0xa
	.4byte	0x22d
	.byte	0x17
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x19
	.byte	0xa
	.4byte	0x22d
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	0x264
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x1a
	.byte	0x3
	.4byte	0x270
	.uleb128 0xf
	.byte	0x14
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.4byte	0x330
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	0x123
	.byte	0
	.uleb128 0x12
	.string	"cb"
	.byte	0x1
	.byte	0x12
	.byte	0x12
	.4byte	0x186
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.4byte	0xb4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0xd3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.4byte	0x2f3
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x17
	.byte	0x8
	.4byte	0x35f
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0xb4
	.byte	0
	.uleb128 0x12
	.string	"fd"
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1a
	.byte	0x3
	.4byte	0x33c
	.uleb128 0x5
	.byte	0x3
	.4byte	local_event
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1e
	.byte	0x10
	.4byte	0x123
	.uleb128 0x5
	.byte	0x3
	.4byte	g_local_event_list
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.byte	0x24
	.byte	0x15
	.4byte	0x38d
	.uleb128 0x6
	.4byte	0x2e7
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xa
	.byte	0x1f
	.byte	0x5
	.4byte	0x4c
	.4byte	0x3a8
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0xb
	.2byte	0x1e1
	.byte	0xa
	.4byte	0x3bb
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0x25
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x1bf
	.byte	0xb
	.4byte	0xb4
	.4byte	0x3d2
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0xc
	.byte	0x60
	.byte	0x5
	.4byte	0x4c
	.4byte	0x3f2
	.uleb128 0x2
	.4byte	0x4c
	.uleb128 0x2
	.4byte	0x4c
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0xc
	.byte	0x3f
	.byte	0x5
	.4byte	0x4c
	.4byte	0x408
	.uleb128 0x2
	.4byte	0x4c
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x8
	.byte	0xab
	.4byte	0x423
	.uleb128 0x2
	.4byte	0x4c
	.uleb128 0x2
	.4byte	0x1c8
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xc
	.byte	0x4a
	.byte	0x9
	.4byte	0xeb
	.4byte	0x443
	.uleb128 0x2
	.4byte	0x4c
	.uleb128 0x2
	.4byte	0xb4
	.uleb128 0x2
	.4byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0xa
	.byte	0x1c
	.4byte	0x454
	.uleb128 0x2
	.4byte	0x4c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.byte	0xa2
	.byte	0x5
	.4byte	0x4c
	.4byte	0x474
	.uleb128 0x2
	.4byte	0x4c
	.uleb128 0x2
	.4byte	0x1c8
	.uleb128 0x2
	.4byte	0xb4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0xc
	.byte	0x36
	.byte	0x5
	.4byte	0x4c
	.4byte	0x48f
	.uleb128 0x2
	.4byte	0xc2
	.uleb128 0x2
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xc7
	.4byte	0x4c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fc
	.uleb128 0x7
	.string	"fun"
	.byte	0xc7
	.byte	0x22
	.4byte	0x1ac
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x7
	.string	"arg"
	.byte	0xc7
	.byte	0x2d
	.4byte	0xb4
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x13
	.4byte	.LVL68
	.4byte	0x611
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
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
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xc2
	.4byte	0x4c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x584
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0xc2
	.byte	0x28
	.4byte	0x584
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x7
	.string	"fun"
	.byte	0xc2
	.byte	0x39
	.4byte	0x1ac
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x7
	.string	"arg"
	.byte	0xc2
	.byte	0x44
	.4byte	0xb4
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x13
	.4byte	.LVL64
	.4byte	0x611
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
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1e9
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xbd
	.4byte	0x4c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x611
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0xbd
	.byte	0x2f
	.4byte	0x584
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x7
	.string	"fun"
	.byte	0xbd
	.byte	0x40
	.4byte	0x1ac
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x7
	.string	"arg"
	.byte	0xbd
	.byte	0x4b
	.4byte	0xb4
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x13
	.4byte	.LVL62
	.4byte	0x611
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
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.4byte	0x4c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0xa5
	.byte	0x27
	.4byte	0x584
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x7
	.string	"fun"
	.byte	0xa5
	.byte	0x38
	.4byte	0x1ac
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x7
	.string	"arg"
	.byte	0xa5
	.byte	0x43
	.4byte	0xb4
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0xa6
	.byte	0x20
	.4byte	0x22d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0xad
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"fd"
	.byte	0xb2
	.4byte	0x4c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x27
	.4byte	0xaf9
	.4byte	.LBI18
	.byte	0x17
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xba
	.byte	0xc
	.4byte	0x6ee
	.uleb128 0x9
	.4byte	0xb0a
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x9
	.4byte	0xb15
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xd
	.4byte	0xb21
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1b
	.4byte	0xb2d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x3d2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL12
	.4byte	0x392
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x8a
	.4byte	0x4c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ae
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x8a
	.byte	0x2a
	.4byte	0xd3
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x7
	.string	"cb"
	.byte	0x8a
	.byte	0x3d
	.4byte	0x186
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x8a
	.byte	0x47
	.4byte	0xb4
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x8c
	.4byte	0x7ae
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x16
	.4byte	0xb78
	.4byte	.LBI42
	.byte	0xe
	.4byte	.LLRL38
	.byte	0x9a
	.byte	0x9
	.4byte	0x7a4
	.uleb128 0x9
	.4byte	0xb85
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0xd
	.4byte	0xb91
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0xd
	.4byte	0xb9d
	.4byte	.LLST41
	.4byte	.LVUS41
	.byte	0
	.uleb128 0x28
	.4byte	.LVL58
	.4byte	0x3a8
	.byte	0
	.uleb128 0x6
	.4byte	0x330
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x76
	.4byte	0x4c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88d
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x76
	.byte	0x28
	.4byte	0xd3
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x7
	.string	"cb"
	.byte	0x76
	.byte	0x3b
	.4byte	0x186
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x76
	.byte	0x45
	.4byte	0xb4
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x7c
	.4byte	0x7ae
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x16
	.4byte	0xbaf
	.4byte	.LBI30
	.byte	0x17
	.4byte	.LLRL27
	.byte	0x85
	.byte	0x5
	.4byte	0x87d
	.uleb128 0x9
	.4byte	0xbbc
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x9
	.4byte	0xbc8
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x1d
	.4byte	0xbd5
	.4byte	.LBI32
	.byte	0x19
	.4byte	.LLRL30
	.byte	0x2
	.byte	0x3f
	.byte	0x5
	.uleb128 0x9
	.4byte	0xbde
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x9
	.4byte	0xbea
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x9
	.4byte	0xbf6
	.4byte	.LLST33
	.4byte	.LVUS33
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL40
	.4byte	0x3bb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6b
	.4byte	0x4c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93f
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6b
	.byte	0x1d
	.4byte	0xd3
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6b
	.byte	0x2c
	.4byte	0xd3
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6b
	.byte	0x40
	.4byte	0xa1
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x6d
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	0xaf9
	.4byte	.LBI22
	.byte	0xd
	.4byte	.LLRL21
	.byte	0x1
	.byte	0x73
	.byte	0xc
	.uleb128 0x29
	.4byte	0xb0a
	.uleb128 0x9
	.4byte	0xb15
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2a
	.4byte	0xb21
	.uleb128 0x1b
	.4byte	0xb2d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.4byte	.LVL37
	.4byte	0x3d2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x23
	.uleb128 0x101
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99c
	.uleb128 0x7
	.string	"fd"
	.byte	0x65
	.byte	0x23
	.4byte	0x4c
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x408
	.4byte	0x98a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_read_cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0x3f2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 -20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x54
	.4byte	0x4c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa14
	.uleb128 0x15
	.string	"fd"
	.byte	0x59
	.4byte	0x4c
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x474
	.4byte	0x9e1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL25
	.4byte	0x454
	.4byte	0xa03
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_read_cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x443
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf9
	.uleb128 0x7
	.string	"fd"
	.byte	0x4b
	.byte	0x18
	.4byte	0x4c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x4b
	.byte	0x32
	.4byte	0xb4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x4d
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"ret"
	.byte	0x4e
	.4byte	0x4c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x16
	.4byte	0xb39
	.4byte	.LBI11
	.byte	0xa
	.4byte	.LLRL3
	.byte	0x50
	.byte	0x9
	.4byte	0xad6
	.uleb128 0x9
	.4byte	0xb46
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xd
	.4byte	0xb52
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2d
	.4byte	0xb5e
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xac9
	.uleb128 0xd
	.4byte	0xb5f
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xd
	.4byte	0xb6b
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x423
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
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3c
	.byte	0xc
	.4byte	0x4c
	.byte	0x1
	.4byte	0xb39
	.uleb128 0x30
	.string	"fd"
	.byte	0x1
	.byte	0x3c
	.byte	0x20
	.4byte	0x4c
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x1
	.byte	0x3c
	.byte	0x33
	.4byte	0x1a7
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x3e
	.byte	0xa
	.4byte	0x22d
	.uleb128 0x1e
	.string	"cmd"
	.byte	0x40
	.byte	0x9
	.4byte	0x4c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.byte	0x1
	.4byte	0xb78
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x1
	.byte	0x28
	.byte	0x23
	.4byte	0x1a7
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.byte	0x32
	.byte	0x18
	.4byte	0x7ae
	.uleb128 0x31
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2b
	.byte	0x14
	.4byte	0x1ac
	.uleb128 0x1e
	.string	"arg"
	.byte	0x2c
	.byte	0xf
	.4byte	0xb4
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x2
	.byte	0x42
	.byte	0x14
	.byte	0x3
	.4byte	0xbaa
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.byte	0x42
	.byte	0x27
	.4byte	0xbaa
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.4byte	0xbaa
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x2
	.byte	0x45
	.byte	0xe
	.4byte	0xbaa
	.byte	0
	.uleb128 0x6
	.4byte	0x123
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.byte	0x3
	.4byte	0xbd5
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.byte	0x3d
	.byte	0x2c
	.4byte	0xbaa
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x2
	.byte	0x3d
	.byte	0x3b
	.4byte	0xbaa
	.byte	0
	.uleb128 0x32
	.4byte	.LASF92
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.byte	0x24
	.byte	0x29
	.4byte	0xbaa
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x2
	.byte	0x24
	.byte	0x38
	.4byte	0xbaa
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x2
	.byte	0x24
	.byte	0x47
	.4byte	0xbaa
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x7a
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
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
.LVUS48:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST48:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL67-.LVL65
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL67-.LVL65
	.uleb128 .LVL68-1-.LVL65
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL68-1-.LVL65
	.uleb128 .LFE25-.LVL65
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
.LVUS49:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST49:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL66-.LVL65
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL66-.LVL65
	.uleb128 .LVL68-1-.LVL65
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL68-1-.LVL65
	.uleb128 .LFE25-.LVL65
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
.LVUS45:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST45:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-1-.LVL63
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL64-1-.LVL63
	.uleb128 .LFE24-.LVL63
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
.LVUS46:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST46:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-1-.LVL63
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL64-1-.LVL63
	.uleb128 .LFE24-.LVL63
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
.LVUS47:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST47:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-1-.LVL63
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL64-1-.LVL63
	.uleb128 .LFE24-.LVL63
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
.LVUS42:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST42:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-1-.LVL61
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL62-1-.LVL61
	.uleb128 .LFE23-.LVL61
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
.LVUS43:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST43:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-1-.LVL61
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL62-1-.LVL61
	.uleb128 .LFE23-.LVL61
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
.LVUS44:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST44:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-1-.LVL61
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL62-1-.LVL61
	.uleb128 .LFE23-.LVL61
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
.LVUS8:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL21-.LVL11
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
	.uleb128 .LVL21-.LVL11
	.uleb128 .LVL22-.LVL11
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL22-.LVL11
	.uleb128 .LFE22-.LVL11
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
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL21-.LVL11
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
	.uleb128 .LVL21-.LVL11
	.uleb128 .LFE22-.LVL11
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL21-.LVL11
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
	.byte	0x4
	.uleb128 .LVL21-.LVL11
	.uleb128 .LFE22-.LVL11
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL20-.LVL11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x4
	.uleb128 .LVL20-.LVL11
	.uleb128 .LVL21-.LVL11
	.uleb128 0x2
	.byte	0x72
	.sleb128 -36
	.byte	0x4
	.uleb128 .LVL21-.LVL11
	.uleb128 .LFE22-.LVL11
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS12:
	.uleb128 0xe
	.uleb128 0x25
.LLST12:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL19-1-.LVL12
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS13:
	.uleb128 0x17
	.uleb128 0x25
.LLST13:
	.byte	0x8
	.4byte	.LVL14
	.uleb128 .LVL19-1-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS14:
	.uleb128 0x17
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x25
	.uleb128 0x25
	.uleb128 0x25
.LLST14:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL16-.LVL14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL14
	.uleb128 .LVL19-1-.LVL14
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL19-1-.LVL14
	.uleb128 .LVL19-.LVL14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 0x1a
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x21
.LLST15:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL18-.LVL15
	.uleb128 0x9
	.byte	0x91
	.sleb128 -28
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST34:
	.byte	0x6
	.4byte	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL51-.LVL49
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL51-.LVL49
	.uleb128 .LVL52-.LVL49
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.LVL49
	.uleb128 .LVL56-.LVL49
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL56-.LVL49
	.uleb128 .LVL59-.LVL49
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL49
	.uleb128 .LFE21-.LVL49
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS35:
	.uleb128 0
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL58-1-.LVL49
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL58-1-.LVL49
	.uleb128 .LVL59-.LVL49
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
	.uleb128 .LVL59-.LVL49
	.uleb128 .LFE21-.LVL49
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS36:
	.uleb128 0
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL58-1-.LVL49
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL58-1-.LVL49
	.uleb128 .LVL59-.LVL49
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
	.byte	0x4
	.uleb128 .LVL59-.LVL49
	.uleb128 .LFE21-.LVL49
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS37:
	.uleb128 0x2
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x20
.LLST37:
	.byte	0x6
	.4byte	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL50-.LVL49
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL49
	.uleb128 .LVL58-1-.LVL49
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL59-.LVL49
	.uleb128 .LVL60-.LVL49
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS39:
	.uleb128 0xe
	.uleb128 0x19
.LLST39:
	.byte	0x8
	.4byte	.LVL53
	.uleb128 .LVL57-.LVL53
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS40:
	.uleb128 0x12
	.uleb128 0x19
.LLST40:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL57-.LVL54
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS41:
	.uleb128 0x14
	.uleb128 0x19
.LLST41:
	.byte	0x8
	.4byte	.LVL55
	.uleb128 .LVL57-.LVL55
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x25
	.uleb128 0x25
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL39-.LVL38
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL39-.LVL38
	.uleb128 .LVL45-.LVL38
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL45-.LVL38
	.uleb128 .LVL47-.LVL38
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL38
	.uleb128 .LVL48-.LVL38
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL48-.LVL38
	.uleb128 .LFE20-.LVL38
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0
.LLST24:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL40-1-.LVL38
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL40-1-.LVL38
	.uleb128 .LVL46-.LVL38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL46-.LVL38
	.uleb128 .LVL47-.LVL38
	.uleb128 0x2
	.byte	0x72
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL47-.LVL38
	.uleb128 .LFE20-.LVL38
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0
.LLST25:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL40-1-.LVL38
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL40-1-.LVL38
	.uleb128 .LVL46-.LVL38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL46-.LVL38
	.uleb128 .LVL47-.LVL38
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL47-.LVL38
	.uleb128 .LFE20-.LVL38
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS26:
	.uleb128 0x9
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x27
.LLST26:
	.byte	0x6
	.4byte	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL42-.LVL41
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL42-.LVL41
	.uleb128 .LVL47-.LVL41
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS28:
	.uleb128 0x17
	.uleb128 0x21
.LLST28:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS29:
	.uleb128 0x17
	.uleb128 0x21
.LLST29:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x6
	.byte	0x3
	.4byte	g_local_event_list
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 0x19
	.uleb128 0x21
.LLST31:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS32:
	.uleb128 0x19
	.uleb128 0x21
.LLST32:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS33:
	.uleb128 0x19
	.uleb128 0x21
.LLST33:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x6
	.byte	0x3
	.4byte	g_local_event_list
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL34-.LVL32
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL34-.LVL32
	.uleb128 .LFE19-.LVL32
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL37-1-.LVL32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x4
	.uleb128 .LVL37-1-.LVL32
	.uleb128 .LFE19-.LVL32
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL36-.LVL32
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL36-.LVL32
	.uleb128 .LVL37-1-.LVL32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL37-1-.LVL32
	.uleb128 .LFE19-.LVL32
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
.LVUS22:
	.uleb128 0xd
	.uleb128 0x19
.LLST22:
	.byte	0x8
	.4byte	.LVL35
	.uleb128 .LVL37-.LVL35
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-1-.LVL28
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL29-1-.LVL28
	.uleb128 .LVL30-.LVL28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL30-.LVL28
	.uleb128 .LFE18-.LVL28
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0
.LVUS16:
	.uleb128 0xa
	.uleb128 0x12
.LLST16:
	.byte	0x8
	.4byte	.LVL24
	.uleb128 .LVL27-.LVL24
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE16-.LVL0
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
	.uleb128 0x5
	.uleb128 0x5
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
	.uleb128 .LFE16-.LVL0
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
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x14
	.uleb128 0x17
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL8-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS4:
	.uleb128 0xa
	.uleb128 0x12
	.uleb128 0x14
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LFE16-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS5:
	.uleb128 0x15
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x1f
.LLST5:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS6:
	.uleb128 0xe
	.uleb128 0x11
.LLST6:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL6-1-.LVL4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
.LVUS7:
	.uleb128 0xf
	.uleb128 0x11
.LLST7:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL6-1-.LVL4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
.LLRL3:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB15-.LBB11
	.uleb128 .LBE15-.LBB11
	.byte	0
.LLRL21:
	.byte	0x5
	.4byte	.LBB22
	.byte	0x4
	.uleb128 .LBB22-.LBB22
	.uleb128 .LBE22-.LBB22
	.byte	0x4
	.uleb128 .LBB27-.LBB22
	.uleb128 .LBE27-.LBB22
	.byte	0x4
	.uleb128 .LBB28-.LBB22
	.uleb128 .LBE28-.LBB22
	.byte	0x4
	.uleb128 .LBB29-.LBB22
	.uleb128 .LBE29-.LBB22
	.byte	0
.LLRL27:
	.byte	0x5
	.4byte	.LBB30
	.byte	0x4
	.uleb128 .LBB30-.LBB30
	.uleb128 .LBE30-.LBB30
	.byte	0x4
	.uleb128 .LBB38-.LBB30
	.uleb128 .LBE38-.LBB30
	.byte	0x4
	.uleb128 .LBB39-.LBB30
	.uleb128 .LBE39-.LBB30
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB32
	.byte	0x4
	.uleb128 .LBB32-.LBB32
	.uleb128 .LBE32-.LBB32
	.byte	0x4
	.uleb128 .LBB35-.LBB32
	.uleb128 .LBE35-.LBB32
	.byte	0
.LLRL38:
	.byte	0x5
	.4byte	.LBB42
	.byte	0x4
	.uleb128 .LBB42-.LBB42
	.uleb128 .LBE42-.LBB42
	.byte	0x4
	.uleb128 .LBB46-.LBB42
	.uleb128 .LBE46-.LBB42
	.byte	0x4
	.uleb128 .LBB47-.LBB42
	.uleb128 .LBE47-.LBB42
	.byte	0
.LLRL50:
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
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
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.LASF99
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xd
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF100
	.byte	0x4
	.4byte	.LASF101
	.byte	0x2
	.4byte	.LASF102
	.byte	0x5
	.4byte	.LASF103
	.byte	0x6
	.4byte	.LASF104
	.byte	0x7
	.4byte	.LASF105
	.byte	0x7
	.4byte	.LASF106
	.byte	0x7
	.4byte	.LASF107
	.byte	0x2
	.4byte	.LASF108
	.byte	0x3
	.4byte	.LASF107
	.byte	0x3
	.4byte	.LASF109
	.byte	0x2
	.4byte	.LASF110
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x62
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x19
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x19
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x3
	.sleb128 -40
	.byte	0x1
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x3a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x99
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0xbe
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xbe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE16
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0xbd
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1d
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1d
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x3
	.sleb128 -126
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0xe
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x13
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x20
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0xe
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x8a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x28
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE22
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x6b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x1b
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x1b
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x1a
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x14
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE17
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x7c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x18
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
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE18
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM105
	.byte	0x82
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x1e
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x10
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x3c
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0x3
	.sleb128 -46
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x1c
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x3c
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x3
	.sleb128 -55
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x20
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x3c
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x3
	.sleb128 -46
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0x43
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE19
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0x8d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM139-.LM138
	.byte	0x1c
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM140-.LM139
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM141-.LM140
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM142-.LM141
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM143-.LM142
	.byte	0x16
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM144-.LM143
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM145-.LM144
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3
	.sleb128 -66
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM146-.LM145
	.byte	0x4
	.uleb128 0x1
	.byte	0x59
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM147-.LM146
	.byte	0x19
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM148-.LM147
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -92
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM149-.LM148
	.byte	0x4
	.uleb128 0x1
	.byte	0x71
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM150-.LM149
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM151-.LM150
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM152-.LM151
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM153-.LM152
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM154-.LM153
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM155-.LM154
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -72
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM156-.LM155
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM157-.LM156
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM158-.LM157
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM159-.LM158
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM160-.LM159
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM161-.LM160
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM162-.LM161
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM163-.LM162
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM164-.LM163
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM165-.LM164
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM166-.LM165
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x74
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM167-.LM166
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM168-.LM167
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM169-.LM168
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM170-.LM169
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM171-.LM170
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM172-.LM171
	.byte	0x26
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE20
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM173
	.byte	0xa1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM174-.LM173
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM175-.LM174
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM176-.LM175
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM177-.LM176
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x99
	.byte	0x9
	.2byte	.LM178-.LM177
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x29
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM179-.LM178
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM180-.LM179
	.byte	0x6
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM181-.LM180
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM182-.LM181
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM183-.LM182
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM184-.LM183
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM185-.LM184
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM186-.LM185
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM187-.LM186
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -88
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM188-.LM187
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM189-.LM188
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x5e
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM190-.LM189
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -71
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM191-.LM190
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM192-.LM191
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM193-.LM192
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM194-.LM193
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x6b
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM195-.LM194
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -84
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM196-.LM195
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM197-.LM196
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM198-.LM197
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM199-.LM198
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x6a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM200-.LM199
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM201-.LM200
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM202-.LM201
	.byte	0x13
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM203-.LM202
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM204-.LM203
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0xbe
	.byte	0x9
	.2byte	.LM205-.LM204
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xbe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE21
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM206
	.byte	0xd4
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM207-.LM206
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM208-.LM207
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM209-.LM208
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE23
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM210
	.byte	0xd9
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM211-.LM210
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM212-.LM211
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM213-.LM212
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE24
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM214
	.byte	0xde
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM215-.LM214
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM216-.LM215
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM217-.LM216
	.byte	0x18
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM218-.LM217
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM219-.LM218
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM220-.LM219
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE25
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"priv"
.LASF61:
	.string	"aos_ioctl"
.LASF60:
	.string	"aos_malloc"
.LASF58:
	.string	"g_local_event_list"
.LASF78:
	.string	"aos_register_event_filter"
.LASF88:
	.string	"_schedule_call"
.LASF75:
	.string	"g_main_ctx"
.LASF50:
	.string	"terminate"
.LASF72:
	.string	"aos_loop_schedule_urgent_call"
.LASF11:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF47:
	.string	"max_sock"
.LASF71:
	.string	"loop"
.LASF6:
	.string	"long double"
.LASF48:
	.string	"reader_count"
.LASF74:
	.string	"event"
.LASF12:
	.string	"__uint16_t"
.LASF82:
	.string	"handler"
.LASF25:
	.string	"time"
.LASF67:
	.string	"aos_poll_read_fd"
.LASF28:
	.string	"value"
.LASF70:
	.string	"aos_loop_schedule_call"
.LASF33:
	.string	"aos_poll_call_t"
.LASF18:
	.string	"uint8_t"
.LASF90:
	.string	"event_read_cb"
.LASF51:
	.string	"yloop_ctx_t"
.LASF31:
	.string	"aos_event_cb"
.LASF45:
	.string	"readers"
.LASF92:
	.string	"__dlist_add"
.LASF42:
	.string	"yloop_sock_t"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"timeouts"
.LASF85:
	.string	"dlist_add_tail"
.LASF17:
	.string	"char"
.LASF13:
	.string	"long int"
.LASF80:
	.string	"aos_event_service_init"
.LASF32:
	.string	"aos_call_t"
.LASF65:
	.string	"aos_read"
.LASF38:
	.string	"revents"
.LASF52:
	.string	"node"
.LASF83:
	.string	"handle_events"
.LASF86:
	.string	"queue"
.LASF41:
	.string	"private_data"
.LASF91:
	.string	"input_add_event"
.LASF62:
	.string	"aos_close"
.LASF68:
	.string	"aos_open"
.LASF10:
	.string	"unsigned char"
.LASF56:
	.string	"handle"
.LASF24:
	.string	"dlist_t"
.LASF66:
	.string	"aos_loop_set_eventfd"
.LASF7:
	.string	"signed char"
.LASF2:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint32_t"
.LASF35:
	.string	"dlist_s"
.LASF3:
	.string	"unsigned int"
.LASF19:
	.string	"uint16_t"
.LASF49:
	.string	"pending_terminate"
.LASF27:
	.string	"code"
.LASF64:
	.string	"aos_cancel_poll_read_fd"
.LASF34:
	.string	"aos_loop_t"
.LASF36:
	.string	"pollfd"
.LASF4:
	.string	"short unsigned int"
.LASF81:
	.string	"param"
.LASF46:
	.string	"eventfd"
.LASF55:
	.string	"event_list_node_t"
.LASF26:
	.string	"type"
.LASF69:
	.string	"aos_schedule_call"
.LASF39:
	.string	"_Bool"
.LASF77:
	.string	"event_node"
.LASF30:
	.string	"input_event_t"
.LASF44:
	.string	"pollfds"
.LASF84:
	.string	"dlist_del"
.LASF59:
	.string	"aos_loop_get_eventfd"
.LASF79:
	.string	"aos_post_event"
.LASF15:
	.string	"long unsigned int"
.LASF57:
	.string	"local_event"
.LASF14:
	.string	"__uint32_t"
.LASF73:
	.string	"urgent"
.LASF89:
	.string	"aos_event_service_deinit"
.LASF63:
	.string	"aos_free"
.LASF21:
	.string	"ssize_t"
.LASF37:
	.string	"events"
.LASF87:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF40:
	.string	"sock"
.LASF76:
	.string	"aos_unregister_event_filter"
.LASF54:
	.string	"type_filter"
.LASF22:
	.string	"prev"
.LASF29:
	.string	"extra"
.LASF23:
	.string	"next"
.LASF9:
	.string	"__uint8_t"
.LASF16:
	.string	"_ssize_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF101:
	.string	"list.h"
.LASF105:
	.string	"_stdint.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/yloop"
.LASF93:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include"
.LASF94:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos"
.LASF96:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/local_event.c"
.LASF95:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include"
.LASF110:
	.string	"vfs.h"
.LASF99:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys"
.LASF100:
	.string	"local_event.c"
.LASF103:
	.string	"_default_types.h"
.LASF108:
	.string	"yloop_types.h"
.LASF104:
	.string	"_types.h"
.LASF109:
	.string	"kernel.h"
.LASF98:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine"
.LASF97:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF107:
	.string	"yloop.h"
.LASF106:
	.string	"types.h"
.LASF102:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
