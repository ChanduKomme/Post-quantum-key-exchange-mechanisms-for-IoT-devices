	.file	"softcrc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.c"
	.globl	chCRCHTalbe
	.section	.rodata.chCRCHTalbe,"a"
	.align	2
	.type	chCRCHTalbe, @object
	.size	chCRCHTalbe, 256
chCRCHTalbe:
	.base64	"AMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEAwYFAAcCAQQHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAcCAQQDBgUABwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGB"
	.ascii	"@"
	.globl	chCRCLTalbe
	.section	.rodata.chCRCLTalbe,"a"
	.align	2
	.type	chCRCLTalbe, @object
	.size	chCRCLTalbe, 256
chCRCLTalbe:
	.base64	"AMDBAcMDAsLGBgfHBcXEBMwMDc0Pz84OCsrLC8kJCMjYGBnZG9vaGh7e3x/dHRzcFNTVFdcXFtbSEhPTEdHQEPAwMfEz8/IyNvb3N/U1NPQ8/P09/z8+/vo6O/s5+fg4KOjpKesrKuruLi/vLe3sLOQkJeUn5+YmIuLjI+EhIOCgYGGhY6OiYmamp2elZWSkbKytba9vbq6qamuraamoaHi4uXm7e3q6vn5/v329vHy0dHW1d7e2dnKys3OxcXCwUJCRUZNTUpKWVleXVZWUVJxcXZ1fn55eWpqbW5lZWJiISEmJS4uKSk6Oj0+NTUyMRISFRYdHRoaCQkODQYGA"
	.ascii	"@"
	.section	.text.BFLB_Soft_CRC16,"ax",@progbits
	.align	1
	.globl	BFLB_Soft_CRC16
	.type	BFLB_Soft_CRC16, @function
BFLB_Soft_CRC16:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.c"
	.loc 1 67 1
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
	.loc 1 68 13
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 69 13
	li	a5,-1
	sb	a5,-18(s0)
	.loc 1 71 14
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 73 11
	j	.L2
.L3:
	.loc 1 74 33
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 74 28
	lbu	a5,0(a5)
	.loc 1 74 16
	lbu	a4,-18(s0)
	xor	a5,a5,a4
	andi	a5,a5,0xff
	sh	a5,-26(s0)
	.loc 1 75 40
	lhu	a5,-26(s0)
	lui	a4,%hi(chCRCHTalbe)
	addi	a4,a4,%lo(chCRCHTalbe)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 75 17
	lbu	a4,-17(s0)
	xor	a5,a5,a4
	sb	a5,-18(s0)
	.loc 1 76 30
	lhu	a5,-26(s0)
	.loc 1 76 17
	lui	a4,%hi(chCRCLTalbe)
	addi	a4,a4,%lo(chCRCLTalbe)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
