	.file	"memp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/memp.c"
	.globl	memp_memory_RAW_PCB_base
	.section	.wifi_ram,"aw"
	.align	2
	.type	memp_memory_RAW_PCB_base, @object
	.size	memp_memory_RAW_PCB_base, 115
memp_memory_RAW_PCB_base:
	.zero	115
	.section	.bss.memp_stats_RAW_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_RAW_PCB, @object
	.size	memp_stats_RAW_PCB, 10
memp_stats_RAW_PCB:
	.zero	10
	.section	.sbss.memp_tab_RAW_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_RAW_PCB, @object
	.size	memp_tab_RAW_PCB, 4
memp_tab_RAW_PCB:
	.zero	4
	.globl	memp_RAW_PCB
	.section	.rodata.memp_RAW_PCB,"a"
	.align	2
	.type	memp_RAW_PCB, @object
	.size	memp_RAW_PCB, 16
memp_RAW_PCB:
	.word	memp_stats_RAW_PCB
	.half	28
	.half	4
	.word	memp_memory_RAW_PCB_base
	.word	memp_tab_RAW_PCB
	.globl	memp_memory_UDP_PCB_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_UDP_PCB_base, @object
	.size	memp_memory_UDP_PCB_base, 243
memp_memory_UDP_PCB_base:
	.zero	243
	.section	.bss.memp_stats_UDP_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_UDP_PCB, @object
	.size	memp_stats_UDP_PCB, 10
memp_stats_UDP_PCB:
	.zero	10
	.section	.sbss.memp_tab_UDP_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_UDP_PCB, @object
	.size	memp_tab_UDP_PCB, 4
memp_tab_UDP_PCB:
	.zero	4
	.globl	memp_UDP_PCB
	.section	.rodata.memp_UDP_PCB,"a"
	.align	2
	.type	memp_UDP_PCB, @object
	.size	memp_UDP_PCB, 16
memp_UDP_PCB:
	.word	memp_stats_UDP_PCB
	.half	40
	.half	6
	.word	memp_memory_UDP_PCB_base
	.word	memp_tab_UDP_PCB
	.globl	memp_memory_TCP_PCB_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_TCP_PCB_base, @object
	.size	memp_memory_TCP_PCB_base, 823
memp_memory_TCP_PCB_base:
	.zero	823
	.section	.bss.memp_stats_TCP_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_TCP_PCB, @object
	.size	memp_stats_TCP_PCB, 10
memp_stats_TCP_PCB:
	.zero	10
	.section	.sbss.memp_tab_TCP_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_TCP_PCB, @object
	.size	memp_tab_TCP_PCB, 4
memp_tab_TCP_PCB:
	.zero	4
	.globl	memp_TCP_PCB
	.section	.rodata.memp_TCP_PCB,"a"
	.align	2
	.type	memp_TCP_PCB, @object
	.size	memp_TCP_PCB, 16
memp_TCP_PCB:
	.word	memp_stats_TCP_PCB
	.half	164
	.half	5
	.word	memp_memory_TCP_PCB_base
	.word	memp_tab_TCP_PCB
	.globl	memp_memory_TCP_PCB_LISTEN_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_TCP_PCB_LISTEN_base, @object
	.size	memp_memory_TCP_PCB_LISTEN_base, 143
memp_memory_TCP_PCB_LISTEN_base:
	.zero	143
	.section	.bss.memp_stats_TCP_PCB_LISTEN,"aw",@nobits
	.align	2
	.type	memp_stats_TCP_PCB_LISTEN, @object
	.size	memp_stats_TCP_PCB_LISTEN, 10
memp_stats_TCP_PCB_LISTEN:
	.zero	10
	.section	.sbss.memp_tab_TCP_PCB_LISTEN,"aw",@nobits
	.align	2
	.type	memp_tab_TCP_PCB_LISTEN, @object
	.size	memp_tab_TCP_PCB_LISTEN, 4
memp_tab_TCP_PCB_LISTEN:
	.zero	4
	.globl	memp_TCP_PCB_LISTEN
	.section	.rodata.memp_TCP_PCB_LISTEN,"a"
	.align	2
	.type	memp_TCP_PCB_LISTEN, @object
	.size	memp_TCP_PCB_LISTEN, 16
memp_TCP_PCB_LISTEN:
	.word	memp_stats_TCP_PCB_LISTEN
	.half	28
	.half	5
	.word	memp_memory_TCP_PCB_LISTEN_base
	.word	memp_tab_TCP_PCB_LISTEN
	.globl	memp_memory_TCP_SEG_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_TCP_SEG_base, @object
	.size	memp_memory_TCP_SEG_base, 323
memp_memory_TCP_SEG_base:
	.zero	323
	.section	.bss.memp_stats_TCP_SEG,"aw",@nobits
	.align	2
	.type	memp_stats_TCP_SEG, @object
	.size	memp_stats_TCP_SEG, 10
memp_stats_TCP_SEG:
	.zero	10
	.section	.sbss.memp_tab_TCP_SEG,"aw",@nobits
	.align	2
	.type	memp_tab_TCP_SEG, @object
	.size	memp_tab_TCP_SEG, 4
memp_tab_TCP_SEG:
	.zero	4
	.globl	memp_TCP_SEG
	.section	.rodata.memp_TCP_SEG,"a"
	.align	2
	.type	memp_TCP_SEG, @object
	.size	memp_TCP_SEG, 16
memp_TCP_SEG:
	.word	memp_stats_TCP_SEG
	.half	20
	.half	16
	.word	memp_memory_TCP_SEG_base
	.word	memp_tab_TCP_SEG
	.globl	memp_memory_ALTCP_PCB_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_ALTCP_PCB_base, @object
	.size	memp_memory_ALTCP_PCB_base, 223
memp_memory_ALTCP_PCB_base:
	.zero	223
	.section	.bss.memp_stats_ALTCP_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_ALTCP_PCB, @object
	.size	memp_stats_ALTCP_PCB, 10
memp_stats_ALTCP_PCB:
	.zero	10
	.section	.sbss.memp_tab_ALTCP_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_ALTCP_PCB, @object
	.size	memp_tab_ALTCP_PCB, 4
