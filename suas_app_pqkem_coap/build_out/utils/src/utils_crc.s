	.file	"utils_crc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_crc16,"ax",@progbits
	.align	1
	.globl	utils_crc16
	.type	utils_crc16, @function
utils_crc16:
.LVL0:
.LFB4:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
.LM6:
.LM7:
	li	a5,255
.LM8:
	lui	a2,%hi(chCRCHTalbe)
.LM9:
	lui	a6,%hi(chCRCLTalbe)
	add	a1,a0,a1
.LVL1:
.LM10:
	mv	a3,a5
.LM11:
	addi	a2,a2,%lo(chCRCHTalbe)
.LM12:
	addi	a6,a6,%lo(chCRCLTalbe)
.LVL2:
.L2:
.LM13:
.LM14:
	bne	a0,a1,.L3
.LM15:
.LM16:
	slli	a0,a3,8
.LVL3:
.LM17:
	or	a0,a0,a5
	ret
.LVL4:
.L3:
.LM18:
.LM19:
	lbu	a4,0(a0)
.LM20:
	addi	a0,a0,1
.LVL5:
.LM21:
.LM22:
	xor	a4,a5,a4
	add	a5,a2,a4
.LVL6:
.LM23:
	lbu	a5,0(a5)
.LM24:
	add	a4,a6,a4
.LM25:
	xor	a5,a3,a5
.LVL7:
.LM26:
.LM27:
	lbu	a3,0(a4)
.LVL8:
.LM28:
	j	.L2
	.cfi_endproc
.LFE4:
	.size	utils_crc16, .-utils_crc16
	.section	.text.utils_crc32,"ax",@progbits
	.align	1
	.globl	utils_crc32
	.type	utils_crc32, @function
utils_crc32:
.LVL9:
.LFB5:
.LM29:
	.cfi_startproc
.LM30:
.LM31:
.LM32:
.LM33:
.LM34:
	lui	a3,%hi(crc32Tab)
	add	a1,a0,a1
.LVL10:
.LM35:
	li	a4,-1
.LM36:
	addi	a3,a3,%lo(crc32Tab)
.LVL11:
.L5:
.LM37:
.LM38:
	bne	a0,a1,.L6
.LM39:
.LM40:
	not	a0,a4
.LVL12:
.LM41:
	ret
.LVL13:
.L6:
.LM42:
.LM43:
	lbu	a5,0(a0)
.LM44:
	addi	a0,a0,1
.LVL14:
.LM45:
	xor	a5,a5,a4
.LM46:
	andi	a5,a5,255
.LM47:
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
.LM48:
	srli	a4,a4,8
.LVL15:
.LM49:
	xor	a4,a5,a4
	j	.L5
	.cfi_endproc
.LFE5:
	.size	utils_crc32, .-utils_crc32
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
	.section	.rodata.chCRCLTalbe,"a"
	.align	2
	.type	chCRCLTalbe, @object
	.size	chCRCLTalbe, 256
chCRCLTalbe:
	.base64	"AMDBAcMDAsLGBgfHBcXEBMwMDc0Pz84OCsrLC8kJCMjYGBnZG9vaGh7e3x/dHRzcFNTVFdcXFtbSEhPTEdHQEPAwMfEz8/IyNvb3N/U1NPQ8/P09/z8+/vo6O/s5+fg4KOjpKesrKuruLi/vLe3sLOQkJeUn5+YmIuLjI+EhIOCgYGGhY6OiYmamp2elZWSkbKytba9vbq6qamuraamoaHi4uXm7e3q6vn5/v329vHy0dHW1d7e2dnKys3OxcXCwUJCRUZNTUpKWVleXVZWUVJxcXZ1fn55eWpqbW5lZWJiISEmJS4uKSk6Oj0+NTUyMRISFRYdHRoaCQkODQYGA"
	.ascii	"@"
	.section	.rodata.chCRCHTalbe,"a"
	.align	2
	.type	chCRCHTalbe, @object
	.size	chCRCHTalbe, 256