.L2:
	.loc 1 73 15
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	.loc 1 73 12
	bne	a5,zero,.L3
	.loc 1 79 28
	lbu	a5,-17(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	lbu	a5,-18(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 80 1
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
	.size	BFLB_Soft_CRC16, .-BFLB_Soft_CRC16
	.globl	crc32Tab
	.section	.rodata.crc32Tab,"a"
	.align	2
	.type	crc32Tab, @object
	.size	crc32Tab, 1024
crc32Tab:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.section	.text.BFLB_Soft_CRC32_Table,"ax",@progbits
	.align	1
	.globl	BFLB_Soft_CRC32_Table
	.type	BFLB_Soft_CRC32_Table, @function
BFLB_Soft_CRC32_Table:
.LFB9:
	.loc 1 132 1
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
	.loc 1 133 14
	sw	zero,-20(s0)
	.loc 1 134 14
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 136 9
	lw	a5,-20(s0)
	not	a5,a5
	sw	a5,-20(s0)
	.loc 1 138 11
	j	.L6
.L7:
	.loc 1 139 36
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 139 31
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 139 29
	lw	a5,-20(s0)
	xor	a5,a4,a5
	.loc 1 139 40
	andi	a5,a5,255
	.loc 1 139 23
	lui	a4,%hi(crc32Tab)
	addi	a4,a4,%lo(crc32Tab)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 139 55
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 1 139 13
	xor	a5,a4,a5
	sw	a5,-20(s0)
.L6:
	.loc 1 138 15
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	.loc 1 138 12
	bne	a5,zero,.L7
	.loc 1 141 16
	lw	a5,-20(s0)
	not	a5,a5
	.loc 1 142 1
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
.LFE9:
	.size	BFLB_Soft_CRC32_Table, .-BFLB_Soft_CRC32_Table
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	BFLB_Soft_CRC32
	.type	BFLB_Soft_CRC32, @function
BFLB_Soft_CRC32:
.LFB10:
	.loc 1 156 1
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
	.loc 1 158 14
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 159 14
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 161 10
	j	.L10
.L15:
	.loc 1 162 21
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 162 16
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 162 13
	lw	a5,-24(s0)
	xor	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 163 16
	sb	zero,-17(s0)
	.loc 1 163 9
	j	.L11
.L14:
	.loc 1 164 21
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 164 16
	beq	a5,zero,.L12
	.loc 1 165 28
	lw	a5,-24(s0)
	srli	a4,a5,1
	.loc 1 165 21
	li	a5,-306675712
	addi	a5,a5,800
	xor	a5,a4,a5
	sw	a5,-24(s0)
	j	.L13
.L12:
	.loc 1 167 21
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L13:
	.loc 1 163 28 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L11:
	.loc 1 163 23 discriminator 1
	lbu	a4,-17(s0)
	li	a5,7
	bleu	a4,a5,.L14
.L10:
	.loc 1 161 14
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	.loc 1 161 11
	bne	a5,zero,.L15
	.loc 1 171 12
	lw	a5,-24(s0)
	not	a5,a5
	.loc 1 172 1
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
	.size	BFLB_Soft_CRC32, .-BFLB_Soft_CRC32
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x227
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2e
	.byte	0x17
	.4byte	0x57
	.uleb128 0x3
	.4byte	0x47
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x31
	.byte	0x1c
	.4byte	0x69
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x34
	.byte	0x1b
	.4byte	0x80
	.uleb128 0x3
	.4byte	0x70
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	0x52
	.4byte	0xbc
	.uleb128 0xa
	.4byte	0x95
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	0xac
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0xe
	.byte	0xf
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	chCRCHTalbe
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x28
	.byte	0xf
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	chCRCLTalbe
	.uleb128 0x9
	.4byte	0x7b
	.4byte	0xf3
	.uleb128 0xa
	.4byte	0x95
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	0xe3
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x55
	.byte	0x10
	.4byte	0xf3
	.uleb128 0x5
	.byte	0x3
	.4byte	crc32Tab
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x9b
	.byte	0x30
	.4byte	0x70
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x167
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x9b
	.byte	0x46
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.byte	0x9b
	.byte	0x57
	.4byte	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"i"
	.byte	0x9d
	.byte	0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.string	"crc"
	.byte	0x9e
	.byte	0xe
	.4byte	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x9f
	.byte	0xe
	.4byte	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x47
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x83
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x83
	.byte	0x27
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.byte	0x83
	.byte	0x38
	.4byte	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"crc"
	.byte	0x85
	.byte	0xe
	.4byte	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x86
	.byte	0xe
	.4byte	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x5e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x42
	.byte	0x21
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.byte	0x42
	.byte	0x32
	.4byte	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x44
	.byte	0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x45
	.byte	0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x46
	.byte	0xe
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x47
	.byte	0xe
	.4byte	0x167
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF9:
	.string	"short unsigned int"
.LASF13:
	.string	"unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF22:
	.string	"BFLB_Soft_CRC32_Table"
.LASF23:
	.string	"chCRCHi"
.LASF16:
	.string	"chCRCHTalbe"
.LASF11:
	.string	"long unsigned int"
.LASF26:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"long long unsigned int"
.LASF24:
	.string	"chCRCLo"
.LASF15:
	.string	"char"
.LASF19:
	.string	"dataIn"
.LASF7:
	.string	"uint8_t"
.LASF6:
	.string	"unsigned char"
.LASF20:
	.string	"data"
.LASF4:
	.string	"long int"
.LASF27:
	.string	"BFLB_Soft_CRC16"
.LASF21:
	.string	"BFLB_Soft_CRC32"
.LASF25:
	.string	"wIndex"
.LASF8:
	.string	"uint16_t"
.LASF14:
	.string	"long double"
.LASF17:
	.string	"chCRCLTalbe"
.LASF3:
	.string	"short int"
.LASF18:
	.string	"crc32Tab"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