memp_tab_ALTCP_PCB:
	.zero	4
	.globl	memp_ALTCP_PCB
	.section	.rodata.memp_ALTCP_PCB,"a"
	.align	2
	.type	memp_ALTCP_PCB, @object
	.size	memp_ALTCP_PCB, 16
memp_ALTCP_PCB:
	.word	memp_stats_ALTCP_PCB
	.half	44
	.half	5
	.word	memp_memory_ALTCP_PCB_base
	.word	memp_tab_ALTCP_PCB
	.globl	memp_memory_NETBUF_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_NETBUF_base, @object
	.size	memp_memory_NETBUF_base, 43
memp_memory_NETBUF_base:
	.zero	43
	.section	.bss.memp_stats_NETBUF,"aw",@nobits
	.align	2
	.type	memp_stats_NETBUF, @object
	.size	memp_stats_NETBUF, 10
memp_stats_NETBUF:
	.zero	10
	.section	.sbss.memp_tab_NETBUF,"aw",@nobits
	.align	2
	.type	memp_tab_NETBUF, @object
	.size	memp_tab_NETBUF, 4
memp_tab_NETBUF:
	.zero	4
	.globl	memp_NETBUF
	.section	.rodata.memp_NETBUF,"a"
	.align	2
	.type	memp_NETBUF, @object
	.size	memp_NETBUF, 16
memp_NETBUF:
	.word	memp_stats_NETBUF
	.half	20
	.half	2
	.word	memp_memory_NETBUF_base
	.word	memp_tab_NETBUF
	.globl	memp_memory_NETCONN_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_NETCONN_base, @object
	.size	memp_memory_NETCONN_base, 771
memp_memory_NETCONN_base:
	.zero	771
	.section	.bss.memp_stats_NETCONN,"aw",@nobits
	.align	2
	.type	memp_stats_NETCONN, @object
	.size	memp_stats_NETCONN, 10
memp_stats_NETCONN:
	.zero	10
	.section	.sbss.memp_tab_NETCONN,"aw",@nobits
	.align	2
	.type	memp_tab_NETCONN, @object
	.size	memp_tab_NETCONN, 4
memp_tab_NETCONN:
	.zero	4
	.globl	memp_NETCONN
	.section	.rodata.memp_NETCONN,"a"
	.align	2
	.type	memp_NETCONN, @object
	.size	memp_NETCONN, 16
memp_NETCONN:
	.word	memp_stats_NETCONN
	.half	48
	.half	16
	.word	memp_memory_NETCONN_base
	.word	memp_tab_NETCONN
	.globl	memp_memory_TCPIP_MSG_API_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_TCPIP_MSG_API_base, @object
	.size	memp_memory_TCPIP_MSG_API_base, 131
memp_memory_TCPIP_MSG_API_base:
	.zero	131
	.section	.bss.memp_stats_TCPIP_MSG_API,"aw",@nobits
	.align	2
	.type	memp_stats_TCPIP_MSG_API, @object
	.size	memp_stats_TCPIP_MSG_API, 10
memp_stats_TCPIP_MSG_API:
	.zero	10
	.section	.sbss.memp_tab_TCPIP_MSG_API,"aw",@nobits
	.align	2
	.type	memp_tab_TCPIP_MSG_API, @object
	.size	memp_tab_TCPIP_MSG_API, 4
memp_tab_TCPIP_MSG_API:
	.zero	4
	.globl	memp_TCPIP_MSG_API
	.section	.rodata.memp_TCPIP_MSG_API,"a"
	.align	2
	.type	memp_TCPIP_MSG_API, @object
	.size	memp_TCPIP_MSG_API, 16
memp_TCPIP_MSG_API:
	.word	memp_stats_TCPIP_MSG_API
	.half	16
	.half	8
	.word	memp_memory_TCPIP_MSG_API_base
	.word	memp_tab_TCPIP_MSG_API
	.globl	memp_memory_TCPIP_MSG_INPKT_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_TCPIP_MSG_INPKT_base, @object
	.size	memp_memory_TCPIP_MSG_INPKT_base, 131
memp_memory_TCPIP_MSG_INPKT_base:
	.zero	131
	.section	.bss.memp_stats_TCPIP_MSG_INPKT,"aw",@nobits
	.align	2
	.type	memp_stats_TCPIP_MSG_INPKT, @object
	.size	memp_stats_TCPIP_MSG_INPKT, 10
memp_stats_TCPIP_MSG_INPKT:
	.zero	10
	.section	.sbss.memp_tab_TCPIP_MSG_INPKT,"aw",@nobits
	.align	2
	.type	memp_tab_TCPIP_MSG_INPKT, @object
	.size	memp_tab_TCPIP_MSG_INPKT, 4
memp_tab_TCPIP_MSG_INPKT:
	.zero	4
	.globl	memp_TCPIP_MSG_INPKT
	.section	.rodata.memp_TCPIP_MSG_INPKT,"a"
	.align	2
	.type	memp_TCPIP_MSG_INPKT, @object
	.size	memp_TCPIP_MSG_INPKT, 16
memp_TCPIP_MSG_INPKT:
	.word	memp_stats_TCPIP_MSG_INPKT
	.half	16
	.half	8
	.word	memp_memory_TCPIP_MSG_INPKT_base
	.word	memp_tab_TCPIP_MSG_INPKT
	.globl	memp_memory_IGMP_GROUP_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_IGMP_GROUP_base, @object
	.size	memp_memory_IGMP_GROUP_base, 131
memp_memory_IGMP_GROUP_base:
	.zero	131
	.section	.bss.memp_stats_IGMP_GROUP,"aw",@nobits
	.align	2
	.type	memp_stats_IGMP_GROUP, @object
	.size	memp_stats_IGMP_GROUP, 10
memp_stats_IGMP_GROUP:
	.zero	10
	.section	.sbss.memp_tab_IGMP_GROUP,"aw",@nobits
	.align	2
	.type	memp_tab_IGMP_GROUP, @object
	.size	memp_tab_IGMP_GROUP, 4