chCRCHTalbe:
	.base64	"AMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEAwYFAAcCAQQHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAcCAQQDBgUABwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGBQAHAgEEAwYFAAMGBQAHAgEEBwIBBAMGBQADBgUABwIBBAMGBQAHAgEEBwIBBAMGB"
	.ascii	"@"
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL10
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0x3
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x31
	.byte	0x1c
	.4byte	0x4e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0x3
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x8c
	.4byte	0xbc
	.uleb128 0x7
	.4byte	0x32
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	0xac
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x29
	.byte	0x16
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	chCRCHTalbe
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x43
	.byte	0x16
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	chCRCLTalbe
	.uleb128 0x6
	.4byte	0xa7
	.4byte	0xf3
	.uleb128 0x7
	.4byte	0x32
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	0xe3
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x71
	.byte	0x17
	.4byte	0xf3
	.uleb128 0x5
	.byte	0x3
	.4byte	crc32Tab
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9f
	.byte	0xa
	.4byte	0x9c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x171
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x9f
	.byte	0x1c
	.4byte	0x78
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x9
	.string	"len"
	.byte	0x9f
	.byte	0x2d
	.4byte	0x9c
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xe
	.string	"crc"
	.byte	0x1
	.byte	0xa1
	.byte	0xe
	.4byte	0x9c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0xa2
	.byte	0xc
	.4byte	0x171
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x81
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5d
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5d
	.byte	0x1d
	.4byte	0x78
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x9
	.string	"len"
	.byte	0x5d
	.byte	0x2e
	.4byte	0x9c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5f
	.byte	0xd
	.4byte	0x81
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x60
	.byte	0xd
	.4byte	0x81
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x61
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x62
	.byte	0xc
	.4byte	0x171
	.4byte	.LLST5
	.4byte	.LVUS5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS6:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LFE5-.LVL9
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
.LVUS7:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x8
	.uleb128 0x9
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LVL11-.LVL9
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
	.uleb128 .LVL11-.LVL9
	.uleb128 .LFE5-.LVL9
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0x4
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x14
.LLST8:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LVL15-.LVL9
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS9:
	.uleb128 0x3
	.uleb128 0xc
	.uleb128 0xd
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL12-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL13-.LVL9
	.uleb128 .LFE5-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
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
	.uleb128 .LFE4-.LVL0
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
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 .LVL2-.LVL0
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
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE4-.LVL0
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0x2
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1b
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS3:
	.uleb128 0x3
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x16
	.uleb128 0x19
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LFE4-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS4:
	.uleb128 0x14
	.uleb128 0x16
.LLST4:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0xb
	.byte	0x7a
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0x5
	.uleb128 0x10
	.uleb128 0x11
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE4-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
.LLRL10:
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF27
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF29
	.byte	0x1
	.4byte	.LASF30
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x74
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1e
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0xe
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1f
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x16
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0xb6
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x14
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1a
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"chCRCHi"
.LASF9:
	.string	"long unsigned int"
.LASF24:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"long long unsigned int"
.LASF22:
	.string	"chCRCLo"
.LASF17:
	.string	"chCRCLTalbe"
.LASF12:
	.string	"char"
.LASF19:
	.string	"dataIn"
.LASF13:
	.string	"uint8_t"
.LASF5:
	.string	"unsigned char"
.LASF20:
	.string	"data"
.LASF16:
	.string	"chCRCHTalbe"
.LASF8:
	.string	"long int"
.LASF7:
	.string	"short unsigned int"
.LASF23:
	.string	"wIndex"
.LASF14:
	.string	"uint16_t"
.LASF11:
	.string	"long double"
.LASF26:
	.string	"utils_crc16"
.LASF6:
	.string	"short int"
.LASF18:
	.string	"crc32Tab"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"utils_crc32"
	.section	.debug_line_str,"MS",@progbits,1
.LASF28:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_crc.c"
.LASF29:
	.string	"utils_crc.c"
.LASF27:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src"
.LASF30:
	.string	"stdint-gcc.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