memp_tab_IGMP_GROUP:
	.zero	4
	.globl	memp_IGMP_GROUP
	.section	.rodata.memp_IGMP_GROUP,"a"
	.align	2
	.type	memp_IGMP_GROUP, @object
	.size	memp_IGMP_GROUP, 16
memp_IGMP_GROUP:
	.word	memp_stats_IGMP_GROUP
	.half	16
	.half	8
	.word	memp_memory_IGMP_GROUP_base
	.word	memp_tab_IGMP_GROUP
	.globl	memp_memory_SYS_TIMEOUT_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_SYS_TIMEOUT_base, @object
	.size	memp_memory_SYS_TIMEOUT_base, 291
memp_memory_SYS_TIMEOUT_base:
	.zero	291
	.section	.bss.memp_stats_SYS_TIMEOUT,"aw",@nobits
	.align	2
	.type	memp_stats_SYS_TIMEOUT, @object
	.size	memp_stats_SYS_TIMEOUT, 10
memp_stats_SYS_TIMEOUT:
	.zero	10
	.section	.sbss.memp_tab_SYS_TIMEOUT,"aw",@nobits
	.align	2
	.type	memp_tab_SYS_TIMEOUT, @object
	.size	memp_tab_SYS_TIMEOUT, 4
memp_tab_SYS_TIMEOUT:
	.zero	4
	.globl	memp_SYS_TIMEOUT
	.section	.rodata.memp_SYS_TIMEOUT,"a"
	.align	2
	.type	memp_SYS_TIMEOUT, @object
	.size	memp_SYS_TIMEOUT, 16
memp_SYS_TIMEOUT:
	.word	memp_stats_SYS_TIMEOUT
	.half	16
	.half	18
	.word	memp_memory_SYS_TIMEOUT_base
	.word	memp_tab_SYS_TIMEOUT
	.globl	memp_memory_NETDB_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_NETDB_base, @object
	.size	memp_memory_NETDB_base, 311
memp_memory_NETDB_base:
	.zero	311
	.section	.bss.memp_stats_NETDB,"aw",@nobits
	.align	2
	.type	memp_stats_NETDB, @object
	.size	memp_stats_NETDB, 10
memp_stats_NETDB:
	.zero	10
	.section	.sbss.memp_tab_NETDB,"aw",@nobits
	.align	2
	.type	memp_tab_NETDB, @object
	.size	memp_tab_NETDB, 4
memp_tab_NETDB:
	.zero	4
	.globl	memp_NETDB
	.section	.rodata.memp_NETDB,"a"
	.align	2
	.type	memp_NETDB, @object
	.size	memp_NETDB, 16
memp_NETDB:
	.word	memp_stats_NETDB
	.half	308
	.half	1
	.word	memp_memory_NETDB_base
	.word	memp_tab_NETDB
	.globl	memp_memory_PBUF_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_PBUF_base, @object
	.size	memp_memory_PBUF_base, 259
memp_memory_PBUF_base:
	.zero	259
	.section	.bss.memp_stats_PBUF,"aw",@nobits
	.align	2
	.type	memp_stats_PBUF, @object
	.size	memp_stats_PBUF, 10
memp_stats_PBUF:
	.zero	10
	.section	.sbss.memp_tab_PBUF,"aw",@nobits
	.align	2
	.type	memp_tab_PBUF, @object
	.size	memp_tab_PBUF, 4
memp_tab_PBUF:
	.zero	4
	.globl	memp_PBUF
	.section	.rodata.memp_PBUF,"a"
	.align	2
	.type	memp_PBUF, @object
	.size	memp_PBUF, 16
memp_PBUF:
	.word	memp_stats_PBUF
	.half	16
	.half	16
	.word	memp_memory_PBUF_base
	.word	memp_tab_PBUF
	.globl	memp_memory_PBUF_POOL_base
	.section	.wifi_ram
	.align	2
	.type	memp_memory_PBUF_POOL_base, @object
	.size	memp_memory_PBUF_POOL_base, 3
memp_memory_PBUF_POOL_base:
	.zero	3
	.section	.bss.memp_stats_PBUF_POOL,"aw",@nobits
	.align	2
	.type	memp_stats_PBUF_POOL, @object
	.size	memp_stats_PBUF_POOL, 10
memp_stats_PBUF_POOL:
	.zero	10
	.section	.sbss.memp_tab_PBUF_POOL,"aw",@nobits
	.align	2
	.type	memp_tab_PBUF_POOL, @object
	.size	memp_tab_PBUF_POOL, 4
memp_tab_PBUF_POOL:
	.zero	4
	.globl	memp_PBUF_POOL
	.section	.rodata.memp_PBUF_POOL,"a"
	.align	2
	.type	memp_PBUF_POOL, @object
	.size	memp_PBUF_POOL, 16
memp_PBUF_POOL:
	.word	memp_stats_PBUF_POOL
	.half	776
	.half	0
	.word	memp_memory_PBUF_POOL_base
	.word	memp_tab_PBUF_POOL
	.globl	memp_pools
	.section	.rodata.memp_pools,"a"
	.align	2
	.type	memp_pools, @object
	.size	memp_pools, 60
memp_pools:
	.word	memp_RAW_PCB
	.word	memp_UDP_PCB
	.word	memp_TCP_PCB
	.word	memp_TCP_PCB_LISTEN
	.word	memp_TCP_SEG
	.word	memp_ALTCP_PCB
	.word	memp_NETBUF
	.word	memp_NETCONN
	.word	memp_TCPIP_MSG_API
	.word	memp_TCPIP_MSG_INPKT
	.word	memp_IGMP_GROUP
	.word	memp_SYS_TIMEOUT
	.word	memp_NETDB
	.word	memp_PBUF
	.word	memp_PBUF_POOL
	.section	.text.memp_init_pool,"ax",@progbits
	.align	1
	.globl	memp_init_pool
	.type	memp_init_pool, @function
memp_init_pool:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/memp.c"
	.loc 1 176 1
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
	.loc 1 183 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 183 14
	sw	zero,0(a5)
	.loc 1 184 52
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 184 64
	addi	a5,a5,3
	.loc 1 184 69
	andi	a5,a5,-4
	.loc 1 184 8
	sw	a5,-24(s0)
	.loc 1 194 10
	sw	zero,-20(s0)
	.loc 1 194 3
	j	.L2
.L3:
	.loc 1 195 23
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 195 18
	lw	a4,0(a5)
	.loc 1 195 16
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 196 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 196 16
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 201 59
	lw	a5,-36(s0)
	lhu	a5,4(a5)
	mv	a4,a5
	.loc 1 201 10
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 194 30 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 194 23 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 194 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L3
	.loc 1 208 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 208 28
	lw	a4,-36(s0)
	lhu	a4,6(a4)
	.loc 1 208 22
	sh	a4,2(a5)
	.loc 1 215 1
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
.LFE6:
	.size	memp_init_pool, .-memp_init_pool
	.section	.text.memp_init,"ax",@progbits
	.align	1
	.globl	memp_init
	.type	memp_init, @function
memp_init:
.LFB7:
	.loc 1 225 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 229 10
	sh	zero,-18(s0)
	.loc 1 229 3
	j	.L5
.L6:
	.loc 1 230 5
	lhu	a5,-18(s0)
	.loc 1 230 30
	lui	a4,%hi(memp_pools)
	addi	a4,a4,%lo(memp_pools)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 230 5
	mv	a0,a5
	call	memp_init_pool
	.loc 1 233 36
	lhu	a5,-18(s0)
	lui	a4,%hi(memp_pools)
	addi	a4,a4,%lo(memp_pools)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 233 20
	lhu	a5,-18(s0)
	.loc 1 233 39
	lw	a4,0(a4)
	.loc 1 233 24
	lui	a3,%hi(lwip_stats)
	addi	a3,a3,%lo(lwip_stats)
	addi	a5,a5,44
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,8(a5)
	.loc 1 229 66 discriminator 3
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
.L5:
	.loc 1 229 17 discriminator 1
	lhu	a4,-18(s0)
	li	a5,14
	bleu	a4,a5,.L6
	.loc 1 241 1
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
.LFE7:
	.size	memp_init, .-memp_init
	.section	.text.do_memp_malloc_pool,"ax",@progbits
	.align	1
	.type	do_memp_malloc_pool, @function
do_memp_malloc_pool:
.LFB8:
	.loc 1 249 1
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
	.loc 1 257 15
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 259 15
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 259 8
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 262 6
	lw	a5,-24(s0)
	beq	a5,zero,.L8
	.loc 1 268 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 268 22
	lw	a4,-24(s0)
	lw	a4,0(a4)
	.loc 1 268 16
	sw	a4,0(a5)
	.loc 1 283 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 283 16
	lhu	a4,4(a5)
	.loc 1 283 22
	addi	a4,a4,1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,4(a5)
	.loc 1 284 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 284 20
	lhu	a4,4(a5)
	.loc 1 284 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 284 40
	lhu	a5,6(a5)
	.loc 1 284 8
	bleu	a4,a5,.L9
	.loc 1 285 30
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 285 11
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 285 37
	lhu	a4,4(a4)
	.loc 1 285 24
	sh	a4,6(a5)
.L9:
	.loc 1 288 5
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 290 26
	lw	a5,-24(s0)
	j	.L10
.L8:
	.loc 1 293 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 293 16
	lhu	a4,0(a5)
	.loc 1 293 21
	addi	a4,a4,1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,0(a5)
	.loc 1 295 5
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 299 9
	li	a5,0
.L10:
	.loc 1 300 1
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
.LFE8:
	.size	do_memp_malloc_pool, .-do_memp_malloc_pool
	.section	.text.memp_malloc_pool,"ax",@progbits
	.align	1
	.globl	memp_malloc_pool
	.type	memp_malloc_pool, @function
memp_malloc_pool:
.LFB9:
	.loc 1 315 1
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
	.loc 1 317 6
	lw	a5,-20(s0)
	bne	a5,zero,.L12
	.loc 1 318 11
	li	a5,0
	j	.L13
.L12:
	.loc 1 322 10
	lw	a0,-20(s0)
	call	do_memp_malloc_pool
	mv	a5,a0
.L13:
	.loc 1 326 1
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
.LFE9:
	.size	memp_malloc_pool, .-memp_malloc_pool
	.section	.text.memp_malloc,"ax",@progbits
	.align	1
	.globl	memp_malloc
	.type	memp_malloc, @function
memp_malloc:
.LFB10:
	.loc 1 341 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 343 11
	lbu	a4,-33(s0)
	li	a5,14
	bleu	a4,a5,.L15
	.loc 1 343 2 discriminator 1
	li	a5,0
	.loc 1 343 2 is_stmt 0
	j	.L16
.L15:
	.loc 1 350 10 is_stmt 1
	lbu	a5,-33(s0)
	.loc 1 350 40
	lui	a4,%hi(memp_pools)
	addi	a4,a4,%lo(memp_pools)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 350 10
	mv	a0,a5
	call	do_memp_malloc_pool
	sw	a0,-20(s0)
	.loc 1 355 10
	lw	a5,-20(s0)
.L16:
	.loc 1 356 1
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
	.size	memp_malloc, .-memp_malloc
	.section	.text.do_memp_free_pool,"ax",@progbits
	.align	1
	.type	do_memp_free_pool, @function
do_memp_free_pool:
.LFB11:
	.loc 1 360 1
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
	.loc 1 368 8
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 370 15
	call	sys_arch_protect
	sw	a0,-24(s0)
	.loc 1 377 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 377 14
	lhu	a4,4(a5)
	.loc 1 377 20
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,4(a5)
	.loc 1 385 21
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 385 16
	lw	a4,0(a5)
	.loc 1 385 14
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 386 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 386 14
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 392 3
	lw	a0,-24(s0)
	call	sys_arch_unprotect
	.loc 1 394 1
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
.LFE11:
	.size	do_memp_free_pool, .-do_memp_free_pool
	.section	.text.memp_free_pool,"ax",@progbits
	.align	1
	.globl	memp_free_pool
	.type	memp_free_pool, @function
memp_free_pool:
.LFB12:
	.loc 1 404 1
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
	.loc 1 406 6
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	.loc 1 406 21 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L22
	.loc 1 410 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	do_memp_free_pool
	j	.L18
.L22:
	.loc 1 407 5
	nop
.L18:
	.loc 1 411 1
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
	.size	memp_free_pool, .-memp_free_pool
	.section	.text.memp_free,"ax",@progbits
	.align	1
	.globl	memp_free
	.type	memp_free, @function
memp_free:
.LFB13:
	.loc 1 421 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 1 426 11
	lbu	a4,-17(s0)
	li	a5,14
	bgtu	a4,a5,.L27
	.loc 1 428 6
	lw	a5,-24(s0)
	beq	a5,zero,.L28
	.loc 1 440 3
	lbu	a5,-17(s0)
	.loc 1 440 31
	lui	a4,%hi(memp_pools)
	addi	a4,a4,%lo(memp_pools)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 440 3
	lw	a1,-24(s0)
	mv	a0,a5
	call	do_memp_free_pool
	j	.L23
.L27:
	.loc 1 426 38
	nop
	j	.L23
.L28:
	.loc 1 429 5
	nop
.L23:
	.loc 1 447 1
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
	.size	memp_free, .-memp_free
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/memp_priv.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/memp_std.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbea
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF150
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x45
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x76
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0x99
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x87
	.byte	0x13
	.4byte	0xa5
	.uleb128 0x1c
	.byte	0x7
	.byte	0x1
	.4byte	0x45
	.byte	0x5
	.byte	0x34
	.byte	0xe
	.4byte	0x144
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0x38
	.byte	0x3
	.4byte	0xd5
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x43
	.byte	0xf
	.4byte	0xbd
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0x7
	.byte	0x45
	.4byte	0x176
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x10
	.4byte	0x176
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x15c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x10
	.byte	0x7
	.byte	0x6c
	.4byte	0x1c9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x7
	.byte	0x73
	.byte	0x15
	.4byte	0x21c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7
	.byte	0x77
	.byte	0x9
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x8
	.string	"num"
	.byte	0x7
	.byte	0x7b
	.byte	0x9
	.4byte	0xbd
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.byte	0x7e
	.byte	0x9
	.4byte	0x221
	.byte	0x8
	.uleb128 0x8
	.string	"tab"
	.byte	0x7
	.byte	0x81
	.byte	0x11
	.4byte	0x226
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	0x17b
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x8
	.byte	0x62
	.4byte	0x21c
	.uleb128 0x8
	.string	"err"
	.byte	0x8
	.byte	0x66
	.byte	0x9
	.4byte	0xbd
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x150
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x8
	.byte	0x68
	.byte	0xe
	.4byte	0x150
	.byte	0x4
	.uleb128 0x8
	.string	"max"
	.byte	0x8
	.byte	0x69
	.byte	0xe
	.4byte	0x150
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6a
	.byte	0x9
	.4byte	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x1ce
	.uleb128 0xd
	.4byte	0xb1
	.uleb128 0xd
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x18
	.byte	0x8
	.byte	0x40
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.4byte	0xbd
	.byte	0
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x8
	.string	"fw"
	.byte	0x8
	.byte	0x43
	.byte	0x9
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x8
	.byte	0x44
	.byte	0x9
	.4byte	0xbd
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x8
	.byte	0x45
	.byte	0x9
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x8
	.byte	0x46
	.byte	0x9
	.4byte	0xbd
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x8
	.byte	0x47
	.byte	0x9
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x8
	.byte	0x48
	.byte	0x9
	.4byte	0xbd
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x8
	.byte	0x49
	.byte	0x9
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x8
	.byte	0x4a
	.byte	0x9
	.4byte	0xbd
	.byte	0x12
	.uleb128 0x8
	.string	"err"
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0xbd
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x1c
	.byte	0x8
	.byte	0x50
	.4byte	0x396
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x8
	.byte	0x51
	.byte	0x9
	.4byte	0xbd
	.byte	0
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x8
	.byte	0x52
	.byte	0x9
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x8
	.byte	0x53
	.byte	0x9
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x8
	.byte	0x54
	.byte	0x9
	.4byte	0xbd
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x8
	.byte	0x55
	.byte	0x9
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x8
	.byte	0x56
	.byte	0x9
	.4byte	0xbd
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x8
	.byte	0x57
	.byte	0x9
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0xbd
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x8
	.byte	0x59
	.byte	0x9
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x8
	.byte	0x5a
	.byte	0x9
	.4byte	0xbd
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x8
	.byte	0x5b
	.byte	0x9
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x8
	.byte	0x5c
	.byte	0x9
	.4byte	0xbd
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x8
	.byte	0x5d
	.byte	0x9
	.4byte	0xbd
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.4byte	0xbd
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x6
	.byte	0x8
	.byte	0x6e
	.4byte	0x3ca
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x8
	.byte	0x6f
	.byte	0x9
	.4byte	0xbd
	.byte	0
	.uleb128 0x8
	.string	"max"
	.byte	0x8
	.byte	0x70
	.byte	0x9
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x8
	.string	"err"
	.byte	0x8
	.byte	0x71
	.byte	0x9
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x12
	.byte	0x8
	.byte	0x75
	.4byte	0x3fe
	.uleb128 0x8
	.string	"sem"
	.byte	0x8
	.byte	0x76
	.byte	0x18
	.4byte	0x396
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x8
	.byte	0x77
	.byte	0x18
	.4byte	0x396
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x8
	.byte	0x78
	.byte	0x18
	.4byte	0x396
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF71
	.2byte	0x108
	.byte	0x8
	.byte	0xeb
	.byte	0x8
	.4byte	0x48c
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x8
	.byte	0xee
	.byte	0x16
	.4byte	0x22b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x8
	.byte	0xf2
	.byte	0x16
	.4byte	0x22b
	.byte	0x18
	.uleb128 0x8
	.string	"ip"
	.byte	0x8
	.byte	0xfa
	.byte	0x16
	.4byte	0x22b
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x8
	.byte	0xfe
	.byte	0x16
	.4byte	0x22b
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF75
	.2byte	0x102
	.4byte	0x2d3
	.byte	0x60
	.uleb128 0xf
	.string	"udp"
	.2byte	0x106
	.byte	0x16
	.4byte	0x22b
	.byte	0x7c
	.uleb128 0xf
	.string	"tcp"
	.2byte	0x10a
	.byte	0x16
	.4byte	0x22b
	.byte	0x94
	.uleb128 0xf
	.string	"mem"
	.2byte	0x10e
	.byte	0x14
	.4byte	0x1ce
	.byte	0xac
	.uleb128 0x14
	.4byte	.LASF38
	.2byte	0x112
	.4byte	0x48c
	.byte	0xb8
	.uleb128 0xf
	.string	"sys"
	.2byte	0x116
	.byte	0x14
	.4byte	0x3ca
	.byte	0xf4
	.byte	0
	.uleb128 0x5
	.4byte	0x21c
	.4byte	0x49c
	.uleb128 0xa
	.4byte	0x76
	.byte	0xe
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x133
	.byte	0x16
	.4byte	0x3fe
	.uleb128 0x5
	.4byte	0x4c3
	.4byte	0x4b9
	.uleb128 0xa
	.4byte	0x76
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.4byte	0x4a9
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0x11
	.4byte	0x4be
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x5
	.byte	0x3d
	.byte	0x26
	.4byte	0x4b9
	.uleb128 0x20
	.4byte	.LASF151
	.byte	0x7
	.byte	0x1
	.4byte	0x45
	.byte	0xa
	.byte	0x71
	.byte	0x6
	.4byte	0x4ff
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x50f
	.uleb128 0xa
	.4byte	0x76
	.byte	0x72
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x2a
	.byte	0x6
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_RAW_PCB_base
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x9
	.byte	0x2a
	.byte	0xaf
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_RAW_PCB
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x9
	.byte	0x2a
	.byte	0xd7
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_RAW_PCB
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x2a
	.2byte	0x100
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_RAW_PCB
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x566
	.uleb128 0xa
	.4byte	0x76
	.byte	0xf2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x2e
	.byte	0x6
	.4byte	0x556
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_UDP_PCB_base
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x9
	.byte	0x2e
	.byte	0xaf
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_UDP_PCB
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x9
	.byte	0x2e
	.byte	0xd7
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_UDP_PCB
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x2e
	.2byte	0x100
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_UDP_PCB
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x5be
	.uleb128 0xc
	.4byte	0x76
	.2byte	0x336
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x32
	.byte	0x6
	.4byte	0x5ad
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_TCP_PCB_base
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x9
	.byte	0x32
	.byte	0xaf
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_TCP_PCB
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x9
	.byte	0x32
	.byte	0xd7
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_TCP_PCB
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x32
	.2byte	0x100
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_PCB
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x615
	.uleb128 0xa
	.4byte	0x76
	.byte	0x8e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x33
	.byte	0x6
	.4byte	0x605
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_TCP_PCB_LISTEN_base
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x9
	.byte	0x33
	.byte	0xbd
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_TCP_PCB_LISTEN
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x9
	.byte	0x33
	.byte	0xec
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_TCP_PCB_LISTEN
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x33
	.2byte	0x11c
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_PCB_LISTEN
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x66d
	.uleb128 0xc
	.4byte	0x76
	.2byte	0x142
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x34
	.byte	0x6
	.4byte	0x65c
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_TCP_SEG_base
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x9
	.byte	0x34
	.byte	0xb0
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_TCP_SEG
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x9
	.byte	0x34
	.byte	0xd8
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_TCP_SEG
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x34
	.2byte	0x101
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_SEG
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x6c4
	.uleb128 0xa
	.4byte	0x76
	.byte	0xde
	.byte	0
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x38
	.byte	0x6
	.4byte	0x6b4
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_ALTCP_PCB_base
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x9
	.byte	0x38
	.byte	0xb3
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_ALTCP_PCB
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x9
	.byte	0x38
	.byte	0xdd
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_ALTCP_PCB
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x38
	.2byte	0x108
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_ALTCP_PCB
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x71b
	.uleb128 0xa
	.4byte	0x76
	.byte	0x2a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x43
	.byte	0x6
	.4byte	0x70b
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_NETBUF_base
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x9
	.byte	0x43
	.byte	0xad
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_NETBUF
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x9
	.byte	0x43
	.byte	0xd4
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_NETBUF
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x43
	.byte	0xfc
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETBUF
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x772
	.uleb128 0xc
	.4byte	0x76
	.2byte	0x302
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x44
	.byte	0x6
	.4byte	0x761
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_NETCONN_base
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x9
	.byte	0x44
	.byte	0xb9
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_NETCONN
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x9
	.byte	0x44
	.byte	0xe1
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_NETCONN
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x44
	.2byte	0x10a
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETCONN
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x7c9
	.uleb128 0xa
	.4byte	0x76
	.byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x48
	.byte	0x6
	.4byte	0x7b9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_TCPIP_MSG_API_base
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x9
	.byte	0x48
	.byte	0xb7
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_TCPIP_MSG_API
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x9
	.byte	0x48
	.byte	0xe5
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_TCPIP_MSG_API
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x48
	.2byte	0x114
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_API
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x59
	.byte	0x6
	.4byte	0x7b9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_TCPIP_MSG_INPKT_base
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x9
	.byte	0x59
	.byte	0xb9
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_TCPIP_MSG_INPKT
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x9
	.byte	0x59
	.byte	0xe9
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_TCPIP_MSG_INPKT
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x59
	.2byte	0x11a
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_INPKT
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x62
	.byte	0x6
	.4byte	0x7b9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_IGMP_GROUP_base
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x9
	.byte	0x62
	.byte	0xb5
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_IGMP_GROUP
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x9
	.byte	0x62
	.byte	0xe0
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_IGMP_GROUP
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x62
	.2byte	0x10c
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_IGMP_GROUP
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x8af
	.uleb128 0xc
	.4byte	0x76
	.2byte	0x122
	.byte	0
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x66
	.byte	0x6
	.4byte	0x89e
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_SYS_TIMEOUT_base
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x66
	.2byte	0x100
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_SYS_TIMEOUT
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x66
	.2byte	0x12c
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_SYS_TIMEOUT
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x66
	.2byte	0x159
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_SYS_TIMEOUT
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x907
	.uleb128 0xc
	.4byte	0x76
	.2byte	0x136
	.byte	0
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x6a
	.byte	0x6
	.4byte	0x8f6
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_NETDB_base
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x9
	.byte	0x6a
	.byte	0xdc
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_NETDB
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x6a
	.2byte	0x102
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_NETDB
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x6a
	.2byte	0x129
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETDB
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x95f
	.uleb128 0xc
	.4byte	0x76
	.2byte	0x102
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x85
	.byte	0x6
	.4byte	0x94e
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_PBUF_base
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x9
	.byte	0x85
	.byte	0xaa
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_PBUF
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x9
	.byte	0x85
	.byte	0xcf
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_PBUF
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x85
	.byte	0xf5
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_PBUF
	.uleb128 0x5
	.4byte	0xb1
	.4byte	0x9b5
	.uleb128 0xa
	.4byte	0x76
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x86
	.byte	0x6
	.4byte	0x9a5
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_memory_PBUF_POOL_base
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x9
	.byte	0x86
	.byte	0xea
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_stats_PBUF_POOL
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x86
	.2byte	0x114
	.4byte	0x176
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_tab_PBUF_POOL
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x86
	.2byte	0x13f
	.4byte	0x1c9
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_PBUF_POOL
	.uleb128 0x21
	.4byte	0x4c8
	.byte	0x1
	.byte	0x51
	.byte	0x1f
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_pools
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x1fc
	.byte	0x6
	.4byte	0xa1d
	.uleb128 0x23
	.4byte	0x2b
	.byte	0
	.uleb128 0x24
	.4byte	.LASF153
	.byte	0xb
	.2byte	0x1fb
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x15
	.4byte	.LASF143
	.2byte	0x1a4
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5e
	.uleb128 0xe
	.4byte	.LASF142
	.2byte	0x1a4
	.byte	0x12
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.string	"mem"
	.2byte	0x1a4
	.byte	0x1e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF144
	.2byte	0x193
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa92
	.uleb128 0xe
	.4byte	.LASF145
	.2byte	0x193
	.byte	0x28
	.4byte	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"mem"
	.2byte	0x193
	.byte	0x34
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x167
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae6
	.uleb128 0xe
	.4byte	.LASF145
	.2byte	0x167
	.byte	0x2b
	.4byte	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"mem"
	.2byte	0x167
	.byte	0x37
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF38
	.2byte	0x169
	.byte	0x10
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF146
	.2byte	0x16a
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF147
	.2byte	0x151
	.4byte	0x84
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1e
	.uleb128 0xe
	.4byte	.LASF142
	.2byte	0x151
	.byte	0x14
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x13
	.4byte	.LASF38
	.2byte	0x156
	.byte	0x9
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF148
	.2byte	0x137
	.4byte	0x84
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb47
	.uleb128 0xe
	.4byte	.LASF145
	.2byte	0x137
	.byte	0x2a
	.4byte	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF155
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	0x84
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8e
	.uleb128 0x17
	.4byte	.LASF145
	.byte	0xf5
	.byte	0x2d
	.4byte	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x1
	.byte	0xfa
	.byte	0x10
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x1
	.byte	0xfb
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb1
	.uleb128 0x18
	.string	"i"
	.byte	0xe2
	.byte	0x9
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x28
	.4byte	.LASF156
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF145
	.byte	0xaf
	.byte	0x28
	.4byte	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"i"
	.byte	0xb4
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x1
	.byte	0xb5
	.byte	0x10
	.4byte	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x7c
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"tx_join"
.LASF149:
	.string	"memp_init"
.LASF113:
	.string	"memp_NETCONN"
.LASF31:
	.string	"MEMP_SYS_TIMEOUT"
.LASF84:
	.string	"memp_tab_RAW_PCB"
.LASF131:
	.string	"memp_stats_NETDB"
.LASF23:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF86:
	.string	"memp_memory_UDP_PCB_base"
.LASF16:
	.string	"uintptr_t"
.LASF101:
	.string	"memp_TCP_SEG"
.LASF123:
	.string	"memp_stats_IGMP_GROUP"
.LASF143:
	.string	"memp_free"
.LASF128:
	.string	"memp_tab_SYS_TIMEOUT"
.LASF142:
	.string	"type"
.LASF52:
	.string	"chkerr"
.LASF9:
	.string	"long long unsigned int"
.LASF107:
	.string	"memp_stats_NETBUF"
.LASF102:
	.string	"memp_memory_ALTCP_PCB_base"
.LASF126:
	.string	"memp_memory_SYS_TIMEOUT_base"
.LASF54:
	.string	"memerr"
.LASF24:
	.string	"MEMP_TCP_SEG"
.LASF32:
	.string	"MEMP_NETDB"
.LASF58:
	.string	"cachehit"
.LASF40:
	.string	"next"
.LASF135:
	.string	"memp_stats_PBUF"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF121:
	.string	"memp_TCPIP_MSG_INPKT"
.LASF60:
	.string	"rx_v1"
.LASF153:
	.string	"sys_arch_protect"
.LASF18:
	.string	"u16_t"
.LASF148:
	.string	"memp_malloc_pool"
.LASF77:
	.string	"memp_pools"
.LASF110:
	.string	"memp_memory_NETCONN_base"
.LASF6:
	.string	"long int"
.LASF92:
	.string	"memp_tab_TCP_PCB"
.LASF20:
	.string	"MEMP_RAW_PCB"
.LASF97:
	.string	"memp_TCP_PCB_LISTEN"
.LASF41:
	.string	"stats"
.LASF73:
	.string	"etharp"
.LASF81:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF154:
	.string	"do_memp_free_pool"
.LASF47:
	.string	"illegal"
.LASF125:
	.string	"memp_IGMP_GROUP"
.LASF89:
	.string	"memp_UDP_PCB"
.LASF119:
	.string	"memp_stats_TCPIP_MSG_INPKT"
.LASF105:
	.string	"memp_ALTCP_PCB"
.LASF141:
	.string	"memp_PBUF_POOL"
.LASF118:
	.string	"memp_memory_TCPIP_MSG_INPKT_base"
.LASF30:
	.string	"MEMP_IGMP_GROUP"
.LASF72:
	.string	"link"
.LASF103:
	.string	"memp_stats_ALTCP_PCB"
.LASF94:
	.string	"memp_memory_TCP_PCB_LISTEN_base"
.LASF93:
	.string	"memp_TCP_PCB"
.LASF147:
	.string	"memp_malloc"
.LASF59:
	.string	"stats_igmp"
.LASF56:
	.string	"proterr"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF7:
	.string	"long unsigned int"
.LASF50:
	.string	"recv"
.LASF61:
	.string	"rx_group"
.LASF22:
	.string	"MEMP_TCP_PCB"
.LASF87:
	.string	"memp_stats_UDP_PCB"
.LASF42:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF133:
	.string	"memp_NETDB"
.LASF136:
	.string	"memp_tab_PBUF"
.LASF90:
	.string	"memp_memory_TCP_PCB_base"
.LASF124:
	.string	"memp_tab_IGMP_GROUP"
.LASF85:
	.string	"memp_RAW_PCB"
.LASF68:
	.string	"stats_sys"
.LASF39:
	.string	"memp_desc"
.LASF95:
	.string	"memp_stats_TCP_PCB_LISTEN"
.LASF99:
	.string	"memp_stats_TCP_SEG"
.LASF134:
	.string	"memp_memory_PBUF_base"
.LASF43:
	.string	"base"
.LASF21:
	.string	"MEMP_UDP_PCB"
.LASF35:
	.string	"MEMP_MAX"
.LASF70:
	.string	"mbox"
.LASF17:
	.string	"u8_t"
.LASF122:
	.string	"memp_memory_IGMP_GROUP_base"
.LASF82:
	.string	"memp_memory_RAW_PCB_base"
.LASF11:
	.string	"long double"
.LASF36:
	.string	"memp_t"
.LASF145:
	.string	"desc"
.LASF146:
	.string	"old_level"
.LASF13:
	.string	"sys_prot_t"
.LASF111:
	.string	"memp_stats_NETCONN"
.LASF67:
	.string	"stats_syselem"
.LASF83:
	.string	"memp_stats_RAW_PCB"
.LASF120:
	.string	"memp_tab_TCPIP_MSG_INPKT"
.LASF71:
	.string	"stats_"
.LASF74:
	.string	"icmp"
.LASF46:
	.string	"used"
.LASF112:
	.string	"memp_tab_NETCONN"
.LASF55:
	.string	"rterr"
.LASF106:
	.string	"memp_memory_NETBUF_base"
.LASF116:
	.string	"memp_tab_TCPIP_MSG_API"
.LASF129:
	.string	"memp_SYS_TIMEOUT"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF127:
	.string	"memp_stats_SYS_TIMEOUT"
.LASF69:
	.string	"mutex"
.LASF155:
	.string	"do_memp_malloc_pool"
.LASF138:
	.string	"memp_memory_PBUF_POOL_base"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"rx_report"
.LASF109:
	.string	"memp_NETBUF"
.LASF80:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF4:
	.string	"short int"
.LASF51:
	.string	"drop"
.LASF139:
	.string	"memp_stats_PBUF_POOL"
.LASF76:
	.string	"lwip_stats"
.LASF152:
	.string	"sys_arch_unprotect"
.LASF65:
	.string	"tx_leave"
.LASF48:
	.string	"stats_proto"
.LASF78:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF91:
	.string	"memp_stats_TCP_PCB"
.LASF98:
	.string	"memp_memory_TCP_SEG_base"
.LASF62:
	.string	"rx_general"
.LASF28:
	.string	"MEMP_TCPIP_MSG_API"
.LASF12:
	.string	"char"
.LASF132:
	.string	"memp_tab_NETDB"
.LASF26:
	.string	"MEMP_NETBUF"
.LASF38:
	.string	"memp"
.LASF27:
	.string	"MEMP_NETCONN"
.LASF96:
	.string	"memp_tab_TCP_PCB_LISTEN"
.LASF25:
	.string	"MEMP_ALTCP_PCB"
.LASF144:
	.string	"memp_free_pool"
.LASF34:
	.string	"MEMP_PBUF_POOL"
.LASF57:
	.string	"opterr"
.LASF150:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF88:
	.string	"memp_tab_UDP_PCB"
.LASF130:
	.string	"memp_memory_NETDB_base"
.LASF115:
	.string	"memp_stats_TCPIP_MSG_API"
.LASF75:
	.string	"igmp"
.LASF19:
	.string	"mem_ptr_t"
.LASF37:
	.string	"mem_size_t"
.LASF151:
	.string	"lwip_internal_netif_client_data_index"
.LASF53:
	.string	"lenerr"
.LASF117:
	.string	"memp_TCPIP_MSG_API"
.LASF44:
	.string	"stats_mem"
.LASF14:
	.string	"uint8_t"
.LASF104:
	.string	"memp_tab_ALTCP_PCB"
.LASF140:
	.string	"memp_tab_PBUF_POOL"
.LASF45:
	.string	"avail"
.LASF100:
	.string	"memp_tab_TCP_SEG"
.LASF114:
	.string	"memp_memory_TCPIP_MSG_API_base"
.LASF66:
	.string	"tx_report"
.LASF156:
	.string	"memp_init_pool"
.LASF108:
	.string	"memp_tab_NETBUF"
.LASF33:
	.string	"MEMP_PBUF"
.LASF137:
	.string	"memp_PBUF"
.LASF49:
	.string	"xmit"
.LASF29:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/memp.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
