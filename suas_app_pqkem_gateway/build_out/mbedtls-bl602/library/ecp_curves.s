	.file	"ecp_curves.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecp_curves.c"
	.section	.srodata.mpi_one,"a"
	.align	2
	.type	mpi_one, @object
	.size	mpi_one, 4
mpi_one:
	.word	1
	.section	.rodata.secp192r1_p,"a"
	.align	2
	.type	secp192r1_p, @object
	.size	secp192r1_p, 24
secp192r1_p:
	.word	-1
	.word	-1
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.secp192r1_b,"a"
	.align	2
	.type	secp192r1_b, @object
	.size	secp192r1_b, 24
secp192r1_b:
	.word	-1052329551
	.word	-21438740
	.word	1914974281
	.word	262662571
	.word	-442728217
	.word	1679885593
	.section	.rodata.secp192r1_gx,"a"
	.align	2
	.type	secp192r1_gx, @object
	.size	secp192r1_gx, 24
secp192r1_gx:
	.word	-2097213422
	.word	-184612099
	.word	1134659584
	.word	2092900587
	.word	-1338994442
	.word	411936782
	.section	.rodata.secp192r1_gy,"a"
	.align	2
	.type	secp192r1_gy, @object
	.size	secp192r1_gy, 24
secp192r1_gy:
	.word	511264785
	.word	1945728929
	.word	1797574101
	.word	1661997549
	.word	-3614088
	.word	119090069
	.section	.rodata.secp192r1_n,"a"
	.align	2
	.type	secp192r1_n, @object
	.size	secp192r1_n, 24
secp192r1_n:
	.word	-1261295567
	.word	342608305
	.word	-1713440714
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.secp192r1_T_0_X,"a"
	.align	2
	.type	secp192r1_T_0_X, @object
	.size	secp192r1_T_0_X, 24
secp192r1_T_0_X:
	.word	-2097213422
	.word	-184612099
	.word	1134659584
	.word	2092900587
	.word	-1338994442
	.word	411936782
	.section	.rodata.secp192r1_T_0_Y,"a"
	.align	2
	.type	secp192r1_T_0_Y, @object
	.size	secp192r1_T_0_Y, 24
secp192r1_T_0_Y:
	.word	511264785
	.word	1945728929
	.word	1797574101
	.word	1661997549
	.word	-3614088
	.word	119090069
	.section	.rodata.secp192r1_T_1_X,"a"
	.align	2
	.type	secp192r1_T_1_X, @object
	.size	secp192r1_T_1_X, 24
secp192r1_T_1_X:
	.word	1625530007
	.word	-1027288743
	.word	-685589103
	.word	-1229125843
	.word	869214836
	.word	-305021200
	.section	.rodata.secp192r1_T_1_Y,"a"
	.align	2
	.type	secp192r1_T_1_Y, @object
	.size	secp192r1_T_1_Y, 24
secp192r1_T_1_Y:
	.word	-1471450744
	.word	449412845
	.word	-537515378
	.word	256698382
	.word	-1963510331
	.word	517926083
	.section	.rodata.secp192r1_T_2_X,"a"
	.align	2
	.type	secp192r1_T_2_X, @object
	.size	secp192r1_T_2_X, 24
secp192r1_T_2_X:
	.word	499279616
	.word	-82800846
	.word	-216584773
	.word	332988132
	.word	1880114517
	.word	1045577260
	.section	.rodata.secp192r1_T_2_Y,"a"
	.align	2
	.type	secp192r1_T_2_Y, @object
	.size	secp192r1_T_2_Y, 24
secp192r1_T_2_Y:
	.word	1560605025
	.word	-430517010
	.word	658028408
	.word	-2021545375
	.word	248985457
	.word	336662057
	.section	.rodata.secp192r1_T_3_X,"a"
	.align	2
	.type	secp192r1_T_3_X, @object
	.size	secp192r1_T_3_X, 24
secp192r1_T_3_X:
	.word	-967690978
	.word	-181946575
	.word	-1743399875
	.word	1794369295
	.word	896545235
	.word	-1037328375
	.section	.rodata.secp192r1_T_3_Y,"a"
	.align	2
	.type	secp192r1_T_3_Y, @object
	.size	secp192r1_T_3_Y, 24
secp192r1_T_3_Y:
	.word	1286042913
	.word	-463745144
	.word	-1924655337
	.word	-309923598
	.word	1811861321
	.word	-1425627728
	.section	.rodata.secp192r1_T_4_X,"a"
	.align	2
	.type	secp192r1_T_4_X, @object
	.size	secp192r1_T_4_X, 24
secp192r1_T_4_X:
	.word	-1696830952
	.word	776436589
	.word	307362834
	.word	1493919330
	.word	-1600962355
	.word	-682075467
	.section	.rodata.secp192r1_T_4_Y,"a"
	.align	2
	.type	secp192r1_T_4_Y, @object
	.size	secp192r1_T_4_Y, 24
secp192r1_T_4_Y:
	.word	-592458769
	.word	-81354485
	.word	-1549977894
	.word	967654359
	.word	-1710933068
	.word	-1301697880
	.section	.rodata.secp192r1_T_5_X,"a"
	.align	2
	.type	secp192r1_T_5_X, @object
	.size	secp192r1_T_5_X, 24
secp192r1_T_5_X:
	.word	1305598317
	.word	513175114
	.word	959604247
	.word	-427993146
	.word	-1036607342
	.word	1644230981
	.section	.rodata.secp192r1_T_5_Y,"a"
	.align	2
	.type	secp192r1_T_5_Y, @object
	.size	secp192r1_T_5_Y, 24
secp192r1_T_5_Y:
	.word	1180299188
	.word	-1881579300
	.word	1105834020
	.word	-1988720732
	.word	-1307651053
	.word	-598337798
	.section	.rodata.secp192r1_T_6_X,"a"
	.align	2
	.type	secp192r1_T_6_X, @object
	.size	secp192r1_T_6_X, 24
secp192r1_T_6_X:
	.word	-1311612406
	.word	116503092
	.word	-984224334
	.word	352826695
	.word	-1808796137
	.word	794090947
	.section	.rodata.secp192r1_T_6_Y,"a"
	.align	2
	.type	secp192r1_T_6_Y, @object
	.size	secp192r1_T_6_Y, 24
secp192r1_T_6_Y:
	.word	-1932220675
	.word	776851113
	.word	-867808327
	.word	-1295493710
	.word	-315511238
	.word	1431922057
	.section	.rodata.secp192r1_T_7_X,"a"
	.align	2
	.type	secp192r1_T_7_X, @object
	.size	secp192r1_T_7_X, 24
secp192r1_T_7_X:
	.word	449907404
	.word	1139472069
	.word	437058572
	.word	1892196603
	.word	1867775466
	.word	-1346715795
	.section	.rodata.secp192r1_T_7_Y,"a"
	.align	2
	.type	secp192r1_T_7_Y, @object
	.size	secp192r1_T_7_Y, 24
secp192r1_T_7_Y:
	.word	-2088914899
	.word	-1647582314
	.word	743796335
	.word	1177506592
	.word	385902246
	.word	833420808
	.section	.rodata.secp192r1_T_8_X,"a"
	.align	2
	.type	secp192r1_T_8_X, @object
	.size	secp192r1_T_8_X, 24
secp192r1_T_8_X:
	.word	982979081
	.word	-851093561
	.word	10036536
	.word	1689556982
	.word	-421104485
	.word	-862134365
	.section	.rodata.secp192r1_T_8_Y,"a"
	.align	2
	.type	secp192r1_T_8_Y, @object
	.size	secp192r1_T_8_Y, 24
secp192r1_T_8_Y:
	.word	-713624526
	.word	-2047006113
	.word	1048477794
	.word	1675028709
	.word	1881058786
	.word	-2093138311
	.section	.rodata.secp192r1_T_9_X,"a"
	.align	2
	.type	secp192r1_T_9_X, @object
	.size	secp192r1_T_9_X, 24
secp192r1_T_9_X:
	.word	-1279584882
	.word	2090953282
	.word	1137399963
	.word	1746141221
	.word	294866438
	.word	-1739312416
	.section	.rodata.secp192r1_T_9_Y,"a"
	.align	2
	.type	secp192r1_T_9_Y, @object
	.size	secp192r1_T_9_Y, 24
secp192r1_T_9_Y:
	.word	-1264430425
	.word	297349719
	.word	-1314831491
	.word	-404684293
	.word	291175334
	.word	-452738376
	.section	.rodata.secp192r1_T_10_X,"a"
	.align	2
	.type	secp192r1_T_10_X, @object
	.size	secp192r1_T_10_X, 24
secp192r1_T_10_X:
	.word	644950812
	.word	851803214
	.word	-1462504161
	.word	1699255780
	.word	1574547029
	.word	-1390253409
	.section	.rodata.secp192r1_T_10_Y,"a"
	.align	2
	.type	secp192r1_T_10_Y, @object
	.size	secp192r1_T_10_Y, 24
secp192r1_T_10_Y:
	.word	1302580441
	.word	-281797472
	.word	-127779677
	.word	2102961758
	.word	-1972998547
	.word	268375869
	.section	.rodata.secp192r1_T_11_X,"a"
	.align	2
	.type	secp192r1_T_11_X, @object
	.size	secp192r1_T_11_X, 24
secp192r1_T_11_X:
	.word	-576139785
	.word	-363061039
	.word	-501743937
	.word	-563877169
	.word	382292340
	.word	-575490850
	.section	.rodata.secp192r1_T_11_Y,"a"
	.align	2
	.type	secp192r1_T_11_Y, @object
	.size	secp192r1_T_11_Y, 24
secp192r1_T_11_Y:
	.word	-686637479
	.word	860883619
	.word	-1966766253
	.word	1611093878
	.word	465969125
	.word	-1975663514
	.section	.rodata.secp192r1_T_12_X,"a"
	.align	2
	.type	secp192r1_T_12_X, @object
	.size	secp192r1_T_12_X, 24
secp192r1_T_12_X:
	.word	327525416
	.word	422946703
	.word	-193192
	.word	-271134437
	.word	-1009747270
	.word	1715072948
	.section	.rodata.secp192r1_T_12_Y,"a"
	.align	2
	.type	secp192r1_T_12_Y, @object
	.size	secp192r1_T_12_Y, 24
secp192r1_T_12_Y:
	.word	-1666843078
	.word	1078538292
	.word	641320414
	.word	385999622
	.word	-60412958
	.word	-147497067
	.section	.rodata.secp192r1_T_13_X,"a"
	.align	2
	.type	secp192r1_T_13_X, @object
	.size	secp192r1_T_13_X, 24
secp192r1_T_13_X:
	.word	1666502488
	.word	1157978009
	.word	1593864049
	.word	-1740175259
	.word	1838164578
	.word	1169999463
	.section	.rodata.secp192r1_T_13_Y,"a"
	.align	2
	.type	secp192r1_T_13_Y, @object
	.size	secp192r1_T_13_Y, 24
secp192r1_T_13_Y:
	.word	176704906
	.word	-1674338763
	.word	-133425284
	.word	38370017
	.word	-1895414620
	.word	1898934283
	.section	.rodata.secp192r1_T_14_X,"a"
	.align	2
	.type	secp192r1_T_14_X, @object
	.size	secp192r1_T_14_X, 24
secp192r1_T_14_X:
	.word	-104117371
	.word	467298958
	.word	1067533097
	.word	852629454
	.word	1825705309
	.word	-52086910
	.section	.rodata.secp192r1_T_14_Y,"a"
	.align	2
	.type	secp192r1_T_14_Y, @object
	.size	secp192r1_T_14_Y, 24
secp192r1_T_14_Y:
	.word	-1829487542
	.word	-2053797196
	.word	183604869
	.word	2121543476
	.word	-1163222661
	.word	-1571850362
	.section	.rodata.secp192r1_T_15_X,"a"
	.align	2
	.type	secp192r1_T_15_X, @object
	.size	secp192r1_T_15_X, 24
secp192r1_T_15_X:
	.word	1626308581
	.word	-724074416
	.word	-20337615
	.word	-1625683220
	.word	-1849806997
	.word	1211676631
	.section	.rodata.secp192r1_T_15_Y,"a"
	.align	2
	.type	secp192r1_T_15_Y, @object
	.size	secp192r1_T_15_Y, 24
secp192r1_T_15_Y:
	.word	-1736069455
	.word	-1619065346
	.word	301842065
	.word	320093489
	.word	820540761
	.word	479972097
	.section	.rodata.secp192r1_T,"a"
	.align	2
	.type	secp192r1_T, @object
	.size	secp192r1_T, 384
secp192r1_T:
	.word	secp192r1_T_0_X
	.half	1
	.half	6
	.word	secp192r1_T_0_Y
	.half	1
	.half	6
	.word	mpi_one
	.half	1
	.half	1
	.word	secp192r1_T_1_X
	.half	1
	.half	6
	.word	secp192r1_T_1_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_2_X
	.half	1
	.half	6
	.word	secp192r1_T_2_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_3_X
	.half	1
	.half	6
	.word	secp192r1_T_3_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_4_X
	.half	1
	.half	6
	.word	secp192r1_T_4_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_5_X
	.half	1
	.half	6
	.word	secp192r1_T_5_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_6_X
	.half	1
	.half	6
	.word	secp192r1_T_6_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_7_X
	.half	1
	.half	6
	.word	secp192r1_T_7_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_8_X
	.half	1
	.half	6
	.word	secp192r1_T_8_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_9_X
	.half	1
	.half	6
	.word	secp192r1_T_9_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_10_X
	.half	1
	.half	6
	.word	secp192r1_T_10_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_11_X
	.half	1
	.half	6
	.word	secp192r1_T_11_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_12_X
	.half	1
	.half	6
	.word	secp192r1_T_12_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_13_X
	.half	1
	.half	6
	.word	secp192r1_T_13_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_14_X
	.half	1
	.half	6
	.word	secp192r1_T_14_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192r1_T_15_X
	.half	1
	.half	6
	.word	secp192r1_T_15_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp224r1_p,"a"
	.align	2
	.type	secp224r1_p, @object
	.size	secp224r1_p, 32
secp224r1_p:
	.word	1
	.word	0
	.word	0
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.section	.rodata.secp224r1_b,"a"
	.align	2
	.type	secp224r1_b, @object
	.size	secp224r1_b, 28
secp224r1_b:
	.word	592838580
	.word	655046979
	.word	-675292998
	.word	1346678967
	.word	-180276650
	.word	201634731
	.word	-1274738043
	.section	.rodata.secp224r1_gx,"a"
	.align	2
	.type	secp224r1_gx, @object
	.size	secp224r1_gx, 28
secp224r1_gx:
	.word	291249441
	.word	875725014
	.word	1455558946
	.word	1241760211
	.word	840143033
	.word	1807007615
	.word	-1223816003
	.section	.rodata.secp224r1_gy,"a"
	.align	2
	.type	secp224r1_gy, @object
	.size	secp224r1_gy, 28
secp224r1_gy:
	.word	-2063565260
	.word	1154843033
	.word	1510426468
	.word	-851216992
	.word	1277353958
	.word	-1242094597
	.word	-1120443512
	.section	.rodata.secp224r1_n,"a"
	.align	2
	.type	secp224r1_n, @object
	.size	secp224r1_n, 28
secp224r1_n:
	.word	1549543997
	.word	333261125
	.word	-524750786
	.word	-59742
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.secp224r1_T_0_X,"a"
	.align	2
	.type	secp224r1_T_0_X, @object
	.size	secp224r1_T_0_X, 32
secp224r1_T_0_X:
	.word	291249441
	.word	875725014
	.word	1455558946
	.word	1241760211
	.word	840143033
	.word	1807007615
	.word	-1223816003
	.word	0
	.section	.rodata.secp224r1_T_0_Y,"a"
	.align	2
	.type	secp224r1_T_0_Y, @object
	.size	secp224r1_T_0_Y, 32
secp224r1_T_0_Y:
	.word	-2063565260
	.word	1154843033
	.word	1510426468
	.word	-851216992
	.word	1277353958
	.word	-1242094597
	.word	-1120443512
	.word	0
	.section	.rodata.secp224r1_T_1_X,"a"
	.align	2
	.type	secp224r1_T_1_X, @object
	.size	secp224r1_T_1_X, 32
secp224r1_T_1_X:
	.word	-793183776
	.word	-86781379
	.word	647626014
	.word	1846803993
	.word	1212943900
	.word	18326140
	.word	1460904765
	.word	0
	.section	.rodata.secp224r1_T_1_Y,"a"
	.align	2
	.type	secp224r1_T_1_Y, @object
	.size	secp224r1_T_1_Y, 32
secp224r1_T_1_Y:
	.word	-1889790305
	.word	1477438890
	.word	876856767
	.word	1277822355
	.word	-898833436
	.word	633476294
	.word	-680770605
	.word	0
	.section	.rodata.secp224r1_T_2_X,"a"
	.align	2
	.type	secp224r1_T_2_X, @object
	.size	secp224r1_T_2_X, 32
secp224r1_T_2_X:
	.word	513301187
	.word	-1555913272
	.word	2018920856
	.word	1710092280
	.word	-1234912485
	.word	-782281652
	.word	-869069777
	.word	0
	.section	.rodata.secp224r1_T_2_Y,"a"
	.align	2
	.type	secp224r1_T_2_Y, @object
	.size	secp224r1_T_2_Y, 32
secp224r1_T_2_Y:
	.word	785086970
	.word	-421986552
	.word	-673964242
	.word	1161423191
	.word	171693784
	.word	1790412572
	.word	98054379
	.word	0
	.section	.rodata.secp224r1_T_3_X,"a"
	.align	2
	.type	secp224r1_T_3_X, @object
	.size	secp224r1_T_3_X, 32
secp224r1_T_3_X:
	.word	-1703642707
	.word	-1027425306
	.word	1738955700
	.word	1692897729
	.word	-2110201872
	.word	-900977639
	.word	-986108207
	.word	0
	.section	.rodata.secp224r1_T_3_Y,"a"
	.align	2
	.type	secp224r1_T_3_Y, @object
	.size	secp224r1_T_3_Y, 32
secp224r1_T_3_Y:
	.word	1316501145
	.word	1979866030
	.word	-125045228
	.word	1114346228
	.word	896617914
	.word	-1741943577
	.word	-1373657701
	.word	0
	.section	.rodata.secp224r1_T_4_X,"a"
	.align	2
	.type	secp224r1_T_4_X, @object
	.size	secp224r1_T_4_X, 32
secp224r1_T_4_X:
	.word	-548725585
	.word	-1219366309
	.word	1521579013
	.word	1628311494
	.word	1644766440
	.word	1172044975
	.word	1434509635
	.word	0
	.section	.rodata.secp224r1_T_4_Y,"a"
	.align	2
	.type	secp224r1_T_4_Y, @object
	.size	secp224r1_T_4_Y, 32
secp224r1_T_4_Y:
	.word	-1375829444
	.word	-657463869
	.word	392340004
	.word	-94703498
	.word	-1394231234
	.word	-1439144265
	.word	92732823
	.word	0
	.section	.rodata.secp224r1_T_5_X,"a"
	.align	2
	.type	secp224r1_T_5_X, @object
	.size	secp224r1_T_5_X, 32
secp224r1_T_5_X:
	.word	1007473497
	.word	-240097583
	.word	-1917560388
	.word	-1565060976
	.word	-426031210
	.word	-287012267
	.word	2027637169
	.word	0
	.section	.rodata.secp224r1_T_5_Y,"a"
	.align	2
	.type	secp224r1_T_5_Y, @object
	.size	secp224r1_T_5_Y, 32
secp224r1_T_5_Y:
	.word	-554854591
	.word	1222620159
	.word	-1216104176
	.word	-1925136661
	.word	-841755729
	.word	1031373326
	.word	-266632293
	.word	0
	.section	.rodata.secp224r1_T_6_X,"a"
	.align	2
	.type	secp224r1_T_6_X, @object
	.size	secp224r1_T_6_X, 32
secp224r1_T_6_X:
	.word	1421550143
	.word	-61460013
	.word	-521849216
	.word	1905170057
	.word	-318050335
	.word	-11922992
	.word	660013077
	.word	0
	.section	.rodata.secp224r1_T_6_Y,"a"
	.align	2
	.type	secp224r1_T_6_Y, @object
	.size	secp224r1_T_6_Y, 32
secp224r1_T_6_Y:
	.word	-146945517
	.word	-2056348828
	.word	1802560400
	.word	-1880238271
	.word	-2143009790
	.word	-1841884210
	.word	2038461332
	.word	0
	.section	.rodata.secp224r1_T_7_X,"a"
	.align	2
	.type	secp224r1_T_7_X, @object
	.size	secp224r1_T_7_X, 32
secp224r1_T_7_X:
	.word	2104511927
	.word	1478233905
	.word	1200108909
	.word	1064838340
	.word	-1848774470
	.word	-1226919039
	.word	-137966076
	.word	0
	.section	.rodata.secp224r1_T_7_Y,"a"
	.align	2
	.type	secp224r1_T_7_Y, @object
	.size	secp224r1_T_7_Y, 32
secp224r1_T_7_Y:
	.word	-399663895
	.word	277807314
	.word	243031765
	.word	39349772
	.word	-836664914
	.word	1025832003
	.word	-185549666
	.word	0
	.section	.rodata.secp224r1_T_8_X,"a"
	.align	2
	.type	secp224r1_T_8_X, @object
	.size	secp224r1_T_8_X, 32
secp224r1_T_8_X:
	.word	1958875350
	.word	-813002934
	.word	737437577
	.word	389360440
	.word	-1458771979
	.word	-1118013446
	.word	723071968
	.word	0
	.section	.rodata.secp224r1_T_8_Y,"a"
	.align	2
	.type	secp224r1_T_8_Y, @object
	.size	secp224r1_T_8_Y, 32
secp224r1_T_8_Y:
	.word	580271847
	.word	-1091968685
	.word	-1581509664
	.word	436333590
	.word	2059993242
	.word	1168470979
	.word	-1050741535
	.word	0
	.section	.rodata.secp224r1_T_9_X,"a"
	.align	2
	.type	secp224r1_T_9_X, @object
	.size	secp224r1_T_9_X, 32
secp224r1_T_9_X:
	.word	-640248408
	.word	-802475982
	.word	84492919
	.word	-2105660831
	.word	94536819
	.word	-110795640
	.word	-1282396925
	.word	0
	.section	.rodata.secp224r1_T_9_Y,"a"
	.align	2
	.type	secp224r1_T_9_Y, @object
	.size	secp224r1_T_9_Y, 32
secp224r1_T_9_Y:
	.word	-2060523766
	.word	2038202453
	.word	2024587535
	.word	1861988276
	.word	-1909931053
	.word	1478432889
	.word	1238320692
	.word	0
	.section	.rodata.secp224r1_T_10_X,"a"
	.align	2
	.type	secp224r1_T_10_X, @object
	.size	secp224r1_T_10_X, 32
secp224r1_T_10_X:
	.word	1822973795
	.word	-96238778
	.word	294889978
	.word	1951860662
	.word	60631671
	.word	1020755593
	.word	-815625093
	.word	0
	.section	.rodata.secp224r1_T_10_Y,"a"
	.align	2
	.type	secp224r1_T_10_Y, @object
	.size	secp224r1_T_10_Y, 32
secp224r1_T_10_Y:
	.word	1494428740
	.word	-1635452212
	.word	-1136084655
	.word	2092156759
	.word	607652604
	.word	623393326
	.word	-1203565892
	.word	0
	.section	.rodata.secp224r1_T_11_X,"a"
	.align	2
	.type	secp224r1_T_11_X, @object
	.size	secp224r1_T_11_X, 32
secp224r1_T_11_X:
	.word	-1045748391
	.word	-516132626
	.word	491117555
	.word	896893002
	.word	760029160
	.word	-873200230
	.word	1525682283
	.word	0
	.section	.rodata.secp224r1_T_11_Y,"a"
	.align	2
	.type	secp224r1_T_11_Y, @object
	.size	secp224r1_T_11_Y, 32
secp224r1_T_11_Y:
	.word	-589195979
	.word	2076411413
	.word	-785916692
	.word	219455830
	.word	2010516313
	.word	-123583410
	.word	527516308
	.word	0
	.section	.rodata.secp224r1_T_12_X,"a"
	.align	2
	.type	secp224r1_T_12_X, @object
	.size	secp224r1_T_12_X, 32
secp224r1_T_12_X:
	.word	-1330477520
	.word	-25481272
	.word	-607391850
	.word	-985948484
	.word	-578419941
	.word	1183708507
	.word	-696674984
	.word	0
	.section	.rodata.secp224r1_T_12_Y,"a"
	.align	2
	.type	secp224r1_T_12_Y, @object
	.size	secp224r1_T_12_Y, 32
secp224r1_T_12_Y:
	.word	-636210556
	.word	956780443
	.word	117128885
	.word	1077979118
	.word	1910447990
	.word	-1098121887
	.word	-1951691904
	.word	0
	.section	.rodata.secp224r1_T_13_X,"a"
	.align	2
	.type	secp224r1_T_13_X, @object
	.size	secp224r1_T_13_X, 32
secp224r1_T_13_X:
	.word	-1263323959
	.word	1588633532
	.word	-1471653658
	.word	789822327
	.word	888653377
	.word	169970124
	.word	534590410
	.word	0
	.section	.rodata.secp224r1_T_13_Y,"a"
	.align	2
	.type	secp224r1_T_13_Y, @object
	.size	secp224r1_T_13_Y, 32
secp224r1_T_13_Y:
	.word	-1527807540
	.word	-854912782
	.word	1919874947
	.word	-388112566
	.word	1393173351
	.word	-765323773
	.word	1023243787
	.word	0
	.section	.rodata.secp224r1_T_14_X,"a"
	.align	2
	.type	secp224r1_T_14_X, @object
	.size	secp224r1_T_14_X, 32
secp224r1_T_14_X:
	.word	-90106677
	.word	129898656
	.word	-673109501
	.word	-559911760
	.word	-961494831
	.word	1322067043
	.word	-1322502093
	.word	0
	.section	.rodata.secp224r1_T_14_Y,"a"
	.align	2
	.type	secp224r1_T_14_Y, @object
	.size	secp224r1_T_14_Y, 32
secp224r1_T_14_Y:
	.word	545115630
	.word	-1012072948
	.word	-1566599415
	.word	2079802806
	.word	-755787318
	.word	82510368
	.word	2069567555
	.word	0
	.section	.rodata.secp224r1_T_15_X,"a"
	.align	2
	.type	secp224r1_T_15_X, @object
	.size	secp224r1_T_15_X, 32
secp224r1_T_15_X:
	.word	-1854415573
	.word	-738334112
	.word	-692726915
	.word	437131152
	.word	-1054280704
	.word	1677087730
	.word	1641830473
	.word	0
	.section	.rodata.secp224r1_T_15_Y,"a"
	.align	2
	.type	secp224r1_T_15_Y, @object
	.size	secp224r1_T_15_Y, 32
secp224r1_T_15_Y:
	.word	-83812184
	.word	1163902449
	.word	-637108272
	.word	-1497707759
	.word	-1543487065
	.word	2033397787
	.word	-903348236
	.word	0
	.section	.rodata.secp224r1_T,"a"
	.align	2
	.type	secp224r1_T, @object
	.size	secp224r1_T, 384
secp224r1_T:
	.word	secp224r1_T_0_X
	.half	1
	.half	8
	.word	secp224r1_T_0_Y
	.half	1
	.half	8
	.word	mpi_one
	.half	1
	.half	1
	.word	secp224r1_T_1_X
	.half	1
	.half	8
	.word	secp224r1_T_1_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_2_X
	.half	1
	.half	8
	.word	secp224r1_T_2_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_3_X
	.half	1
	.half	8
	.word	secp224r1_T_3_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_4_X
	.half	1
	.half	8
	.word	secp224r1_T_4_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_5_X
	.half	1
	.half	8
	.word	secp224r1_T_5_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_6_X
	.half	1
	.half	8
	.word	secp224r1_T_6_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_7_X
	.half	1
	.half	8
	.word	secp224r1_T_7_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_8_X
	.half	1
	.half	8
	.word	secp224r1_T_8_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_9_X
	.half	1
	.half	8
	.word	secp224r1_T_9_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_10_X
	.half	1
	.half	8
	.word	secp224r1_T_10_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_11_X
	.half	1
	.half	8
	.word	secp224r1_T_11_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_12_X
	.half	1
	.half	8
	.word	secp224r1_T_12_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_13_X
	.half	1
	.half	8
	.word	secp224r1_T_13_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_14_X
	.half	1
	.half	8
	.word	secp224r1_T_14_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224r1_T_15_X
	.half	1
	.half	8
	.word	secp224r1_T_15_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp256r1_p,"a"
	.align	2
	.type	secp256r1_p, @object
	.size	secp256r1_p, 32
secp256r1_p:
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.section	.rodata.secp256r1_b,"a"
	.align	2
	.type	secp256r1_b, @object
	.size	secp256r1_b, 32
secp256r1_b:
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.section	.rodata.secp256r1_gx,"a"
	.align	2
	.type	secp256r1_gx, @object
	.size	secp256r1_gx, 32
secp256r1_gx:
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.section	.rodata.secp256r1_gy,"a"
	.align	2
	.type	secp256r1_gy, @object
	.size	secp256r1_gy, 32
secp256r1_gy:
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.section	.rodata.secp256r1_n,"a"
	.align	2
	.type	secp256r1_n, @object
	.size	secp256r1_n, 32
secp256r1_n:
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.section	.rodata.secp256r1_T_0_X,"a"
	.align	2
	.type	secp256r1_T_0_X, @object
	.size	secp256r1_T_0_X, 32
secp256r1_T_0_X:
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.section	.rodata.secp256r1_T_0_Y,"a"
	.align	2
	.type	secp256r1_T_0_Y, @object
	.size	secp256r1_T_0_Y, 32
secp256r1_T_0_Y:
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.section	.rodata.secp256r1_T_1_X,"a"
	.align	2
	.type	secp256r1_T_1_X, @object
	.size	secp256r1_T_1_X, 32
secp256r1_T_1_X:
	.word	79349872
	.word	-137213001
	.word	975423147
	.word	1496975776
	.word	-112419555
	.word	-540269736
	.word	695987458
	.word	1023020935
	.section	.rodata.secp256r1_T_1_Y,"a"
	.align	2
	.type	secp256r1_T_1_Y, @object
	.size	secp256r1_T_1_Y, 32
secp256r1_T_1_Y:
	.word	1089628480
	.word	-828857589
	.word	38316207
	.word	1645353997
	.word	-2096517221
	.word	-1487361408
	.word	1891504838
	.word	-454855020
	.section	.rodata.secp256r1_T_2_X,"a"
	.align	2
	.type	secp256r1_T_2_X, @object
	.size	secp256r1_T_2_X, 32
secp256r1_T_2_X:
	.word	-2031125123
	.word	-583539713
	.word	143361755
	.word	-153650137
	.word	625759377
	.word	687774287
	.word	1844510046
	.word	-697760969
	.section	.rodata.secp256r1_T_2_Y,"a"
	.align	2
	.type	secp256r1_T_2_Y, @object
	.size	secp256r1_T_2_Y, 32
secp256r1_T_2_Y:
	.word	-1378167402
	.word	-1611642478
	.word	-1639746567
	.word	-204363857
	.word	-553172633
	.word	-1589734024
	.word	-422494942
	.word	551724348
	.section	.rodata.secp256r1_T_3_X,"a"
	.align	2
	.type	secp256r1_T_3_X, @object
	.size	secp256r1_T_3_X, 32
secp256r1_T_3_X:
	.word	1381853887
	.word	-1363159243
	.word	-1765891494
	.word	-1023215372
	.word	1414078628
	.word	-612191254
	.word	48945966
	.word	1646032337
	.section	.rodata.secp256r1_T_3_Y,"a"
	.align	2
	.type	secp256r1_T_3_Y, @object
	.size	secp256r1_T_3_Y, 32
secp256r1_T_3_Y:
	.word	-1628142096
	.word	-1992696756
	.word	1472490851
	.word	576521176
	.word	1378713456
	.word	1339738479
	.word	-1258658659
	.word	-674978562
	.section	.rodata.secp256r1_T_4_X,"a"
	.align	2
	.type	secp256r1_T_4_X, @object
	.size	secp256r1_T_4_X, 32
secp256r1_T_4_X:
	.word	-1061603542
	.word	-1949935190
	.word	-304523201
	.word	-144336552
	.word	-1943634552
	.word	-1626998454
	.word	-912624739
	.word	14436071
	.section	.rodata.secp256r1_T_4_Y,"a"
	.align	2
	.type	secp256r1_T_4_Y, @object
	.size	secp256r1_T_4_Y, 32
secp256r1_T_4_Y:
	.word	-548024078
	.word	1257572864
	.word	-2125021334
	.word	-1242882003
	.word	1378402577
	.word	1087497131
	.word	1165571108
	.word	51553623
	.section	.rodata.secp256r1_T_5_X,"a"
	.align	2
	.type	secp256r1_T_5_X, @object
	.size	secp256r1_T_5_X, 32
secp256r1_T_5_X:
	.word	2126041070
	.word	-1919511817
	.word	227279165
	.word	98824739
	.word	-2065486247
	.word	1983150674
	.word	363897317
	.word	1012130448
	.section	.rodata.secp256r1_T_5_Y,"a"
	.align	2
	.type	secp256r1_T_5_Y, @object
	.size	secp256r1_T_5_Y, 32
secp256r1_T_5_Y:
	.word	-85485356
	.word	1401650597
	.word	13776273
	.word	463412177
	.word	-1710724801
	.word	296349810
	.word	336527027
	.word	-754025254
	.section	.rodata.secp256r1_T_6_X,"a"
	.align	2
	.type	secp256r1_T_6_X, @object
	.size	secp256r1_T_6_X, 32
secp256r1_T_6_X:
	.word	-118950269
	.word	1845294983
	.word	1065336464
	.word	332868474
	.word	770847439
	.word	-45978220
	.word	1608751789
	.word	-310068414
	.section	.rodata.secp256r1_T_6_Y,"a"
	.align	2
	.type	secp256r1_T_6_Y, @object
	.size	secp256r1_T_6_Y, 32
secp256r1_T_6_Y:
	.word	1932105212
	.word	37644193
	.word	894709987
	.word	1742539406
	.word	-1751001341
	.word	217594721
	.word	1480340466
	.word	-1557973931
	.section	.rodata.secp256r1_T_7_X,"a"
	.align	2
	.type	secp256r1_T_7_X, @object
	.size	secp256r1_T_7_X, 32
secp256r1_T_7_X:
	.word	1595301273
	.word	-826557317
	.word	-1974538655
	.word	1355567553
	.word	458034463
	.word	-1289936045
	.word	1714957018
	.word	-1780382638
	.section	.rodata.secp256r1_T_7_Y,"a"
	.align	2
	.type	secp256r1_T_7_Y, @object
	.size	secp256r1_T_7_Y, 32
secp256r1_T_7_Y:
	.word	176397147
	.word	-1397928063
	.word	1094909711
	.word	-1599952530
	.word	525312303
	.word	1051361929
	.word	1796192499
	.word	1758891151
	.section	.rodata.secp256r1_T_8_X,"a"
	.align	2
	.type	secp256r1_T_8_X, @object
	.size	secp256r1_T_8_X, 32
secp256r1_T_8_X:
	.word	1371255793
	.word	-1827560855
	.word	-1928376475
	.word	-401660227
	.word	1810680761
	.word	-1656896716
	.word	270425572
	.word	1424114901
	.section	.rodata.secp256r1_T_8_Y,"a"
	.align	2
	.type	secp256r1_T_8_Y, @object
	.size	secp256r1_T_8_Y, 32
secp256r1_T_8_Y:
	.word	-240017880
	.word	-1280488338
	.word	1489167287
	.word	1127545792
	.word	903846949
	.word	431833351
	.word	-334467402
	.word	-692327410
	.section	.rodata.secp256r1_T_9_X,"a"
	.align	2
	.type	secp256r1_T_9_X, @object
	.size	secp256r1_T_9_X, 32
secp256r1_T_9_X:
	.word	1072680904
	.word	-393733501
	.word	-1179309813
	.word	-1364997664
	.word	1998472840
	.word	280198861
	.word	-724557386
	.word	-301459805
	.section	.rodata.secp256r1_T_9_Y,"a"
	.align	2
	.type	secp256r1_T_9_Y, @object
	.size	secp256r1_T_9_Y, 32
secp256r1_T_9_Y:
	.word	-1280783711
	.word	-1902564929
	.word	-1056574767
	.word	1217486287
	.word	-615972449
	.word	979361666
	.word	-1383069983
	.word	-995870493
	.section	.rodata.secp256r1_T_10_X,"a"
	.align	2
	.type	secp256r1_T_10_X, @object
	.size	secp256r1_T_10_X, 32
secp256r1_T_10_X:
	.word	-398798135
	.word	1567474947
	.word	-1362086466
	.word	-895518179
	.word	-875422157
	.word	1428654252
	.word	-526599696
	.word	-2036736719
	.section	.rodata.secp256r1_T_10_Y,"a"
	.align	2
	.type	secp256r1_T_10_Y, @object
	.size	secp256r1_T_10_Y, 32
secp256r1_T_10_Y:
	.word	849082721
	.word	945308054
	.word	-1205183751
	.word	1286737558
	.word	-953386815
	.word	605657352
	.word	-383231561
	.word	384193668
	.section	.rodata.secp256r1_T_11_X,"a"
	.align	2
	.type	secp256r1_T_11_X, @object
	.size	secp256r1_T_11_X, 32
secp256r1_T_11_X:
	.word	-617596707
	.word	-1576391568
	.word	-375563140
	.word	1594574549
	.word	1264585603
	.word	-910590665
	.word	1039344734
	.word	409763705
	.section	.rodata.secp256r1_T_11_Y,"a"
	.align	2
	.type	secp256r1_T_11_Y, @object
	.size	secp256r1_T_11_Y, 32
secp256r1_T_11_Y:
	.word	1327293823
	.word	720839776
	.word	-1847404307
	.word	-1840674433
	.word	-1926322281
	.word	-2126924950
	.word	-1699378925
	.word	-1673359944
	.section	.rodata.secp256r1_T_12_X,"a"
	.align	2
	.type	secp256r1_T_12_X, @object
	.size	secp256r1_T_12_X, 32
secp256r1_T_12_X:
	.word	1273382285
	.word	522080063
	.word	1499358535
	.word	1601358882
	.word	656053233
	.word	1539650590
	.word	1487270499
	.word	-970058404
	.section	.rodata.secp256r1_T_12_Y,"a"
	.align	2
	.type	secp256r1_T_12_Y, @object
	.size	secp256r1_T_12_Y, 32
secp256r1_T_12_Y:
	.word	1488617460
	.word	1601143898
	.word	2117510829
	.word	1742862300
	.word	-290829052
	.word	-751143337
	.word	405175886
	.word	-6347998
	.section	.rodata.secp256r1_T_13_X,"a"
	.align	2
	.type	secp256r1_T_13_X, @object
	.size	secp256r1_T_13_X, 32
secp256r1_T_13_X:
	.word	-949728227
	.word	-482409899
	.word	-1148189992
	.word	1076948163
	.word	-194744417
	.word	-1538758378
	.word	-1784920838
	.word	1583840524
	.section	.rodata.secp256r1_T_13_Y,"a"
	.align	2
	.type	secp256r1_T_13_Y, @object
	.size	secp256r1_T_13_Y, 32
secp256r1_T_13_Y:
	.word	-661941948
	.word	-488122416
	.word	1648949535
	.word	1569957999
	.word	43596522
	.word	-482538539
	.word	822137630
	.word	1151274214
	.section	.rodata.secp256r1_T_14_X,"a"
	.align	2
	.type	secp256r1_T_14_X, @object
	.size	secp256r1_T_14_X, 32
secp256r1_T_14_X:
	.word	-39144874
	.word	1390351752
	.word	824653132
	.word	1757465924
	.word	-1517160365
	.word	713331825
	.word	-1815032942
	.word	-455440151
	.section	.rodata.secp256r1_T_14_Y,"a"
	.align	2
	.type	secp256r1_T_14_Y, @object
	.size	secp256r1_T_14_Y, 32
secp256r1_T_14_Y:
	.word	372885028
	.word	1830724445
	.word	641140666
	.word	1627269686
	.word	-789332911
	.word	-1745071906
	.word	268840576
	.word	-134591211
	.section	.rodata.secp256r1_T_15_X,"a"
	.align	2
	.type	secp256r1_T_15_X, @object
	.size	secp256r1_T_15_X, 32
secp256r1_T_15_X:
	.word	1533633831
	.word	779461222
	.word	1509955228
	.word	438644912
	.word	1116142402
	.word	1992606080
	.word	-1904009893
	.word	-2107702892
	.section	.rodata.secp256r1_T_15_Y,"a"
	.align	2
	.type	secp256r1_T_15_Y, @object
	.size	secp256r1_T_15_Y, 32
secp256r1_T_15_Y:
	.word	-277858503
	.word	-604987105
	.word	-832892822
	.word	275749828
	.word	605098320
	.word	1635339343
	.word	-1133364713
	.word	1129870078
	.section	.rodata.secp256r1_T,"a"
	.align	2
	.type	secp256r1_T, @object
	.size	secp256r1_T, 384
secp256r1_T:
	.word	secp256r1_T_0_X
	.half	1
	.half	8
	.word	secp256r1_T_0_Y
	.half	1
	.half	8
	.word	mpi_one
	.half	1
	.half	1
	.word	secp256r1_T_1_X
	.half	1
	.half	8
	.word	secp256r1_T_1_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_2_X
	.half	1
	.half	8
	.word	secp256r1_T_2_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_3_X
	.half	1
	.half	8
	.word	secp256r1_T_3_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_4_X
	.half	1
	.half	8
	.word	secp256r1_T_4_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_5_X
	.half	1
	.half	8
	.word	secp256r1_T_5_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_6_X
	.half	1
	.half	8
	.word	secp256r1_T_6_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_7_X
	.half	1
	.half	8
	.word	secp256r1_T_7_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_8_X
	.half	1
	.half	8
	.word	secp256r1_T_8_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_9_X
	.half	1
	.half	8
	.word	secp256r1_T_9_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_10_X
	.half	1
	.half	8
	.word	secp256r1_T_10_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_11_X
	.half	1
	.half	8
	.word	secp256r1_T_11_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_12_X
	.half	1
	.half	8
	.word	secp256r1_T_12_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_13_X
	.half	1
	.half	8
	.word	secp256r1_T_13_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_14_X
	.half	1
	.half	8
	.word	secp256r1_T_14_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256r1_T_15_X
	.half	1
	.half	8
	.word	secp256r1_T_15_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp384r1_p,"a"
	.align	2
	.type	secp384r1_p, @object
	.size	secp384r1_p, 48
secp384r1_p:
	.word	-1
	.word	0
	.word	0
	.word	-1
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.secp384r1_b,"a"
	.align	2
	.type	secp384r1_b, @object
	.size	secp384r1_b, 48
secp384r1_b:
	.word	-739497233
	.word	713410797
	.word	-1976643171
	.word	-967427699
	.word	1343457114
	.word	51644559
	.word	-25083630
	.word	404593774
	.word	-470274791
	.word	-1735522965
	.word	-499193884
	.word	-1288622169
	.section	.rodata.secp384r1_gx,"a"
	.align	2
	.type	secp384r1_gx, @object
	.size	secp384r1_gx, 48
secp384r1_gx:
	.word	1920338615
	.word	978607672
	.word	-1084937876
	.word	1426256477
	.word	-2108413384
	.word	1509376480
	.word	-1951949928
	.word	1847409506
	.word	-215962252
	.word	-1900951778
	.word	-1098185417
	.word	-1433941470
	.section	.rodata.secp384r1_gy,"a"
	.align	2
	.type	secp384r1_gy, @object
	.size	secp384r1_gy, 48
secp384r1_gy:
	.word	-1863709089
	.word	2051218812
	.word	494829981
	.word	174109134
	.word	-1242515264
	.word	-371576557
	.word	681186428
	.word	-118219331
	.word	-1835869143
	.word	1570674879
	.word	-1775883153
	.word	907533898
	.section	.rodata.secp384r1_n,"a"
	.align	2
	.type	secp384r1_n, @object
	.size	secp384r1_n, 48
secp384r1_n:
	.word	-859494029
	.word	-320071318
	.word	1219536762
	.word	1478102450
	.word	-197710369
	.word	-949793407
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.secp384r1_T_0_X,"a"
	.align	2
	.type	secp384r1_T_0_X, @object
	.size	secp384r1_T_0_X, 48
secp384r1_T_0_X:
	.word	1920338615
	.word	978607672
	.word	-1084937876
	.word	1426256477
	.word	-2108413384
	.word	1509376480
	.word	-1951949928
	.word	1847409506
	.word	-215962252
	.word	-1900951778
	.word	-1098185417
	.word	-1433941470
	.section	.rodata.secp384r1_T_0_Y,"a"
	.align	2
	.type	secp384r1_T_0_Y, @object
	.size	secp384r1_T_0_Y, 48
secp384r1_T_0_Y:
	.word	-1863709089
	.word	2051218812
	.word	494829981
	.word	174109134
	.word	-1242515264
	.word	-371576557
	.word	681186428
	.word	-118219331
	.word	-1835869143
	.word	1570674879
	.word	-1775883153
	.word	907533898
	.section	.rodata.secp384r1_T_1_X,"a"
	.align	2
	.type	secp384r1_T_1_X, @object
	.size	secp384r1_T_1_X, 48
secp384r1_T_1_X:
	.word	738234950
	.word	924834680
	.word	-1209273577
	.word	-1128859898
	.word	-819151811
	.word	-413930024
	.word	-1552190126
	.word	-2060663893
	.word	1098423781
	.word	-1400604938
	.word	1390958164
	.word	-1113011277
	.section	.rodata.secp384r1_T_1_Y,"a"
	.align	2
	.type	secp384r1_T_1_Y, @object
	.size	secp384r1_T_1_Y, 48
secp384r1_T_1_Y:
	.word	-1532038547
	.word	-635729482
	.word	483266305
	.word	1280374396
	.word	-426710196
	.word	2060765005
	.word	-1976743471
	.word	-1805608703
	.word	-1684307873
	.word	-653807510
	.word	1508811458
	.word	599561662
	.section	.rodata.secp384r1_T_2_X,"a"
	.align	2
	.type	secp384r1_T_2_X, @object
	.size	secp384r1_T_2_X, 48
secp384r1_T_2_X:
	.word	-1370055194
	.word	-1742734503
	.word	-2137936689
	.word	1483647111
	.word	145164336
	.word	1744581268
	.word	-2070009441
	.word	2121197044
	.word	1354309973
	.word	-946014172
	.word	-1040120780
	.word	-566331397
	.section	.rodata.secp384r1_T_2_Y,"a"
	.align	2
	.type	secp384r1_T_2_Y, @object
	.size	secp384r1_T_2_Y, 48
secp384r1_T_2_Y:
	.word	-470927360
	.word	-1494442553
	.word	1137674422
	.word	-1906404614
	.word	-129774871
	.word	1971210555
	.word	401336092
	.word	-507345339
	.word	844589458
	.word	13737184
	.word	1303908569
	.word	-485624648
	.section	.rodata.secp384r1_T_3_X,"a"
	.align	2
	.type	secp384r1_T_3_X, @object
	.size	secp384r1_T_3_X, 48
secp384r1_T_3_X:
	.word	-1298473888
	.word	371669369
	.word	1004826959
	.word	-1559470003
	.word	1075428693
	.word	1512708602
	.word	1126103117
	.word	-275951455
	.word	1098651811
	.word	1478196474
	.word	-1004250880
	.word	-1378633751
	.section	.rodata.secp384r1_T_3_Y,"a"
	.align	2
	.type	secp384r1_T_3_Y, @object
	.size	secp384r1_T_3_Y, 48
secp384r1_T_3_Y:
	.word	1664942523
	.word	-1217444524
	.word	-1558596997
	.word	876748166
	.word	411501188
	.word	1897550482
	.word	1571887212
	.word	-29943016
	.word	-1168018188
	.word	809545496
	.word	1379696090
	.word	1873807119
	.section	.rodata.secp384r1_T_4_X,"a"
	.align	2
	.type	secp384r1_T_4_X, @object
	.size	secp384r1_T_4_X, 48
secp384r1_T_4_X:
	.word	-1441580791
	.word	815338848
	.word	-959774697
	.word	-1869096015
	.word	-1201603866
	.word	-746724316
	.word	1890809309
	.word	-1682865230
	.word	-848501853
	.word	1450861107
	.word	266088584
	.word	-1430733921
	.section	.rodata.secp384r1_T_4_Y,"a"
	.align	2
	.type	secp384r1_T_4_Y, @object
	.size	secp384r1_T_4_Y, 48
secp384r1_T_4_Y:
	.word	1611322790
	.word	382056833
	.word	-701519292
	.word	-337677326
	.word	-915112973
	.word	1838504883
	.word	367723692
	.word	-167747640
	.word	673206453
	.word	-256966191
	.word	827288872
	.word	1217671041
	.section	.rodata.secp384r1_T_5_X,"a"
	.align	2
	.type	secp384r1_T_5_X, @object
	.size	secp384r1_T_5_X, 48
secp384r1_T_5_X:
	.word	-1227346106
	.word	1357479011
	.word	347704537
	.word	-563922983
	.word	1186464272
	.word	947637933
	.word	1714243458
	.word	590604711
	.word	-1802241646
	.word	1337149608
	.word	1370245865
	.word	439317000
	.section	.rodata.secp384r1_T_5_Y,"a"
	.align	2
	.type	secp384r1_T_5_Y, @object
	.size	secp384r1_T_5_Y, 48
secp384r1_T_5_Y:
	.word	-106910246
	.word	-1753685631
	.word	-664561094
	.word	387611066
	.word	2054893876
	.word	763190618
	.word	1259509379
	.word	-1210054375
	.word	-296252843
	.word	-327258546
	.word	-597058287
	.word	148429491
	.section	.rodata.secp384r1_T_6_X,"a"
	.align	2
	.type	secp384r1_T_6_X, @object
	.size	secp384r1_T_6_X, 48
secp384r1_T_6_X:
	.word	50547048
	.word	1244163891
	.word	94886749
	.word	-78777460
	.word	-1464757618
	.word	996412908
	.word	-788661170
	.word	1562085451
	.word	1766956163
	.word	-176983602
	.word	588536504
	.word	1600341530
	.section	.rodata.secp384r1_T_6_Y,"a"
	.align	2
	.type	secp384r1_T_6_Y, @object
	.size	secp384r1_T_6_Y, 48
secp384r1_T_6_Y:
	.word	1148210364
	.word	-303051496
	.word	1692223938
	.word	-1840415106
	.word	159134370
	.word	752238544
	.word	1699733613
	.word	1045723660
	.word	1258027542
	.word	-1940227660
	.word	723213572
	.word	1956297946
	.section	.rodata.secp384r1_T_7_X,"a"
	.align	2
	.type	secp384r1_T_7_X, @object
	.size	secp384r1_T_7_X, 48
secp384r1_T_7_X:
	.word	-145314735
	.word	191385951
	.word	-1138892602
	.word	61623827
	.word	-423234121
	.word	-876967726
	.word	589827834
	.word	-285579432
	.word	-666140514
	.word	-468328508
	.word	-430436623
	.word	63068460
	.section	.rodata.secp384r1_T_7_Y,"a"
	.align	2
	.type	secp384r1_T_7_Y, @object
	.size	secp384r1_T_7_Y, 48
secp384r1_T_7_Y:
	.word	-1725487461
	.word	186788630
	.word	-1013976134
	.word	956078890
	.word	1032007420
	.word	456957694
	.word	768431880
	.word	-1254602303
	.word	864764565
	.word	32120713
	.word	-686613078
	.word	-348210352
	.section	.rodata.secp384r1_T_8_X,"a"
	.align	2
	.type	secp384r1_T_8_X, @object
	.size	secp384r1_T_8_X, 48
secp384r1_T_8_X:
	.word	-766338350
	.word	-224953260
	.word	-311544864
	.word	-984578087
	.word	377369946
	.word	-1199368896
	.word	-1415304397
	.word	-18181885
	.word	-281458751
	.word	-1865393915
	.word	1980572863
	.word	-1358408943
	.section	.rodata.secp384r1_T_8_Y,"a"
	.align	2
	.type	secp384r1_T_8_Y, @object
	.size	secp384r1_T_8_Y, 48
secp384r1_T_8_Y:
	.word	-1109577953
	.word	-441366448
	.word	1434721408
	.word	-152365960
	.word	-1505861927
	.word	80213679
	.word	1709314535
	.word	999637450
	.word	-422018130
	.word	755376717
	.word	707100666
	.word	-1757009750
	.section	.rodata.secp384r1_T_9_X,"a"
	.align	2
	.type	secp384r1_T_9_X, @object
	.size	secp384r1_T_9_X, 48
secp384r1_T_9_X:
	.word	1444273017
	.word	1455475588
	.word	135191382
	.word	-1630210615
	.word	449864422
	.word	131404668
	.word	-531387011
	.word	-1063247566
	.word	562116805
	.word	-1143861725
	.word	-804957924
	.word	1906934302
	.section	.rodata.secp384r1_T_9_Y,"a"
	.align	2
	.type	secp384r1_T_9_Y, @object
	.size	secp384r1_T_9_Y, 48
secp384r1_T_9_Y:
	.word	-1087913049
	.word	-1179145530
	.word	-549100085
	.word	1175930553
	.word	-1304479499
	.word	483024305
	.word	1668032904
	.word	-1203185687
	.word	-1713901124
	.word	-1727675764
	.word	-2107709843
	.word	-713104019
	.section	.rodata.secp384r1_T_10_X,"a"
	.align	2
	.type	secp384r1_T_10_X, @object
	.size	secp384r1_T_10_X, 48
secp384r1_T_10_X:
	.word	2113560955
	.word	1672928001
	.word	962119185
	.word	595773172
	.word	-2139465145
	.word	-659895032
	.word	1069976794
	.word	-194468548
	.word	399898043
	.word	-1965541714
	.word	-980243001
	.word	-1847956393
	.section	.rodata.secp384r1_T_10_Y,"a"
	.align	2
	.type	secp384r1_T_10_Y, @object
	.size	secp384r1_T_10_Y, 48
secp384r1_T_10_Y:
	.word	-1072207896
	.word	-2071168960
	.word	-1426808962
	.word	-1300341542
	.word	1044568982
	.word	1738564722
	.word	390199591
	.word	-1461132477
	.word	1137499494
	.word	50665086
	.word	1221544758
	.word	-443530865
	.section	.rodata.secp384r1_T_11_X,"a"
	.align	2
	.type	secp384r1_T_11_X, @object
	.size	secp384r1_T_11_X, 48
secp384r1_T_11_X:
	.word	-1653928808
	.word	1555825698
	.word	796484486
	.word	-561377686
	.word	37709609
	.word	1954517432
	.word	-1604053764
	.word	1349252147
	.word	-2022620132
	.word	1161791672
	.word	92613403
	.word	357778629
	.section	.rodata.secp384r1_T_11_Y,"a"
	.align	2
	.type	secp384r1_T_11_Y, @object
	.size	secp384r1_T_11_Y, 48
secp384r1_T_11_Y:
	.word	-771871938
	.word	786658076
	.word	-744410266
	.word	-761455511
	.word	-1229301024
	.word	76815278
	.word	1552970927
	.word	1161474135
	.word	546516957
	.word	-1927457756
	.word	1906145530
	.word	-1740022425
	.section	.rodata.secp384r1_T_12_X,"a"
	.align	2
	.type	secp384r1_T_12_X, @object
	.size	secp384r1_T_12_X, 48
secp384r1_T_12_X:
	.word	286181394
	.word	1771036813
	.word	1819901785
	.word	-1313032353
	.word	1015275912
	.word	-1762739438
	.word	465879594
	.word	398029121
	.word	498855600
	.word	-225947511
	.word	1951735036
	.word	1066589931
	.section	.rodata.secp384r1_T_12_Y,"a"
	.align	2
	.type	secp384r1_T_12_Y, @object
	.size	secp384r1_T_12_Y, 48
secp384r1_T_12_Y:
	.word	110246044
	.word	-1296838631
	.word	-1557751510
	.word	-2118000033
	.word	-1006764939
	.word	-1893456202
	.word	1239920047
	.word	-1773443913
	.word	-1382723988
	.word	817298951
	.word	770118991
	.word	269003033
	.section	.rodata.secp384r1_T_13_X,"a"
	.align	2
	.type	secp384r1_T_13_X, @object
	.size	secp384r1_T_13_X, 48
secp384r1_T_13_X:
	.word	179092926
	.word	-83924161
	.word	343205088
	.word	1897754841
	.word	-1150177038
	.word	731257048
	.word	-1877362470
	.word	32421248
	.word	-1507843695
	.word	1862486039
	.word	1840979427
	.word	-248242028
	.section	.rodata.secp384r1_T_13_Y,"a"
	.align	2
	.type	secp384r1_T_13_Y, @object
	.size	secp384r1_T_13_Y, 48
secp384r1_T_13_Y:
	.word	1265074777
	.word	-490844530
	.word	-126362946
	.word	757814563
	.word	635306588
	.word	1366568245
	.word	196611280
	.word	78494265
	.word	1294470822
	.word	467942881
	.word	-737481635
	.word	-1332886344
	.section	.rodata.secp384r1_T_14_X,"a"
	.align	2
	.type	secp384r1_T_14_X, @object
	.size	secp384r1_T_14_X, 48
secp384r1_T_14_X:
	.word	-1026660290
	.word	1829522773
	.word	848502939
	.word	1202640528
	.word	1135311069
	.word	-1368134754
	.word	-2084333587
	.word	-1074709338
	.word	1713710351
	.word	1274684936
	.word	1564801857
	.word	-1405358974
	.section	.rodata.secp384r1_T_14_Y,"a"
	.align	2
	.type	secp384r1_T_14_Y, @object
	.size	secp384r1_T_14_Y, 48
secp384r1_T_14_Y:
	.word	-1242918824
	.word	1775278340
	.word	-1608322486
	.word	-2025456149
	.word	847357021
	.word	1542388476
	.word	1789180711
	.word	492585335
	.word	1336549025
	.word	1353912560
	.word	336819209
	.word	-422080354
	.section	.rodata.secp384r1_T_15_X,"a"
	.align	2
	.type	secp384r1_T_15_X, @object
	.size	secp384r1_T_15_X, 48
secp384r1_T_15_X:
	.word	1332788699
	.word	738644392
	.word	1747865113
	.word	1358575100
	.word	-311078048
	.word	-339582990
	.word	-1620342983
	.word	-1826430459
	.word	-1213719985
	.word	2087558659
	.word	-2006331189
	.word	983447976
	.section	.rodata.secp384r1_T_15_Y,"a"
	.align	2
	.type	secp384r1_T_15_Y, @object
	.size	secp384r1_T_15_Y, 48
secp384r1_T_15_Y:
	.word	-26677256
	.word	352855276
	.word	-1840576863
	.word	1949611789
	.word	450753598
	.word	1172589216
	.word	1330602947
	.word	-740901938
	.word	-544346419
	.word	-1397263553
	.word	-2135554337
	.word	1406763341
	.section	.rodata.secp384r1_T_16_X,"a"
	.align	2
	.type	secp384r1_T_16_X, @object
	.size	secp384r1_T_16_X, 48
secp384r1_T_16_X:
	.word	-552340203
	.word	-1802036973
	.word	867432712
	.word	-31358362
	.word	372899061
	.word	242631459
	.word	-1591392247
	.word	790402404
	.word	1461038147
	.word	681631449
	.word	1035493142
	.word	-870018744
	.section	.rodata.secp384r1_T_16_Y,"a"
	.align	2
	.type	secp384r1_T_16_Y, @object
	.size	secp384r1_T_16_Y, 48
secp384r1_T_16_Y:
	.word	1422455341
	.word	-994233647
	.word	-1427096694
	.word	552917149
	.word	1824244559
	.word	757443686
	.word	-1307564689
	.word	501105121
	.word	-1204754372
	.word	-1742029769
	.word	1241601978
	.word	-2053146594
	.section	.rodata.secp384r1_T_17_X,"a"
	.align	2
	.type	secp384r1_T_17_X, @object
	.size	secp384r1_T_17_X, 48
secp384r1_T_17_X:
	.word	315431357
	.word	1448038667
	.word	607996720
	.word	89724580
	.word	1507060652
	.word	24933678
	.word	-1514882676
	.word	1277767385
	.word	1963267718
	.word	-301550846
	.word	2040495275
	.word	592441745
	.section	.rodata.secp384r1_T_17_Y,"a"
	.align	2
	.type	secp384r1_T_17_Y, @object
	.size	secp384r1_T_17_Y, 48
secp384r1_T_17_Y:
	.word	-2072209307
	.word	1999699937
	.word	1606607473
	.word	-843235243
	.word	1065837929
	.word	1462026948
	.word	1611280398
	.word	1210372373
	.word	-1227253417
	.word	498053550
	.word	-1561427813
	.word	-205949937
	.section	.rodata.secp384r1_T_18_X,"a"
	.align	2
	.type	secp384r1_T_18_X, @object
	.size	secp384r1_T_18_X, 48
secp384r1_T_18_X:
	.word	923788803
	.word	513347777
	.word	1570614625
	.word	-22675072
	.word	705695664
	.word	-348643171
	.word	-825532308
	.word	849846362
	.word	-552284230
	.word	762635711
	.word	-585493835
	.word	-966983079
	.section	.rodata.secp384r1_T_18_Y,"a"
	.align	2
	.type	secp384r1_T_18_Y, @object
	.size	secp384r1_T_18_Y, 48
secp384r1_T_18_Y:
	.word	-168244792
	.word	2068648886
	.word	-1817098771
	.word	-596008269
	.word	-137365900
	.word	-862180890
	.word	-2140843897
	.word	1493850556
	.word	891613198
	.word	217073314
	.word	-1648351555
	.word	1734497889
	.section	.rodata.secp384r1_T_19_X,"a"
	.align	2
	.type	secp384r1_T_19_X, @object
	.size	secp384r1_T_19_X, 48
secp384r1_T_19_X:
	.word	616741648
	.word	1412902467
	.word	902756234
	.word	1072920572
	.word	-711576459
	.word	1805481546
	.word	-368100424
	.word	571151016
	.word	761085798
	.word	-73477092
	.word	-941805955
	.word	-592467090
	.section	.rodata.secp384r1_T_19_Y,"a"
	.align	2
	.type	secp384r1_T_19_Y, @object
	.size	secp384r1_T_19_Y, 48
secp384r1_T_19_Y:
	.word	209433228
	.word	1502512026
	.word	-1836035792
	.word	-1021758855
	.word	-788952594
	.word	-1885000497
	.word	-568242053
	.word	-2120400560
	.word	-1641316896
	.word	-475490915
	.word	-2027903528
	.word	-1436575864
	.section	.rodata.secp384r1_T_20_X,"a"
	.align	2
	.type	secp384r1_T_20_X, @object
	.size	secp384r1_T_20_X, 48
secp384r1_T_20_X:
	.word	1723095396
	.word	1616570494
	.word	-1300341595
	.word	-624305747
	.word	-1555458174
	.word	772244243
	.word	331818586
	.word	1806699829
	.word	-89432034
	.word	739808075
	.word	823930196
	.word	-1369316276
	.section	.rodata.secp384r1_T_20_Y,"a"
	.align	2
	.type	secp384r1_T_20_Y, @object
	.size	secp384r1_T_20_Y, 48
secp384r1_T_20_Y:
	.word	1360940510
	.word	-980324775
	.word	1364022328
	.word	1623996141
	.word	-950622184
	.word	-986503304
	.word	-912935102
	.word	-1133852533
	.word	-1777079970
	.word	-285613645
	.word	1588610805
	.word	84120771
	.section	.rodata.secp384r1_T_21_X,"a"
	.align	2
	.type	secp384r1_T_21_X, @object
	.size	secp384r1_T_21_X, 48
secp384r1_T_21_X:
	.word	808016749
	.word	-1231152575
	.word	830720630
	.word	1120642907
	.word	1146110241
	.word	-1993251763
	.word	1573029071
	.word	406627735
	.word	-39514128
	.word	742873742
	.word	755128444
	.word	-1173638848
	.section	.rodata.secp384r1_T_21_Y,"a"
	.align	2
	.type	secp384r1_T_21_Y, @object
	.size	secp384r1_T_21_Y, 48
secp384r1_T_21_Y:
	.word	1737241562
	.word	-1723653170
	.word	1917277060
	.word	710614852
	.word	-1529232978
	.word	409176144
	.word	1769337468
	.word	834928755
	.word	-551710645
	.word	1775763482
	.word	1216983301
	.word	-278761304
	.section	.rodata.secp384r1_T_22_X,"a"
	.align	2
	.type	secp384r1_T_22_X, @object
	.size	secp384r1_T_22_X, 48
secp384r1_T_22_X:
	.word	1347783294
	.word	1015738235
	.word	1210260478
	.word	-1231985885
	.word	1012139021
	.word	-1698194652
	.word	-2067580891
	.word	1235222523
	.word	1843407462
	.word	-883127704
	.word	-2058120252
	.word	1672416673
	.section	.rodata.secp384r1_T_22_Y,"a"
	.align	2
	.type	secp384r1_T_22_Y, @object
	.size	secp384r1_T_22_Y, 48
secp384r1_T_22_Y:
	.word	1284868123
	.word	1359400971
	.word	1234022290
	.word	-525023070
	.word	156464757
	.word	-897105016
	.word	1064805520
	.word	179577182
	.word	1686543925
	.word	2009174476
	.word	-883550271
	.word	-1319404093
	.section	.rodata.secp384r1_T_23_X,"a"
	.align	2
	.type	secp384r1_T_23_X, @object
	.size	secp384r1_T_23_X, 48
secp384r1_T_23_X:
	.word	-1247841180
	.word	481370513
	.word	300018974
	.word	-1045477905
	.word	-1296158240
	.word	526742204
	.word	2005683121
	.word	-1253957938
	.word	-1179989505
	.word	1436124889
	.word	-964680859
	.word	1829451086
	.section	.rodata.secp384r1_T_23_Y,"a"
	.align	2
	.type	secp384r1_T_23_Y, @object
	.size	secp384r1_T_23_Y, 48
secp384r1_T_23_Y:
	.word	178444359
	.word	589115961
	.word	-242825119
	.word	88775186
	.word	-1434652275
	.word	29134448
	.word	-1891171998
	.word	-928674851
	.word	-199161637
	.word	-1762277461
	.word	-1784318454
	.word	495456196
	.section	.rodata.secp384r1_T_24_X,"a"
	.align	2
	.type	secp384r1_T_24_X, @object
	.size	secp384r1_T_24_X, 48
secp384r1_T_24_X:
	.word	1378501183
	.word	1230075341
	.word	82130576
	.word	-272219093
	.word	320269916
	.word	817201927
	.word	-1564059274
	.word	-959249127
	.word	380144566
	.word	-689260791
	.word	-1357582736
	.word	-271516235
	.section	.rodata.secp384r1_T_24_Y,"a"
	.align	2
	.type	secp384r1_T_24_Y, @object
	.size	secp384r1_T_24_Y, 48
secp384r1_T_24_Y:
	.word	1909095448
	.word	1969647166
	.word	1057894846
	.word	2143588837
	.word	1052917134
	.word	727201685
	.word	50470657
	.word	1726935027
	.word	-65381592
	.word	619236664
	.word	-2059249902
	.word	1902649798
	.section	.rodata.secp384r1_T_25_X,"a"
	.align	2
	.type	secp384r1_T_25_X, @object
	.size	secp384r1_T_25_X, 48
secp384r1_T_25_X:
	.word	1716167309
	.word	-1058665807
	.word	-1651241850
	.word	-827156130
	.word	-901774419
	.word	1429255090
	.word	659060852
	.word	1122115124
	.word	-1403293010
	.word	-2099024447
	.word	-884561065
	.word	189488874
	.section	.rodata.secp384r1_T_25_Y,"a"
	.align	2
	.type	secp384r1_T_25_Y, @object
	.size	secp384r1_T_25_Y, 48
secp384r1_T_25_Y:
	.word	1319962876
	.word	1378525009
	.word	1283284072
	.word	48091094
	.word	-534350120
	.word	2094600331
	.word	1310959408
	.word	390255199
	.word	-324737583
	.word	674505079
	.word	-362474404
	.word	801342794
	.section	.rodata.secp384r1_T_26_X,"a"
	.align	2
	.type	secp384r1_T_26_X, @object
	.size	secp384r1_T_26_X, 48
secp384r1_T_26_X:
	.word	658561049
	.word	1702761843
	.word	2119416822
	.word	-725073905
	.word	1931032554
	.word	73292527
	.word	1227584412
	.word	1553443966
	.word	516141589
	.word	567469838
	.word	-573175670
	.word	1054220716
	.section	.rodata.secp384r1_T_26_Y,"a"
	.align	2
	.type	secp384r1_T_26_Y, @object
	.size	secp384r1_T_26_Y, 48
secp384r1_T_26_Y:
	.word	1841178281
	.word	1060696685
	.word	-1489933304
	.word	-1992667063
	.word	-171533885
	.word	1513145042
	.word	-1946754006
	.word	-1293314165
	.word	230105565
	.word	190060028
	.word	-1541635227
	.word	-224564275
	.section	.rodata.secp384r1_T_27_X,"a"
	.align	2
	.type	secp384r1_T_27_X, @object
	.size	secp384r1_T_27_X, 48
secp384r1_T_27_X:
	.word	1212999894
	.word	-1821791516
	.word	-64521689
	.word	2065339959
	.word	-1523521681
	.word	1548096463
	.word	1957681292
	.word	-2074718941
	.word	340016434
	.word	-259811557
	.word	1607944186
	.word	-147285763
	.section	.rodata.secp384r1_T_27_Y,"a"
	.align	2
	.type	secp384r1_T_27_Y, @object
	.size	secp384r1_T_27_Y, 48
secp384r1_T_27_Y:
	.word	912552867
	.word	365001725
	.word	-768451094
	.word	763991111
	.word	-1406080687
	.word	73779206
	.word	465136890
	.word	1397318135
	.word	1127415767
	.word	-1314465152
	.word	17103020
	.word	567162261
	.section	.rodata.secp384r1_T_28_X,"a"
	.align	2
	.type	secp384r1_T_28_X, @object
	.size	secp384r1_T_28_X, 48
secp384r1_T_28_X:
	.word	222692973
	.word	-1395072431
	.word	1864193812
	.word	-1496473479
	.word	-902366241
	.word	1100936621
	.word	-1642235281
	.word	-599223011
	.word	-1213913471
	.word	-960353259
	.word	-1435352442
	.word	-1228284911
	.section	.rodata.secp384r1_T_28_Y,"a"
	.align	2
	.type	secp384r1_T_28_Y, @object
	.size	secp384r1_T_28_Y, 48
secp384r1_T_28_Y:
	.word	-1486590913
	.word	-726975390
	.word	-666604984
	.word	-2136424352
	.word	307787394
	.word	1183398999
	.word	-830255230
	.word	751876299
	.word	-1341881190
	.word	-537203795
	.word	1103340596
	.word	1046826564
	.section	.rodata.secp384r1_T_29_X,"a"
	.align	2
	.type	secp384r1_T_29_X, @object
	.size	secp384r1_T_29_X, 48
secp384r1_T_29_X:
	.word	480843446
	.word	-1054841369
	.word	-130919592
	.word	750626496
	.word	1474752695
	.word	1864813617
	.word	475325223
	.word	-1139289292
	.word	-68309259
	.word	-1625364531
	.word	874255962
	.word	-1239482304
	.section	.rodata.secp384r1_T_29_Y,"a"
	.align	2
	.type	secp384r1_T_29_Y, @object
	.size	secp384r1_T_29_Y, 48
secp384r1_T_29_Y:
	.word	-1040174486
	.word	152714196
	.word	-1885741004
	.word	1142311436
	.word	454587267
	.word	1646892244
	.word	-1322408919
	.word	1731359901
	.word	212989119
	.word	1720410679
	.word	-488964151
	.word	1119265589
	.section	.rodata.secp384r1_T_30_X,"a"
	.align	2
	.type	secp384r1_T_30_X, @object
	.size	secp384r1_T_30_X, 48
secp384r1_T_30_X:
	.word	1704544657
	.word	-283710011
	.word	-207994247
	.word	728714919
	.word	-1065481605
	.word	1426542295
	.word	1764850390
	.word	873839014
	.word	-1535975256
	.word	217626943
	.word	-2060290773
	.word	305651362
	.section	.rodata.secp384r1_T_30_Y,"a"
	.align	2
	.type	secp384r1_T_30_Y, @object
	.size	secp384r1_T_30_Y, 48
secp384r1_T_30_Y:
	.word	-821182276
	.word	-190562011
	.word	1219689627
	.word	1266910659
	.word	1477164587
	.word	1654290989
	.word	411169733
	.word	743404571
	.word	178471906
	.word	514034454
	.word	2072057930
	.word	2000003725
	.section	.rodata.secp384r1_T_31_X,"a"
	.align	2
	.type	secp384r1_T_31_X, @object
	.size	secp384r1_T_31_X, 48
secp384r1_T_31_X:
	.word	742376582
	.word	60383207
	.word	-1229509648
	.word	-11117907
	.word	1218707460
	.word	-1078269752
	.word	330670568
	.word	-1667642022
	.word	-55732816
	.word	-18383134
	.word	886139798
	.word	191058841
	.section	.rodata.secp384r1_T_31_Y,"a"
	.align	2
	.type	secp384r1_T_31_Y, @object
	.size	secp384r1_T_31_Y, 48
secp384r1_T_31_Y:
	.word	1568115225
	.word	671197995
	.word	-707754674
	.word	1615692617
	.word	814859905
	.word	2058289211
	.word	123842106
	.word	-907888927
	.word	-29277291
	.word	-1510951269
	.word	-1381066828
	.word	1100908681
	.section	.rodata.secp384r1_T,"a"
	.align	2
	.type	secp384r1_T, @object
	.size	secp384r1_T, 768
secp384r1_T:
	.word	secp384r1_T_0_X
	.half	1
	.half	12
	.word	secp384r1_T_0_Y
	.half	1
	.half	12
	.word	mpi_one
	.half	1
	.half	1
	.word	secp384r1_T_1_X
	.half	1
	.half	12
	.word	secp384r1_T_1_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_2_X
	.half	1
	.half	12
	.word	secp384r1_T_2_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_3_X
	.half	1
	.half	12
	.word	secp384r1_T_3_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_4_X
	.half	1
	.half	12
	.word	secp384r1_T_4_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_5_X
	.half	1
	.half	12
	.word	secp384r1_T_5_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_6_X
	.half	1
	.half	12
	.word	secp384r1_T_6_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_7_X
	.half	1
	.half	12
	.word	secp384r1_T_7_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_8_X
	.half	1
	.half	12
	.word	secp384r1_T_8_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_9_X
	.half	1
	.half	12
	.word	secp384r1_T_9_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_10_X
	.half	1
	.half	12
	.word	secp384r1_T_10_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_11_X
	.half	1
	.half	12
	.word	secp384r1_T_11_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_12_X
	.half	1
	.half	12
	.word	secp384r1_T_12_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_13_X
	.half	1
	.half	12
	.word	secp384r1_T_13_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_14_X
	.half	1
	.half	12
	.word	secp384r1_T_14_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_15_X
	.half	1
	.half	12
	.word	secp384r1_T_15_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_16_X
	.half	1
	.half	12
	.word	secp384r1_T_16_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_17_X
	.half	1
	.half	12
	.word	secp384r1_T_17_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_18_X
	.half	1
	.half	12
	.word	secp384r1_T_18_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_19_X
	.half	1
	.half	12
	.word	secp384r1_T_19_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_20_X
	.half	1
	.half	12
	.word	secp384r1_T_20_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_21_X
	.half	1
	.half	12
	.word	secp384r1_T_21_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_22_X
	.half	1
	.half	12
	.word	secp384r1_T_22_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_23_X
	.half	1
	.half	12
	.word	secp384r1_T_23_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_24_X
	.half	1
	.half	12
	.word	secp384r1_T_24_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_25_X
	.half	1
	.half	12
	.word	secp384r1_T_25_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_26_X
	.half	1
	.half	12
	.word	secp384r1_T_26_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_27_X
	.half	1
	.half	12
	.word	secp384r1_T_27_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_28_X
	.half	1
	.half	12
	.word	secp384r1_T_28_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_29_X
	.half	1
	.half	12
	.word	secp384r1_T_29_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_30_X
	.half	1
	.half	12
	.word	secp384r1_T_30_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	secp384r1_T_31_X
	.half	1
	.half	12
	.word	secp384r1_T_31_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp521r1_p,"a"
	.align	2
	.type	secp521r1_p, @object
	.size	secp521r1_p, 68
secp521r1_p:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	511
	.section	.rodata.secp521r1_b,"a"
	.align	2
	.type	secp521r1_b, @object
	.size	secp521r1_b, 68
secp521r1_b:
	.word	1800421120
	.word	-280682540
	.word	1026307313
	.word	896786312
	.word	1001504519
	.word	374522045
	.word	-327249029
	.word	1444493649
	.word	-1896805919
	.word	-1196127855
	.word	-1716316685
	.word	-1562742181
	.word	-1232781074
	.word	-1835392608
	.word	-1910728161
	.word	-1791051423
	.word	81
	.section	.rodata.secp521r1_gx,"a"
	.align	2
	.type	secp521r1_gx, @object
	.size	secp521r1_gx, 68
secp521r1_gx:
	.word	-1025131162
	.word	-109150671
	.word	-2056633701
	.word	860402625
	.word	-1560303394
	.word	-31604441
	.word	-270051032
	.word	-1588896137
	.word	1800224186
	.word	-131551392
	.word	88061217
	.word	-1671134919
	.word	597013570
	.word	-1640051866
	.word	67430861
	.word	-2054289737
	.word	198
	.section	.rodata.secp521r1_gy,"a"
	.align	2
	.type	secp521r1_gy, @object
	.size	secp521r1_gy, 68
secp521r1_gy:
	.word	-1613666736
	.word	-2000776074
	.word	-1569537472
	.word	893153414
	.word	1068304225
	.word	-984565503
	.word	1593058880
	.word	-1745980775
	.word	658400812
	.word	397393175
	.word	1469793384
	.word	-1728756663
	.word	746396633
	.word	1552572340
	.word	-1707360252
	.word	959015544
	.word	280
	.section	.rodata.secp521r1_n,"a"
	.align	2
	.type	secp521r1_n, @object
	.size	secp521r1_n, 68
secp521r1_n:
	.word	-1858575351
	.word	-1150306530
	.word	-1986246738
	.word	1001769400
	.word	-150362672
	.word	2144076104
	.word	-1087400341
	.word	1367771011
	.word	-6
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	511
	.section	.rodata.secp521r1_T_0_X,"a"
	.align	2
	.type	secp521r1_T_0_X, @object
	.size	secp521r1_T_0_X, 72
secp521r1_T_0_X:
	.word	-1025131162
	.word	-109150671
	.word	-2056633701
	.word	860402625
	.word	-1560303394
	.word	-31604441
	.word	-270051032
	.word	-1588896137
	.word	1800224186
	.word	-131551392
	.word	88061217
	.word	-1671134919
	.word	597013570
	.word	-1640051866
	.word	67430861
	.word	-2054289737
	.word	198
	.word	0
	.section	.rodata.secp521r1_T_0_Y,"a"
	.align	2
	.type	secp521r1_T_0_Y, @object
	.size	secp521r1_T_0_Y, 72
secp521r1_T_0_Y:
	.word	-1613666736
	.word	-2000776074
	.word	-1569537472
	.word	893153414
	.word	1068304225
	.word	-984565503
	.word	1593058880
	.word	-1745980775
	.word	658400812
	.word	397393175
	.word	1469793384
	.word	-1728756663
	.word	746396633
	.word	1552572340
	.word	-1707360252
	.word	959015544
	.word	280
	.word	0
	.section	.rodata.secp521r1_T_1_X,"a"
	.align	2
	.type	secp521r1_T_1_X, @object
	.size	secp521r1_T_1_X, 72
secp521r1_T_1_X:
	.word	-349327057
	.word	-622317785
	.word	625232792
	.word	1734302939
	.word	2015921427
	.word	842298670
	.word	1930385257
	.word	1407416952
	.word	-588457843
	.word	-1414724390
	.word	-217478604
	.word	702052696
	.word	1355481955
	.word	5668634
	.word	947431158
	.word	1074489221
	.word	387
	.word	0
	.section	.rodata.secp521r1_T_1_Y,"a"
	.align	2
	.type	secp521r1_T_1_Y, @object
	.size	secp521r1_T_1_Y, 72
secp521r1_T_1_Y:
	.word	584242570
	.word	-1170538300
	.word	2064552917
	.word	113463685
	.word	1415554621
	.word	2021720649
	.word	980150562
	.word	494069650
	.word	-1641521297
	.word	-477616239
	.word	-1288623889
	.word	840092292
	.word	581761341
	.word	1097075216
	.word	523486953
	.word	-1088939671
	.word	446
	.word	0
	.section	.rodata.secp521r1_T_2_X,"a"
	.align	2
	.type	secp521r1_T_2_X, @object
	.size	secp521r1_T_2_X, 72
secp521r1_T_2_X:
	.word	-944224096
	.word	905992759
	.word	-533541881
	.word	-1161690130
	.word	-457037372
	.word	-1927273362
	.word	2071948038
	.word	330871033
	.word	-516130019
	.word	35889433
	.word	1405281066
	.word	-1458370624
	.word	892796423
	.word	-833003873
	.word	-2071374563
	.word	-1029509188
	.word	25
	.word	0
	.section	.rodata.secp521r1_T_2_Y,"a"
	.align	2
	.type	secp521r1_T_2_Y, @object
	.size	secp521r1_T_2_Y, 72
secp521r1_T_2_Y:
	.word	1728584445
	.word	-316479564
	.word	-2116082058
	.word	-635674820
	.word	181423584
	.word	1223951944
	.word	-147253133
	.word	-1921572655
	.word	323260280
	.word	286357707
	.word	-364256717
	.word	956856643
	.word	1943589121
	.word	1764716844
	.word	-186129119
	.word	-903828666
	.word	90
	.word	0
	.section	.rodata.secp521r1_T_3_X,"a"
	.align	2
	.type	secp521r1_T_3_X, @object
	.size	secp521r1_T_3_X, 72
secp521r1_T_3_X:
	.word	1907952524
	.word	-1481169126
	.word	-785604054
	.word	-1111376678
	.word	521184016
	.word	1386607248
	.word	-199165144
	.word	-171937600
	.word	-258365553
	.word	-586558555
	.word	957671462
	.word	-1352610882
	.word	-1458252129
	.word	-356310839
	.word	-44324771
	.word	2025625133
	.word	448
	.word	0
	.section	.rodata.secp521r1_T_3_Y,"a"
	.align	2
	.type	secp521r1_T_3_Y, @object
	.size	secp521r1_T_3_Y, 72
secp521r1_T_3_Y:
	.word	-1102773091
	.word	-157977138
	.word	1230559948
	.word	1099761973
	.word	918614134
	.word	338536178
	.word	-1472332569
	.word	1372732667
	.word	158420225
	.word	770720280
	.word	-1630617203
	.word	308300138
	.word	-150949459
	.word	-1271825759
	.word	-846806207
	.word	-2045294048
	.word	364
	.word	0
	.section	.rodata.secp521r1_T_4_X,"a"
	.align	2
	.type	secp521r1_T_4_X, @object
	.size	secp521r1_T_4_X, 72
secp521r1_T_4_X:
	.word	1200335768
	.word	1537649293
	.word	-1125083196
	.word	-2070029267
	.word	1957725697
	.word	1744237746
	.word	-475218516
	.word	-1319353457
	.word	1860354871
	.word	198002981
	.word	-1291297180
	.word	-782259015
	.word	-187582712
	.word	-924247588
	.word	-503651255
	.word	1861041718
	.word	10
	.word	0
	.section	.rodata.secp521r1_T_4_Y,"a"
	.align	2
	.type	secp521r1_T_4_Y, @object
	.size	secp521r1_T_4_Y, 72
secp521r1_T_4_Y:
	.word	-2070780160
	.word	1359169646
	.word	-1880124002
	.word	476807858
	.word	1438251661
	.word	-1291190749
	.word	1267038703
	.word	-617229298
	.word	-2126174310
	.word	-1387099936
	.word	1268933399
	.word	-1833869892
	.word	-645690328
	.word	-633154754
	.word	825885593
	.word	-784668230
	.word	71
	.word	0
	.section	.rodata.secp521r1_T_5_X,"a"
	.align	2
	.type	secp521r1_T_5_X, @object
	.size	secp521r1_T_5_X, 72
secp521r1_T_5_X:
	.word	768413749
	.word	-1489830400
	.word	-635474204
	.word	55406584
	.word	159217929
	.word	553898981
	.word	-541146280
	.word	-867605241
	.word	-281848056
	.word	654593966
	.word	-23336550
	.word	-158996801
	.word	111852221
	.word	1471727300
	.word	-1459518708
	.word	-1192799754
	.word	283
	.word	0
	.section	.rodata.secp521r1_T_5_Y,"a"
	.align	2
	.type	secp521r1_T_5_Y, @object
	.size	secp521r1_T_5_Y, 72
secp521r1_T_5_Y:
	.word	-1911183687
	.word	-2028986453
	.word	438765684
	.word	-173203039
	.word	1854933250
	.word	1570410576
	.word	-671180154
	.word	363001249
	.word	-589070872
	.word	2074409761
	.word	-16269383
	.word	2001854277
	.word	36985867
	.word	302553954
	.word	1788530310
	.word	1190557164
	.word	109
	.word	0
	.section	.rodata.secp521r1_T_6_X,"a"
	.align	2
	.type	secp521r1_T_6_X, @object
	.size	secp521r1_T_6_X, 72
secp521r1_T_6_X:
	.word	2029279718
	.word	1253138492
	.word	1787049790
	.word	2107306716
	.word	362453568
	.word	757850166
	.word	1352415468
	.word	-2110316995
	.word	-1829733961
	.word	-2112320526
	.word	511893527
	.word	-682917248
	.word	1801042938
	.word	1078032266
	.word	-1194002009
	.word	1087341130
	.word	93
	.word	0
	.section	.rodata.secp521r1_T_6_Y,"a"
	.align	2
	.type	secp521r1_T_6_Y, @object
	.size	secp521r1_T_6_Y, 72
secp521r1_T_6_Y:
	.word	-1681355746
	.word	-101212558
	.word	2011811512
	.word	-2074535670
	.word	1782686109
	.word	-592163982
	.word	-498911989
	.word	-485638516
	.word	-206705727
	.word	-1586977111
	.word	1222782849
	.word	1109383948
	.word	-1688199471
	.word	1019335210
	.word	-759864128
	.word	577697526
	.word	368
	.word	0
	.section	.rodata.secp521r1_T_7_X,"a"
	.align	2
	.type	secp521r1_T_7_X, @object
	.size	secp521r1_T_7_X, 72
secp521r1_T_7_X:
	.word	2016427462
	.word	1363220496
	.word	-535028330
	.word	-1814985875
	.word	-183827589
	.word	-1744540625
	.word	-53133716
	.word	-348497103
	.word	-80772528
	.word	964098302
	.word	-1663424891
	.word	-778832586
	.word	-764483764
	.word	-972455555
	.word	1492714451
	.word	-291363768
	.word	233
	.word	0
	.section	.rodata.secp521r1_T_7_Y,"a"
	.align	2
	.type	secp521r1_T_7_Y, @object
	.size	secp521r1_T_7_Y, 72
secp521r1_T_7_Y:
	.word	-1911785189
	.word	-990669461
	.word	-2024009484
	.word	1758411011
	.word	-1040715603
	.word	1072997383
	.word	-1996298190
	.word	913491045
	.word	-1763014476
	.word	-547550361
	.word	-1470073432
	.word	1759474877
	.word	1349641582
	.word	-422391705
	.word	-941228843
	.word	-1937788809
	.word	497
	.word	0
	.section	.rodata.secp521r1_T_8_X,"a"
	.align	2
	.type	secp521r1_T_8_X, @object
	.size	secp521r1_T_8_X, 72
secp521r1_T_8_X:
	.word	-848722281
	.word	1723701773
	.word	-1145301160
	.word	243107161
	.word	-1401509747
	.word	-529356416
	.word	-490637196
	.word	1022996301
	.word	1955501997
	.word	-2051912764
	.word	-201926422
	.word	-447598673
	.word	-822847595
	.word	1626162158
	.word	-566737283
	.word	408550688
	.word	471
	.word	0
	.section	.rodata.secp521r1_T_8_Y,"a"
	.align	2
	.type	secp521r1_T_8_Y, @object
	.size	secp521r1_T_8_Y, 72
secp521r1_T_8_Y:
	.word	1491605532
	.word	-433293639
	.word	-18590483
	.word	926006471
	.word	-292947723
	.word	749778288
	.word	-1708776829
	.word	171489619
	.word	-1944475788
	.word	1183350388
	.word	-401941836
	.word	499033562
	.word	-1309188976
	.word	167473676
	.word	-417078664
	.word	-1847543994
	.word	453
	.word	0
	.section	.rodata.secp521r1_T_9_X,"a"
	.align	2
	.type	secp521r1_T_9_X, @object
	.size	secp521r1_T_9_X, 72
secp521r1_T_9_X:
	.word	-1111738822
	.word	1921913160
	.word	-140395605
	.word	-541090293
	.word	-1562302360
	.word	-688063345
	.word	169475713
	.word	963241957
	.word	-183317154
	.word	-251341890
	.word	-2129811211
	.word	-1736850343
	.word	-1840516189
	.word	-1389247643
	.word	1297069429
	.word	-1293757295
	.word	337
	.word	0
	.section	.rodata.secp521r1_T_9_Y,"a"
	.align	2
	.type	secp521r1_T_9_Y, @object
	.size	secp521r1_T_9_Y, 72
secp521r1_T_9_Y:
	.word	2034305394
	.word	856509725
	.word	-1172819525
	.word	2121200288
	.word	1330469779
	.word	-1584608849
	.word	110926152
	.word	702078568
	.word	-1243544416
	.word	-1195638627
	.word	-1919773343
	.word	1110954866
	.word	-1574483029
	.word	-1591302936
	.word	-1449376433
	.word	-2051366965
	.word	203
	.word	0
	.section	.rodata.secp521r1_T_10_X,"a"
	.align	2
	.type	secp521r1_T_10_X, @object
	.size	secp521r1_T_10_X, 72
secp521r1_T_10_X:
	.word	1679523336
	.word	1436936436
	.word	-894885641
	.word	-505050637
	.word	-1409487485
	.word	129567449
	.word	2084990728
	.word	100628685
	.word	1517398889
	.word	539011988
	.word	-2014433598
	.word	-743628969
	.word	-79868783
	.word	126591358
	.word	-2046308503
	.word	-818457670
	.word	312
	.word	0
	.section	.rodata.secp521r1_T_10_Y,"a"
	.align	2
	.type	secp521r1_T_10_Y, @object
	.size	secp521r1_T_10_Y, 72
secp521r1_T_10_Y:
	.word	-1179507200
	.word	-1243377182
	.word	-2074818183
	.word	-771015416
	.word	796371037
	.word	1285113188
	.word	521574023
	.word	-1758947621
	.word	-7525501
	.word	-749383774
	.word	-1119295887
	.word	1460813209
	.word	-631667649
	.word	308721337
	.word	-1841203091
	.word	1665135839
	.word	287
	.word	0
	.section	.rodata.secp521r1_T_11_X,"a"
	.align	2
	.type	secp521r1_T_11_X, @object
	.size	secp521r1_T_11_X, 72
secp521r1_T_11_X:
	.word	1332708990
	.word	803170239
	.word	1595812850
	.word	1459022336
	.word	-1989494384
	.word	-1479032616
	.word	590518987
	.word	1485898400
	.word	359300930
	.word	-1148491164
	.word	1484937098
	.word	-72001879
	.word	1620201693
	.word	-1474002484
	.word	-626180810
	.word	1463701977
	.word	93
	.word	0
	.section	.rodata.secp521r1_T_11_Y,"a"
	.align	2
	.type	secp521r1_T_11_Y, @object
	.size	secp521r1_T_11_Y, 72
secp521r1_T_11_Y:
	.word	-1332740372
	.word	2117000715
	.word	-272706951
	.word	-1552845140
	.word	192079957
	.word	1523252908
	.word	-54043731
	.word	1283210467
	.word	-1180236639
	.word	801149851
	.word	-1907668927
	.word	1810941234
	.word	-1056488784
	.word	1534259698
	.word	-1672202466
	.word	-1436364152
	.word	449
	.word	0
	.section	.rodata.secp521r1_T_12_X,"a"
	.align	2
	.type	secp521r1_T_12_X, @object
	.size	secp521r1_T_12_X, 72
secp521r1_T_12_X:
	.word	-1987438142
	.word	-619732392
	.word	-1756574719
	.word	640968240
	.word	522087043
	.word	324979163
	.word	-11973349
	.word	-1683186533
	.word	-229907241
	.word	2027035348
	.word	1642650317
	.word	843696287
	.word	770886481
	.word	1385035397
	.word	751682999
	.word	1326368377
	.word	475
	.word	0
	.section	.rodata.secp521r1_T_12_Y,"a"
	.align	2
	.type	secp521r1_T_12_Y, @object
	.size	secp521r1_T_12_Y, 72
secp521r1_T_12_Y:
	.word	257236339
	.word	2023695096
	.word	-407218570
	.word	1122775639
	.word	1288084069
	.word	1062388745
	.word	-194044234
	.word	-1344460931
	.word	-334098028
	.word	-1364360327
	.word	529681990
	.word	-597328615
	.word	360251145
	.word	-466459835
	.word	2026934719
	.word	1196481112
	.word	371
	.word	0
	.section	.rodata.secp521r1_T_13_X,"a"
	.align	2
	.type	secp521r1_T_13_X, @object
	.size	secp521r1_T_13_X, 72
secp521r1_T_13_X:
	.word	-163520989
	.word	-1791249343
	.word	-505377338
	.word	1563816105
	.word	2075841766
	.word	842669004
	.word	1949194960
	.word	1304630343
	.word	109834365
	.word	-905015787
	.word	-1746152779
	.word	-63865520
	.word	-615738558
	.word	-180061801
	.word	195076764
	.word	-108381496
	.word	97
	.word	0
	.section	.rodata.secp521r1_T_13_Y,"a"
	.align	2
	.type	secp521r1_T_13_Y, @object
	.size	secp521r1_T_13_Y, 72
secp521r1_T_13_Y:
	.word	-1634578311
	.word	1288380196
	.word	-976677165
	.word	-1750115779
	.word	-459807976
	.word	2130071720
	.word	1117214533
	.word	222925432
	.word	610462629
	.word	-818769925
	.word	1849036019
	.word	-1897338737
	.word	-948120638
	.word	-514048115
	.word	1936352362
	.word	1522039056
	.word	459
	.word	0
	.section	.rodata.secp521r1_T_14_X,"a"
	.align	2
	.type	secp521r1_T_14_X, @object
	.size	secp521r1_T_14_X, 72
secp521r1_T_14_X:
	.word	-1510999727
	.word	-1587787232
	.word	1240789807
	.word	464155483
	.word	267055814
	.word	-1420579584
	.word	-312035325
	.word	894184388
	.word	-1698615494
	.word	1484771895
	.word	948021033
	.word	943180132
	.word	-1620296770
	.word	495704411
	.word	148444342
	.word	595514072
	.word	28
	.word	0
	.section	.rodata.secp521r1_T_14_Y,"a"
	.align	2
	.type	secp521r1_T_14_Y, @object
	.size	secp521r1_T_14_Y, 72
secp521r1_T_14_Y:
	.word	1038512405
	.word	-840453935
	.word	-333217445
	.word	-431668691
	.word	1799641937
	.word	677839753
	.word	-2136070268
	.word	297677658
	.word	442808035
	.word	-1853500449
	.word	-1172140953
	.word	-1597194800
	.word	973159671
	.word	1808244223
	.word	-1268463860
	.word	580865625
	.word	389
	.word	0
	.section	.rodata.secp521r1_T_15_X,"a"
	.align	2
	.type	secp521r1_T_15_X, @object
	.size	secp521r1_T_15_X, 72
secp521r1_T_15_X:
	.word	1091187873
	.word	-1208833900
	.word	-253438730
	.word	-898808425
	.word	1833770895
	.word	-2067488514
	.word	1079781405
	.word	1121215931
	.word	898082968
	.word	1149844000
	.word	-1420821034
	.word	-1060056787
	.word	-67049338
	.word	-705146263
	.word	-510027039
	.word	-650142500
	.word	409
	.word	0
	.section	.rodata.secp521r1_T_15_Y,"a"
	.align	2
	.type	secp521r1_T_15_Y, @object
	.size	secp521r1_T_15_Y, 72
secp521r1_T_15_Y:
	.word	-644347886
	.word	-1445628982
	.word	-1478480711
	.word	-2015915714
	.word	1420821608
	.word	-1217203191
	.word	-869732664
	.word	544755944
	.word	1979945229
	.word	1998874843
	.word	-1302929286
	.word	-1244458403
	.word	-1957084659
	.word	-1095407649
	.word	837143761
	.word	-1287226797
	.word	474
	.word	0
	.section	.rodata.secp521r1_T_16_X,"a"
	.align	2
	.type	secp521r1_T_16_X, @object
	.size	secp521r1_T_16_X, 72
secp521r1_T_16_X:
	.word	-1252422196
	.word	-1342959845
	.word	751906777
	.word	-284895008
	.word	-1160252244
	.word	-914447440
	.word	1448151245
	.word	862418598
	.word	-27060340
	.word	1910100054
	.word	348386986
	.word	833078599
	.word	-159363982
	.word	1571248034
	.word	-126110959
	.word	2067718447
	.word	506
	.word	0
	.section	.rodata.secp521r1_T_16_Y,"a"
	.align	2
	.type	secp521r1_T_16_Y, @object
	.size	secp521r1_T_16_Y, 72
secp521r1_T_16_Y:
	.word	1811543078
	.word	819957883
	.word	1659863583
	.word	-900510559
	.word	24549862
	.word	1410305466
	.word	1935209647
	.word	2094923350
	.word	-386281738
	.word	1539519649
	.word	1792827145
	.word	1115674685
	.word	-1202588478
	.word	802668984
	.word	-782729810
	.word	592255956
	.word	211
	.word	0
	.section	.rodata.secp521r1_T_17_X,"a"
	.align	2
	.type	secp521r1_T_17_X, @object
	.size	secp521r1_T_17_X, 72
secp521r1_T_17_X:
	.word	14652857
	.word	-1797381672
	.word	-1019459593
	.word	1565721010
	.word	591599390
	.word	-227423555
	.word	1326430832
	.word	-1101774372
	.word	1881553366
	.word	286798419
	.word	-1761130958
	.word	31479610
	.word	-833645866
	.word	645932511
	.word	60452699
	.word	1204898565
	.word	349
	.word	0
	.section	.rodata.secp521r1_T_17_Y,"a"
	.align	2
	.type	secp521r1_T_17_Y, @object
	.size	secp521r1_T_17_Y, 72
secp521r1_T_17_Y:
	.word	812777765
	.word	542185360
	.word	1698823028
	.word	-298994596
	.word	-1429353114
	.word	129748033
	.word	168349396
	.word	-6100637
	.word	2132912189
	.word	-2120524934
	.word	1149856528
	.word	1602584330
	.word	427613821
	.word	1629906268
	.word	694332631
	.word	-2117013174
	.word	312
	.word	0
	.section	.rodata.secp521r1_T_18_X,"a"
	.align	2
	.type	secp521r1_T_18_X, @object
	.size	secp521r1_T_18_X, 72
secp521r1_T_18_X:
	.word	-2025848782
	.word	1448651243
	.word	-16035409
	.word	-1286523562
	.word	-1811370885
	.word	-1712530831
	.word	2076527967
	.word	1586334513
	.word	1055982869
	.word	-1894281314
	.word	1649122544
	.word	-62280300
	.word	-1882797809
	.word	876884989
	.word	2132252255
	.word	234339906
	.word	212
	.word	0
	.section	.rodata.secp521r1_T_18_Y,"a"
	.align	2
	.type	secp521r1_T_18_Y, @object
	.size	secp521r1_T_18_Y, 72
secp521r1_T_18_Y:
	.word	322513403
	.word	1200721160
	.word	804878838
	.word	-691074391
	.word	-1552250965
	.word	-1386894567
	.word	-989787160
	.word	-1633871530
	.word	998432281
	.word	-1945381910
	.word	-205034651
	.word	1820819983
	.word	-232575272
	.word	1883872569
	.word	2058346033
	.word	1893380334
	.word	355
	.word	0
	.section	.rodata.secp521r1_T_19_X,"a"
	.align	2
	.type	secp521r1_T_19_X, @object
	.size	secp521r1_T_19_X, 72
secp521r1_T_19_X:
	.word	1344949878
	.word	-339702019
	.word	1987841874
	.word	1166661731
	.word	1320758764
	.word	-813306124
	.word	-1772317247
	.word	190425693
	.word	1758649290
	.word	1620335246
	.word	2009006809
	.word	-917718625
	.word	-809444307
	.word	1824792193
	.word	-2043163605
	.word	1919214300
	.word	213
	.word	0
	.section	.rodata.secp521r1_T_19_Y,"a"
	.align	2
	.type	secp521r1_T_19_Y, @object
	.size	secp521r1_T_19_Y, 72
secp521r1_T_19_Y:
	.word	1504784428
	.word	681090336
	.word	-123925385
	.word	-1164911584
	.word	-403398479
	.word	-1566663618
	.word	-1331550795
	.word	858705236
	.word	-1337796118
	.word	950251648
	.word	-1919025505
	.word	1831337792
	.word	-2002346694
	.word	342854458
	.word	535706038
	.word	1666167103
	.word	49
	.word	0
	.section	.rodata.secp521r1_T_20_X,"a"
	.align	2
	.type	secp521r1_T_20_X, @object
	.size	secp521r1_T_20_X, 72
secp521r1_T_20_X:
	.word	-6367379
	.word	57095634
	.word	1561677770
	.word	-2041321245
	.word	-1742407790
	.word	1745996706
	.word	-517657082
	.word	-1767651948
	.word	-1167162656
	.word	-1339735065
	.word	1236559128
	.word	1412765811
	.word	1656511321
	.word	-1212068730
	.word	-1567231333
	.word	1698013883
	.word	191
	.word	0
	.section	.rodata.secp521r1_T_20_Y,"a"
	.align	2
	.type	secp521r1_T_20_Y, @object
	.size	secp521r1_T_20_Y, 72
secp521r1_T_20_Y:
	.word	-1335731854
	.word	-659284405
	.word	-1328655091
	.word	274971241
	.word	-611948178
	.word	1684569396
	.word	1439303386
	.word	-1171573180
	.word	1036309612
	.word	-1536581939
	.word	-1075559361
	.word	-1623136719
	.word	1979338622
	.word	244841443
	.word	482197512
	.word	-802770872
	.word	466
	.word	0
	.section	.rodata.secp521r1_T_21_X,"a"
	.align	2
	.type	secp521r1_T_21_X, @object
	.size	secp521r1_T_21_X, 72
secp521r1_T_21_X:
	.word	-97354980
	.word	-1903923726
	.word	486744480
	.word	1733632525
	.word	54720792
	.word	-1161051492
	.word	-644439560
	.word	-1100017251
	.word	-346603265
	.word	297807168
	.word	1337693743
	.word	682107695
	.word	562374970
	.word	107106469
	.word	-812483127
	.word	-115209081
	.word	457
	.word	0
	.section	.rodata.secp521r1_T_21_Y,"a"
	.align	2
	.type	secp521r1_T_21_Y, @object
	.size	secp521r1_T_21_Y, 72
secp521r1_T_21_Y:
	.word	849677914
	.word	-711139493
	.word	741840423
	.word	-1590676088
	.word	-9849792
	.word	143967979
	.word	-1386195511
	.word	-2011932502
	.word	-1292697796
	.word	668575701
	.word	-766202323
	.word	368259424
	.word	-477916485
	.word	1854096113
	.word	-1211575735
	.word	2105492854
	.word	260
	.word	0
	.section	.rodata.secp521r1_T_22_X,"a"
	.align	2
	.type	secp521r1_T_22_X, @object
	.size	secp521r1_T_22_X, 72
secp521r1_T_22_X:
	.word	-73133750
	.word	-927202950
	.word	-1921833011
	.word	-1910009598
	.word	-571055452
	.word	-1185154453
	.word	1151519471
	.word	-668405716
	.word	-1569001156
	.word	-967816126
	.word	1346274093
	.word	1744280747
	.word	-881267427
	.word	1121610102
	.word	1126040027
	.word	-630307033
	.word	148
	.word	0
	.section	.rodata.secp521r1_T_22_Y,"a"
	.align	2
	.type	secp521r1_T_22_Y, @object
	.size	secp521r1_T_22_Y, 72
secp521r1_T_22_Y:
	.word	-1185656877
	.word	1154858302
	.word	1765815753
	.word	849179775
	.word	1735329370
	.word	273492840
	.word	-62822970
	.word	-924311940
	.word	-1355318798
	.word	1289409277
	.word	1449764915
	.word	-1545296798
	.word	561213762
	.word	-1568598134
	.word	2072990996
	.word	-2030587976
	.word	426
	.word	0
	.section	.rodata.secp521r1_T_23_X,"a"
	.align	2
	.type	secp521r1_T_23_X, @object
	.size	secp521r1_T_23_X, 72
secp521r1_T_23_X:
	.word	-1094856373
	.word	1851833484
	.word	-1940412830
	.word	-31892306
	.word	-639351942
	.word	1105689560
	.word	-2048607763
	.word	553397884
	.word	704720386
	.word	-1749133715
	.word	-1692070806
	.word	1127712430
	.word	-877452726
	.word	-1632147815
	.word	-258934954
	.word	-148436709
	.word	200
	.word	0
	.section	.rodata.secp521r1_T_23_Y,"a"
	.align	2
	.type	secp521r1_T_23_Y, @object
	.size	secp521r1_T_23_Y, 72
secp521r1_T_23_Y:
	.word	-284682724
	.word	826893369
	.word	-1746690040
	.word	643041193
	.word	14876621
	.word	545792263
	.word	1398406422
	.word	658664453
	.word	1547302799
	.word	65549954
	.word	-492272850
	.word	940000168
	.word	2032906214
	.word	-2026252051
	.word	2056331285
	.word	1827604420
	.word	296
	.word	0
	.section	.rodata.secp521r1_T_24_X,"a"
	.align	2
	.type	secp521r1_T_24_X, @object
	.size	secp521r1_T_24_X, 72
secp521r1_T_24_X:
	.word	-1439756182
	.word	1510904844
	.word	1099399607
	.word	2086005539
	.word	2043433912
	.word	-865277002
	.word	-1653377036
	.word	2138006780
	.word	1843609660
	.word	359732764
	.word	-14945190
	.word	-677040356
	.word	285937158
	.word	-1349284364
	.word	1868875096
	.word	-1678632668
	.word	28
	.word	0
	.section	.rodata.secp521r1_T_24_Y,"a"
	.align	2
	.type	secp521r1_T_24_Y, @object
	.size	secp521r1_T_24_Y, 72
secp521r1_T_24_Y:
	.word	-1515211950
	.word	-513913074
	.word	-221612273
	.word	-1611217555
	.word	864950416
	.word	-521638808
	.word	-1870623748
	.word	-1768915175
	.word	1751875675
	.word	-791380510
	.word	-1285045974
	.word	801098610
	.word	500421967
	.word	-2146805740
	.word	-1738179975
	.word	793446323
	.word	499
	.word	0
	.section	.rodata.secp521r1_T_25_X,"a"
	.align	2
	.type	secp521r1_T_25_X, @object
	.size	secp521r1_T_25_X, 72
secp521r1_T_25_X:
	.word	1594853162
	.word	134324943
	.word	1858652428
	.word	1738901301
	.word	-1601093996
	.word	-232905557
	.word	889371833
	.word	-1738555024
	.word	1352685862
	.word	-2058190844
	.word	1114527480
	.word	1704037519
	.word	-1513381204
	.word	941888734
	.word	678742784
	.word	-1008228378
	.word	95
	.word	0
	.section	.rodata.secp521r1_T_25_Y,"a"
	.align	2
	.type	secp521r1_T_25_Y, @object
	.size	secp521r1_T_25_Y, 72
secp521r1_T_25_Y:
	.word	-1884785867
	.word	-1771893090
	.word	-948495416
	.word	-587646783
	.word	-1462813480
	.word	-990652550
	.word	-912629795
	.word	-1826952787
	.word	1579929596
	.word	-1466596907
	.word	695568409
	.word	-792213729
	.word	1297787352
	.word	1324979555
	.word	-1895510549
	.word	-958492211
	.word	369
	.word	0
	.section	.rodata.secp521r1_T_26_X,"a"
	.align	2
	.type	secp521r1_T_26_X, @object
	.size	secp521r1_T_26_X, 72
secp521r1_T_26_X:
	.word	637392008
	.word	-361850607
	.word	1023509424
	.word	1319458555
	.word	1960590018
	.word	-389031998
	.word	-571359857
	.word	-503117917
	.word	787070587
	.word	-60390312
	.word	930619505
	.word	1688603513
	.word	1705833187
	.word	1630521800
	.word	233149222
	.word	-877083124
	.word	156
	.word	0
	.section	.rodata.secp521r1_T_26_Y,"a"
	.align	2
	.type	secp521r1_T_26_Y, @object
	.size	secp521r1_T_26_Y, 72
secp521r1_T_26_Y:
	.word	425504105
	.word	621699346
	.word	520834873
	.word	-2117239223
	.word	1630547526
	.word	-1687680805
	.word	-1280346047
	.word	-446054136
	.word	-1050845244
	.word	886599511
	.word	-143994056
	.word	-1276803331
	.word	1891460008
	.word	1843939195
	.word	2127061528
	.word	-1523904099
	.word	182
	.word	0
	.section	.rodata.secp521r1_T_27_X,"a"
	.align	2
	.type	secp521r1_T_27_X, @object
	.size	secp521r1_T_27_X, 72
secp521r1_T_27_X:
	.word	-704805662
	.word	1551849114
	.word	1873066876
	.word	-129143278
	.word	-2103375843
	.word	2071224988
	.word	86136990
	.word	2033521949
	.word	1557104794
	.word	-1795459067
	.word	2033150892
	.word	-328764663
	.word	-662658856
	.word	1123806440
	.word	-1223956491
	.word	-646231935
	.word	227
	.word	0
	.section	.rodata.secp521r1_T_27_Y,"a"
	.align	2
	.type	secp521r1_T_27_Y, @object
	.size	secp521r1_T_27_Y, 72
secp521r1_T_27_Y:
	.word	-307670040
	.word	-2049469855
	.word	1574521126
	.word	898191003
	.word	-1695870280
	.word	-1782461495
	.word	378919989
	.word	24127998
	.word	-693030044
	.word	920828280
	.word	-1014444492
	.word	-1200915715
	.word	508567104
	.word	757445039
	.word	-707270719
	.word	-116229443
	.word	49
	.word	0
	.section	.rodata.secp521r1_T_28_X,"a"
	.align	2
	.type	secp521r1_T_28_X, @object
	.size	secp521r1_T_28_X, 72
secp521r1_T_28_X:
	.word	-2136823262
	.word	-926052515
	.word	1685666120
	.word	-1220778079
	.word	-11942083
	.word	1437314175
	.word	-2093067135
	.word	-1245954576
	.word	944411271
	.word	-156530110
	.word	-296809497
	.word	-1096445282
	.word	-1776689734
	.word	778825970
	.word	-1294074690
	.word	575464842
	.word	468
	.word	0
	.section	.rodata.secp521r1_T_28_Y,"a"
	.align	2
	.type	secp521r1_T_28_Y, @object
	.size	secp521r1_T_28_Y, 72
secp521r1_T_28_Y:
	.word	-1404500297
	.word	318275225
	.word	1359071350
	.word	-413993238
	.word	728140099
	.word	-1557488865
	.word	127209439
	.word	-1636930517
	.word	-1145781468
	.word	1923293073
	.word	676621919
	.word	779721851
	.word	-1493220093
	.word	1904452314
	.word	395304683
	.word	-489979337
	.word	48
	.word	0
	.section	.rodata.secp521r1_T_29_X,"a"
	.align	2
	.type	secp521r1_T_29_X, @object
	.size	secp521r1_T_29_X, 72
secp521r1_T_29_X:
	.word	641701080
	.word	-1361502775
	.word	539531017
	.word	1089716685
	.word	1622526357
	.word	1960582811
	.word	2103163227
	.word	-259214688
	.word	-431828685
	.word	-1150471367
	.word	-755187619
	.word	1010720020
	.word	1077824120
	.word	-820669674
	.word	666969338
	.word	-666114777
	.word	212
	.word	0
	.section	.rodata.secp521r1_T_29_Y,"a"
	.align	2
	.type	secp521r1_T_29_Y, @object
	.size	secp521r1_T_29_Y, 72
secp521r1_T_29_Y:
	.word	-1126674403
	.word	-1155381567
	.word	-1587540307
	.word	-2032906061
	.word	-1238978176
	.word	1868187501
	.word	890350661
	.word	32815422
	.word	-1141205160
	.word	-669828757
	.word	305429269
	.word	-962883979
	.word	701341228
	.word	277737398
	.word	636070983
	.word	1199094567
	.word	303
	.word	0
	.section	.rodata.secp521r1_T_30_X,"a"
	.align	2
	.type	secp521r1_T_30_X, @object
	.size	secp521r1_T_30_X, 72
secp521r1_T_30_X:
	.word	-743933392
	.word	1726310115
	.word	751062063
	.word	844136822
	.word	-1207406098
	.word	-592479150
	.word	-584820411
	.word	-623890437
	.word	-380187209
	.word	-1176071764
	.word	-970955547
	.word	-537926497
	.word	-1936774035
	.word	-1021118825
	.word	-1433865044
	.word	1755699112
	.word	222
	.word	0
	.section	.rodata.secp521r1_T_30_Y,"a"
	.align	2
	.type	secp521r1_T_30_Y, @object
	.size	secp521r1_T_30_Y, 72
secp521r1_T_30_Y:
	.word	-2085721055
	.word	-296397391
	.word	1199859632
	.word	-1990425732
	.word	-582152101
	.word	-424648656
	.word	1983293273
	.word	-1650511324
	.word	-75414819
	.word	1746087588
	.word	-7236473
	.word	1628020889
	.word	1990296413
	.word	2002532271
	.word	-2046515170
	.word	1115269572
	.word	147
	.word	0
	.section	.rodata.secp521r1_T_31_X,"a"
	.align	2
	.type	secp521r1_T_31_X, @object
	.size	secp521r1_T_31_X, 72
secp521r1_T_31_X:
	.word	885165238
	.word	656966651
	.word	1585251236
	.word	581963422
	.word	2135294626
	.word	599502009
	.word	-1035408122
	.word	659967382
	.word	-775572156
	.word	-1686233882
	.word	1897410194
	.word	-1277723859
	.word	-560118101
	.word	-1316063062
	.word	778688333
	.word	-565650975
	.word	507
	.word	0
	.section	.rodata.secp521r1_T_31_Y,"a"
	.align	2
	.type	secp521r1_T_31_Y, @object
	.size	secp521r1_T_31_Y, 72
secp521r1_T_31_Y:
	.word	161415087
	.word	-1914297822
	.word	321393772
	.word	571630107
	.word	57114572
	.word	99860656
	.word	-82852928
	.word	-197244891
	.word	-1739362805
	.word	-1798065354
	.word	575963627
	.word	583126180
	.word	-1443054859
	.word	730228959
	.word	-1022455183
	.word	1374181618
	.word	489
	.word	0
	.section	.rodata.secp521r1_T,"a"
	.align	2
	.type	secp521r1_T, @object
	.size	secp521r1_T, 768
secp521r1_T:
	.word	secp521r1_T_0_X
	.half	1
	.half	18
	.word	secp521r1_T_0_Y
	.half	1
	.half	18
	.word	mpi_one
	.half	1
	.half	1
	.word	secp521r1_T_1_X
	.half	1
	.half	18
	.word	secp521r1_T_1_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_2_X
	.half	1
	.half	18
	.word	secp521r1_T_2_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_3_X
	.half	1
	.half	18
	.word	secp521r1_T_3_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_4_X
	.half	1
	.half	18
	.word	secp521r1_T_4_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_5_X
	.half	1
	.half	18
	.word	secp521r1_T_5_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_6_X
	.half	1
	.half	18
	.word	secp521r1_T_6_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_7_X
	.half	1
	.half	18
	.word	secp521r1_T_7_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_8_X
	.half	1
	.half	18
	.word	secp521r1_T_8_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_9_X
	.half	1
	.half	18
	.word	secp521r1_T_9_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_10_X
	.half	1
	.half	18
	.word	secp521r1_T_10_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_11_X
	.half	1
	.half	18
	.word	secp521r1_T_11_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_12_X
	.half	1
	.half	18
	.word	secp521r1_T_12_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_13_X
	.half	1
	.half	18
	.word	secp521r1_T_13_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_14_X
	.half	1
	.half	18
	.word	secp521r1_T_14_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_15_X
	.half	1
	.half	18
	.word	secp521r1_T_15_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_16_X
	.half	1
	.half	18
	.word	secp521r1_T_16_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_17_X
	.half	1
	.half	18
	.word	secp521r1_T_17_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_18_X
	.half	1
	.half	18
	.word	secp521r1_T_18_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_19_X
	.half	1
	.half	18
	.word	secp521r1_T_19_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_20_X
	.half	1
	.half	18
	.word	secp521r1_T_20_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_21_X
	.half	1
	.half	18
	.word	secp521r1_T_21_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_22_X
	.half	1
	.half	18
	.word	secp521r1_T_22_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_23_X
	.half	1
	.half	18
	.word	secp521r1_T_23_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_24_X
	.half	1
	.half	18
	.word	secp521r1_T_24_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_25_X
	.half	1
	.half	18
	.word	secp521r1_T_25_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_26_X
	.half	1
	.half	18
	.word	secp521r1_T_26_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_27_X
	.half	1
	.half	18
	.word	secp521r1_T_27_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_28_X
	.half	1
	.half	18
	.word	secp521r1_T_28_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_29_X
	.half	1
	.half	18
	.word	secp521r1_T_29_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_30_X
	.half	1
	.half	18
	.word	secp521r1_T_30_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.word	secp521r1_T_31_X
	.half	1
	.half	18
	.word	secp521r1_T_31_Y
	.half	1
	.half	18
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp192k1_p,"a"
	.align	2
	.type	secp192k1_p, @object
	.size	secp192k1_p, 24
secp192k1_p:
	.word	-4553
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.section	.srodata.secp192k1_a,"a"
	.align	2
	.type	secp192k1_a, @object
	.size	secp192k1_a, 4
secp192k1_a:
	.zero	4
	.section	.srodata.secp192k1_b,"a"
	.align	2
	.type	secp192k1_b, @object
	.size	secp192k1_b, 4
secp192k1_b:
	.word	3
	.section	.rodata.secp192k1_gx,"a"
	.align	2
	.type	secp192k1_gx, @object
	.size	secp192k1_gx, 24
secp192k1_gx:
	.word	-354390915
	.word	497406385
	.word	-2135428044
	.word	649100546
	.word	-1067980370
	.word	-615517938
	.section	.rodata.secp192k1_gy,"a"
	.align	2
	.type	secp192k1_gy, @object
	.size	secp192k1_gy, 24
secp192k1_gy:
	.word	-648138851
	.word	1082305160
	.word	364807732
	.word	-2076089392
	.word	-1672075097
	.word	-1691406483
	.section	.rodata.secp192k1_n,"a"
	.align	2
	.type	secp192k1_n, @object
	.size	secp192k1_n, 24
secp192k1_n:
	.word	1960770957
	.word	258557546
	.word	653458455
	.word	-2
	.word	-1
	.word	-1
	.section	.rodata.secp192k1_T_0_X,"a"
	.align	2
	.type	secp192k1_T_0_X, @object
	.size	secp192k1_T_0_X, 24
secp192k1_T_0_X:
	.word	-354390915
	.word	497406385
	.word	-2135428044
	.word	649100546
	.word	-1067980370
	.word	-615517938
	.section	.rodata.secp192k1_T_0_Y,"a"
	.align	2
	.type	secp192k1_T_0_Y, @object
	.size	secp192k1_T_0_Y, 24
secp192k1_T_0_Y:
	.word	-648138851
	.word	1082305160
	.word	364807732
	.word	-2076089392
	.word	-1672075097
	.word	-1691406483
	.section	.rodata.secp192k1_T_1_X,"a"
	.align	2
	.type	secp192k1_T_1_X, @object
	.size	secp192k1_T_1_X, 24
secp192k1_T_1_X:
	.word	222132079
	.word	-1448589179
	.word	501155682
	.word	1409397683
	.word	-1342798331
	.word	780675609
	.section	.rodata.secp192k1_T_1_Y,"a"
	.align	2
	.type	secp192k1_T_1_Y, @object
	.size	secp192k1_T_1_Y, 24
secp192k1_T_1_Y:
	.word	800493619
	.word	1531721288
	.word	-1508634149
	.word	-652887349
	.word	-722292610
	.word	-675620151
	.section	.rodata.secp192k1_T_2_X,"a"
	.align	2
	.type	secp192k1_T_2_X, @object
	.size	secp192k1_T_2_X, 24
secp192k1_T_2_X:
	.word	-425934364
	.word	600832955
	.word	1521228179
	.word	1964804809
	.word	-2039023935
	.word	680339337
	.section	.rodata.secp192k1_T_2_Y,"a"
	.align	2
	.type	secp192k1_T_2_Y, @object
	.size	secp192k1_T_2_Y, 24
secp192k1_T_2_Y:
	.word	879747147
	.word	-1764532550
	.word	-2019107734
	.word	-2101305911
	.word	-696381175
	.word	-453233673
	.section	.rodata.secp192k1_T_3_X,"a"
	.align	2
	.type	secp192k1_T_3_X, @object
	.size	secp192k1_T_3_X, 24
secp192k1_T_3_X:
	.word	-1069664318
	.word	1424450175
	.word	-1654047835
	.word	-1719485372
	.word	1605600468
	.word	748594475
	.section	.rodata.secp192k1_T_3_Y,"a"
	.align	2
	.type	secp192k1_T_3_Y, @object
	.size	secp192k1_T_3_Y, 24
secp192k1_T_3_Y:
	.word	1290507549
	.word	1978971140
	.word	-716460715
	.word	1321528218
	.word	1506128329
	.word	706139619
	.section	.rodata.secp192k1_T_4_X,"a"
	.align	2
	.type	secp192k1_T_4_X, @object
	.size	secp192k1_T_4_X, 24
secp192k1_T_4_X:
	.word	-1395905976
	.word	-330240304
	.word	1541440409
	.word	542262292
	.word	2016220630
	.word	-818785802
	.section	.rodata.secp192k1_T_4_Y,"a"
	.align	2
	.type	secp192k1_T_4_Y, @object
	.size	secp192k1_T_4_Y, 24
secp192k1_T_4_Y:
	.word	-577030522
	.word	-1292902920
	.word	728412427
	.word	-1322521681
	.word	1719306185
	.word	-1881187491
	.section	.rodata.secp192k1_T_5_X,"a"
	.align	2
	.type	secp192k1_T_5_X, @object
	.size	secp192k1_T_5_X, 24
secp192k1_T_5_X:
	.word	-2115680926
	.word	590867355
	.word	551692723
	.word	1852515172
	.word	-515826178
	.word	-646225509
	.section	.rodata.secp192k1_T_5_Y,"a"
	.align	2
	.type	secp192k1_T_5_Y, @object
	.size	secp192k1_T_5_Y, 24
secp192k1_T_5_Y:
	.word	178476917
	.word	358212627
	.word	1212837497
	.word	-944992124
	.word	-202000228
	.word	497131742
	.section	.rodata.secp192k1_T_6_X,"a"
	.align	2
	.type	secp192k1_T_6_X, @object
	.size	secp192k1_T_6_X, 24
secp192k1_T_6_X:
	.word	-1451150685
	.word	860773009
	.word	-1097815861
	.word	-2050954225
	.word	148320384
	.word	-1522875218
	.section	.rodata.secp192k1_T_6_Y,"a"
	.align	2
	.type	secp192k1_T_6_Y, @object
	.size	secp192k1_T_6_Y, 24
secp192k1_T_6_Y:
	.word	1994610108
	.word	-1619761997
	.word	-606833345
	.word	-1371940968
	.word	-1416959020
	.word	198498582
	.section	.rodata.secp192k1_T_7_X,"a"
	.align	2
	.type	secp192k1_T_7_X, @object
	.size	secp192k1_T_7_X, 24
secp192k1_T_7_X:
	.word	-939934143
	.word	-1577862457
	.word	-212236862
	.word	-771604128
	.word	-1538646970
	.word	-1134105145
	.section	.rodata.secp192k1_T_7_Y,"a"
	.align	2
	.type	secp192k1_T_7_Y, @object
	.size	secp192k1_T_7_Y, 24
secp192k1_T_7_Y:
	.word	1177459907
	.word	344397906
	.word	1968846335
	.word	-1854583380
	.word	-55824434
	.word	1586751164
	.section	.rodata.secp192k1_T_8_X,"a"
	.align	2
	.type	secp192k1_T_8_X, @object
	.size	secp192k1_T_8_X, 24
secp192k1_T_8_X:
	.word	415845767
	.word	871039209
	.word	124938522
	.word	648567130
	.word	545482166
	.word	-2106984176
	.section	.rodata.secp192k1_T_8_Y,"a"
	.align	2
	.type	secp192k1_T_8_Y, @object
	.size	secp192k1_T_8_Y, 24
secp192k1_T_8_Y:
	.word	-1619044725
	.word	2114733759
	.word	-588197892
	.word	-437899809
	.word	980611081
	.word	585433978
	.section	.rodata.secp192k1_T_9_X,"a"
	.align	2
	.type	secp192k1_T_9_X, @object
	.size	secp192k1_T_9_X, 24
secp192k1_T_9_X:
	.word	324512318
	.word	-735271113
	.word	597863587
	.word	-748649223
	.word	1884416818
	.word	97155172
	.section	.rodata.secp192k1_T_9_Y,"a"
	.align	2
	.type	secp192k1_T_9_Y, @object
	.size	secp192k1_T_9_Y, 24
secp192k1_T_9_Y:
	.word	1647365265
	.word	-384612717
	.word	1825318433
	.word	752507965
	.word	62434005
	.word	-1778378076
	.section	.rodata.secp192k1_T_10_X,"a"
	.align	2
	.type	secp192k1_T_10_X, @object
	.size	secp192k1_T_10_X, 24
secp192k1_T_10_X:
	.word	-857301511
	.word	-708694450
	.word	-1366637644
	.word	-351977361
	.word	1296732061
	.word	-1655647435
	.section	.rodata.secp192k1_T_10_Y,"a"
	.align	2
	.type	secp192k1_T_10_Y, @object
	.size	secp192k1_T_10_Y, 24
secp192k1_T_10_Y:
	.word	-1416037089
	.word	1437860807
	.word	-1613610944
	.word	5492938
	.word	1862304794
	.word	-1913803320
	.section	.rodata.secp192k1_T_11_X,"a"
	.align	2
	.type	secp192k1_T_11_X, @object
	.size	secp192k1_T_11_X, 24
secp192k1_T_11_X:
	.word	-682110002
	.word	-675477565
	.word	491240039
	.word	1821962045
	.word	2137833581
	.word	1738534418
	.section	.rodata.secp192k1_T_11_Y,"a"
	.align	2
	.type	secp192k1_T_11_Y, @object
	.size	secp192k1_T_11_Y, 24
secp192k1_T_11_Y:
	.word	2044330698
	.word	-1004025430
	.word	1908898081
	.word	1525009284
	.word	-1173997803
	.word	1276695989
	.section	.rodata.secp192k1_T_12_X,"a"
	.align	2
	.type	secp192k1_T_12_X, @object
	.size	secp192k1_T_12_X, 24
secp192k1_T_12_X:
	.word	1819436449
	.word	1780966386
	.word	-546194327
	.word	1301870709
	.word	-593792912
	.word	-9365273
	.section	.rodata.secp192k1_T_12_Y,"a"
	.align	2
	.type	secp192k1_T_12_Y, @object
	.size	secp192k1_T_12_Y, 24
secp192k1_T_12_Y:
	.word	10443541
	.word	2055255642
	.word	-54796105
	.word	-1986234274
	.word	-2090335392
	.word	-582209987
	.section	.rodata.secp192k1_T_13_X,"a"
	.align	2
	.type	secp192k1_T_13_X, @object
	.size	secp192k1_T_13_X, 24
secp192k1_T_13_X:
	.word	-1474082501
	.word	-166052917
	.word	1185365387
	.word	750155215
	.word	19987858
	.word	-386273354
	.section	.rodata.secp192k1_T_13_Y,"a"
	.align	2
	.type	secp192k1_T_13_Y, @object
	.size	secp192k1_T_13_Y, 24
secp192k1_T_13_Y:
	.word	-1193608484
	.word	-943111639
	.word	-425666810
	.word	962692715
	.word	936634843
	.word	-1456085032
	.section	.rodata.secp192k1_T_14_X,"a"
	.align	2
	.type	secp192k1_T_14_X, @object
	.size	secp192k1_T_14_X, 24
secp192k1_T_14_X:
	.word	-1316042499
	.word	1303753163
	.word	2101794582
	.word	-1143151953
	.word	-655931696
	.word	1989161334
	.section	.rodata.secp192k1_T_14_Y,"a"
	.align	2
	.type	secp192k1_T_14_Y, @object
	.size	secp192k1_T_14_Y, 24
secp192k1_T_14_Y:
	.word	1962202091
	.word	1725458401
	.word	-935563033
	.word	1492410287
	.word	1559055908
	.word	890680131
	.section	.rodata.secp192k1_T_15_X,"a"
	.align	2
	.type	secp192k1_T_15_X, @object
	.size	secp192k1_T_15_X, 24
secp192k1_T_15_X:
	.word	-573460905
	.word	-254602191
	.word	319165672
	.word	-176088046
	.word	-1861420634
	.word	1666803703
	.section	.rodata.secp192k1_T_15_Y,"a"
	.align	2
	.type	secp192k1_T_15_Y, @object
	.size	secp192k1_T_15_Y, 24
secp192k1_T_15_Y:
	.word	-186478165
	.word	-2021069923
	.word	-1674542373
	.word	-1219684178
	.word	399472956
	.word	-924311899
	.section	.rodata.secp192k1_T,"a"
	.align	2
	.type	secp192k1_T, @object
	.size	secp192k1_T, 384
secp192k1_T:
	.word	secp192k1_T_0_X
	.half	1
	.half	6
	.word	secp192k1_T_0_Y
	.half	1
	.half	6
	.word	mpi_one
	.half	1
	.half	1
	.word	secp192k1_T_1_X
	.half	1
	.half	6
	.word	secp192k1_T_1_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_2_X
	.half	1
	.half	6
	.word	secp192k1_T_2_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_3_X
	.half	1
	.half	6
	.word	secp192k1_T_3_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_4_X
	.half	1
	.half	6
	.word	secp192k1_T_4_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_5_X
	.half	1
	.half	6
	.word	secp192k1_T_5_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_6_X
	.half	1
	.half	6
	.word	secp192k1_T_6_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_7_X
	.half	1
	.half	6
	.word	secp192k1_T_7_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_8_X
	.half	1
	.half	6
	.word	secp192k1_T_8_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_9_X
	.half	1
	.half	6
	.word	secp192k1_T_9_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_10_X
	.half	1
	.half	6
	.word	secp192k1_T_10_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_11_X
	.half	1
	.half	6
	.word	secp192k1_T_11_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_12_X
	.half	1
	.half	6
	.word	secp192k1_T_12_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_13_X
	.half	1
	.half	6
	.word	secp192k1_T_13_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_14_X
	.half	1
	.half	6
	.word	secp192k1_T_14_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.word	secp192k1_T_15_X
	.half	1
	.half	6
	.word	secp192k1_T_15_Y
	.half	1
	.half	6
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp224k1_p,"a"
	.align	2
	.type	secp224k1_p, @object
	.size	secp224k1_p, 28
secp224k1_p:
	.word	-6803
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.section	.srodata.secp224k1_a,"a"
	.align	2
	.type	secp224k1_a, @object
	.size	secp224k1_a, 4
secp224k1_a:
	.zero	4
	.section	.srodata.secp224k1_b,"a"
	.align	2
	.type	secp224k1_b, @object
	.size	secp224k1_b, 4
secp224k1_b:
	.word	5
	.section	.rodata.secp224k1_gx,"a"
	.align	2
	.type	secp224k1_gx, @object
	.size	secp224k1_gx, 28
secp224k1_gx:
	.word	-1229478820
	.word	259941646
	.word	-462391895
	.word	1772382185
	.word	821831841
	.word	1307613663
	.word	-1589290189
	.section	.rodata.secp224k1_gy,"a"
	.align	2
	.type	secp224k1_gy, @object
	.size	secp224k1_gy, 28
secp224k1_gy:
	.word	1433231781
	.word	-490058789
	.word	-1062159015
	.word	-136111625
	.word	-2100626474
	.word	2142909506
	.word	2114494445
	.section	.rodata.secp224k1_n,"a"
	.align	2
	.type	secp224k1_n, @object
	.size	secp224k1_n, 32
secp224k1_n:
	.word	1990177271
	.word	-890197647
	.word	-756260476
	.word	122088
	.word	0
	.word	0
	.word	0
	.word	1
	.section	.rodata.secp224k1_T_0_X,"a"
	.align	2
	.type	secp224k1_T_0_X, @object
	.size	secp224k1_T_0_X, 32
secp224k1_T_0_X:
	.word	-1229478820
	.word	259941646
	.word	-462391895
	.word	1772382185
	.word	821831841
	.word	1307613663
	.word	-1589290189
	.word	0
	.section	.rodata.secp224k1_T_0_Y,"a"
	.align	2
	.type	secp224k1_T_0_Y, @object
	.size	secp224k1_T_0_Y, 32
secp224k1_T_0_Y:
	.word	1433231781
	.word	-490058789
	.word	-1062159015
	.word	-136111625
	.word	-2100626474
	.word	2142909506
	.word	2114494445
	.word	0
	.section	.rodata.secp224k1_T_1_X,"a"
	.align	2
	.type	secp224k1_T_1_X, @object
	.size	secp224k1_T_1_X, 32
secp224k1_T_1_X:
	.word	572681369
	.word	2058258752
	.word	-2015260113
	.word	-1683016362
	.word	889761672
	.word	-318445017
	.word	-805481488
	.word	0
	.section	.rodata.secp224k1_T_1_Y,"a"
	.align	2
	.type	secp224k1_T_1_Y, @object
	.size	secp224k1_T_1_Y, 32
secp224k1_T_1_Y:
	.word	-1918906175
	.word	810836979
	.word	1628429113
	.word	-1731123628
	.word	469180917
	.word	2130058677
	.word	-1881537025
	.word	0
	.section	.rodata.secp224k1_T_2_X,"a"
	.align	2
	.type	secp224k1_T_2_X, @object
	.size	secp224k1_T_2_X, 32
secp224k1_T_2_X:
	.word	-1133304304
	.word	1449273828
	.word	-1961388745
	.word	-861103165
	.word	-545793103
	.word	-1744563235
	.word	-1826423806
	.word	0
	.section	.rodata.secp224k1_T_2_Y,"a"
	.align	2
	.type	secp224k1_T_2_Y, @object
	.size	secp224k1_T_2_Y, 32
secp224k1_T_2_Y:
	.word	1525769644
	.word	-1384517833
	.word	-1405681255
	.word	1699830682
	.word	-1458342406
	.word	-1677808310
	.word	1718583858
	.word	0
	.section	.rodata.secp224k1_T_3_X,"a"
	.align	2
	.type	secp224k1_T_3_X, @object
	.size	secp224k1_T_3_X, 32
secp224k1_T_3_X:
	.word	1089494605
	.word	518170307
	.word	-814769612
	.word	-2056903151
	.word	-811043975
	.word	926290475
	.word	1477096377
	.word	0
	.section	.rodata.secp224k1_T_3_Y,"a"
	.align	2
	.type	secp224k1_T_3_Y, @object
	.size	secp224k1_T_3_Y, 32
secp224k1_T_3_Y:
	.word	1426094547
	.word	445658116
	.word	-1038330870
	.word	588975173
	.word	-1465181818
	.word	-287542276
	.word	-829162638
	.word	0
	.section	.rodata.secp224k1_T_4_X,"a"
	.align	2
	.type	secp224k1_T_4_X, @object
	.size	secp224k1_T_4_X, 32
secp224k1_T_4_X:
	.word	1724937720
	.word	1724548757
	.word	371845655
	.word	1105148010
	.word	792109784
	.word	-144786468
	.word	1230604756
	.word	0
	.section	.rodata.secp224k1_T_4_Y,"a"
	.align	2
	.type	secp224k1_T_4_Y, @object
	.size	secp224k1_T_4_Y, 32
secp224k1_T_4_Y:
	.word	-1650875446
	.word	496859064
	.word	1195610890
	.word	-33989434
	.word	1115226282
	.word	1042659428
	.word	867456041
	.word	0
	.section	.rodata.secp224k1_T_5_X,"a"
	.align	2
	.type	secp224k1_T_5_X, @object
	.size	secp224k1_T_5_X, 32
secp224k1_T_5_X:
	.word	-1874719527
	.word	1597049731
	.word	-928108972
	.word	1892835271
	.word	1101905065
	.word	-2126892313
	.word	-2091739254
	.word	0
	.section	.rodata.secp224k1_T_5_Y,"a"
	.align	2
	.type	secp224k1_T_5_Y, @object
	.size	secp224k1_T_5_Y, 32
secp224k1_T_5_Y:
	.word	-1116073190
	.word	-44002130
	.word	-1265263726
	.word	531785838
	.word	1371425045
	.word	1947559678
	.word	-18597914
	.word	0
	.section	.rodata.secp224k1_T_6_X,"a"
	.align	2
	.type	secp224k1_T_6_X, @object
	.size	secp224k1_T_6_X, 32
secp224k1_T_6_X:
	.word	1693359094
	.word	2008882121
	.word	-1456185382
	.word	1378203403
	.word	951128976
	.word	-310862341
	.word	-98834631
	.word	0
	.section	.rodata.secp224k1_T_6_Y,"a"
	.align	2
	.type	secp224k1_T_6_Y, @object
	.size	secp224k1_T_6_Y, 32
secp224k1_T_6_Y:
	.word	1152889851
	.word	-2113901678
	.word	1044677271
	.word	1784158744
	.word	-457115627
	.word	1153417710
	.word	-1306054018
	.word	0
	.section	.rodata.secp224k1_T_7_X,"a"
	.align	2
	.type	secp224k1_T_7_X, @object
	.size	secp224k1_T_7_X, 32
secp224k1_T_7_X:
	.word	1648532212
	.word	559163019
	.word	-1602976476
	.word	-1091655559
	.word	-1285540224
	.word	-1101705944
	.word	696395570
	.word	0
	.section	.rodata.secp224k1_T_7_Y,"a"
	.align	2
	.type	secp224k1_T_7_Y, @object
	.size	secp224k1_T_7_Y, 32
secp224k1_T_7_Y:
	.word	2004089869
	.word	2024561839
	.word	-152703540
	.word	1130866717
	.word	473161464
	.word	-126648079
	.word	1021239850
	.word	0
	.section	.rodata.secp224k1_T_8_X,"a"
	.align	2
	.type	secp224k1_T_8_X, @object
	.size	secp224k1_T_8_X, 32
secp224k1_T_8_X:
	.word	-26526121
	.word	19399920
	.word	-1659587909
	.word	-1652748008
	.word	785826966
	.word	-515025042
	.word	-568633878
	.word	0
	.section	.rodata.secp224k1_T_8_Y,"a"
	.align	2
	.type	secp224k1_T_8_Y, @object
	.size	secp224k1_T_8_Y, 32
secp224k1_T_8_Y:
	.word	-1139280121
	.word	-1424577723
	.word	1643098317
	.word	-126082845
	.word	1296139628
	.word	1095597809
	.word	1587266201
	.word	0
	.section	.rodata.secp224k1_T_9_X,"a"
	.align	2
	.type	secp224k1_T_9_X, @object
	.size	secp224k1_T_9_X, 32
secp224k1_T_9_X:
	.word	1028206192
	.word	852708158
	.word	-711119928
	.word	-523568601
	.word	-529878093
	.word	254284921
	.word	-170123668
	.word	0
	.section	.rodata.secp224k1_T_9_Y,"a"
	.align	2
	.type	secp224k1_T_9_Y, @object
	.size	secp224k1_T_9_Y, 32
secp224k1_T_9_Y:
	.word	-849984310
	.word	-16146436
	.word	-1537635236
	.word	-314955164
	.word	-2034917312
	.word	114977102
	.word	940673800
	.word	0
	.section	.rodata.secp224k1_T_10_X,"a"
	.align	2
	.type	secp224k1_T_10_X, @object
	.size	secp224k1_T_10_X, 32
secp224k1_T_10_X:
	.word	303437728
	.word	2113985559
	.word	1814329063
	.word	-105567081
	.word	-1327271550
	.word	1380994747
	.word	-718911378
	.word	0
	.section	.rodata.secp224k1_T_10_Y,"a"
	.align	2
	.type	secp224k1_T_10_Y, @object
	.size	secp224k1_T_10_Y, 32
secp224k1_T_10_Y:
	.word	-165126394
	.word	1096833537
	.word	-788621906
	.word	-640412243
	.word	-42312787
	.word	1688205184
	.word	-551830478
	.word	0
	.section	.rodata.secp224k1_T_11_X,"a"
	.align	2
	.type	secp224k1_T_11_X, @object
	.size	secp224k1_T_11_X, 32
secp224k1_T_11_X:
	.word	350217915
	.word	349500457
	.word	-321056027
	.word	-447116709
	.word	893293094
	.word	248506632
	.word	-1758906912
	.word	0
	.section	.rodata.secp224k1_T_11_Y,"a"
	.align	2
	.type	secp224k1_T_11_Y, @object
	.size	secp224k1_T_11_Y, 32
secp224k1_T_11_Y:
	.word	1792465681
	.word	-1583070267
	.word	1632645985
	.word	-823549584
	.word	1601049877
	.word	-91485183
	.word	-1650810491
	.word	0
	.section	.rodata.secp224k1_T_12_X,"a"
	.align	2
	.type	secp224k1_T_12_X, @object
	.size	secp224k1_T_12_X, 32
secp224k1_T_12_X:
	.word	-487078290
	.word	1637600586
	.word	-1202041548
	.word	1353084386
	.word	397819698
	.word	1701784803
	.word	1364829214
	.word	0
	.section	.rodata.secp224k1_T_12_Y,"a"
	.align	2
	.type	secp224k1_T_12_Y, @object
	.size	secp224k1_T_12_Y, 32
secp224k1_T_12_Y:
	.word	1232883575
	.word	1022062285
	.word	-1222653691
	.word	1741133901
	.word	546897228
	.word	975223701
	.word	-1837894944
	.word	0
	.section	.rodata.secp224k1_T_13_X,"a"
	.align	2
	.type	secp224k1_T_13_X, @object
	.size	secp224k1_T_13_X, 32
secp224k1_T_13_X:
	.word	821817314
	.word	-1340468486
	.word	-1272689542
	.word	256690523
	.word	-2074157702
	.word	-316256875
	.word	989461219
	.word	0
	.section	.rodata.secp224k1_T_13_Y,"a"
	.align	2
	.type	secp224k1_T_13_Y, @object
	.size	secp224k1_T_13_Y, 32
secp224k1_T_13_Y:
	.word	2049876842
	.word	-1454135332
	.word	-2071879812
	.word	838733234
	.word	1998293345
	.word	-328103668
	.word	-1300234246
	.word	0
	.section	.rodata.secp224k1_T_14_X,"a"
	.align	2
	.type	secp224k1_T_14_X, @object
	.size	secp224k1_T_14_X, 32
secp224k1_T_14_X:
	.word	2032986408
	.word	-1817363290
	.word	35905750
	.word	712445830
	.word	-378694893
	.word	-1178714887
	.word	-1843075324
	.word	0
	.section	.rodata.secp224k1_T_14_Y,"a"
	.align	2
	.type	secp224k1_T_14_Y, @object
	.size	secp224k1_T_14_Y, 32
secp224k1_T_14_Y:
	.word	1264270523
	.word	-701029093
	.word	456714441
	.word	1747868321
	.word	-184739581
	.word	1147863416
	.word	1329031439
	.word	0
	.section	.rodata.secp224k1_T_15_X,"a"
	.align	2
	.type	secp224k1_T_15_X, @object
	.size	secp224k1_T_15_X, 32
secp224k1_T_15_X:
	.word	-742399462
	.word	60593644
	.word	-704873534
	.word	257828307
	.word	-1576446663
	.word	-3577256
	.word	-650392448
	.word	0
	.section	.rodata.secp224k1_T_15_Y,"a"
	.align	2
	.type	secp224k1_T_15_Y, @object
	.size	secp224k1_T_15_Y, 32
secp224k1_T_15_Y:
	.word	1583679631
	.word	-934761525
	.word	-1064601106
	.word	946454545
	.word	1284303078
	.word	-1360779067
	.word	1546919845
	.word	0
	.section	.rodata.secp224k1_T,"a"
	.align	2
	.type	secp224k1_T, @object
	.size	secp224k1_T, 384
secp224k1_T:
	.word	secp224k1_T_0_X
	.half	1
	.half	8
	.word	secp224k1_T_0_Y
	.half	1
	.half	8
	.word	mpi_one
	.half	1
	.half	1
	.word	secp224k1_T_1_X
	.half	1
	.half	8
	.word	secp224k1_T_1_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_2_X
	.half	1
	.half	8
	.word	secp224k1_T_2_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_3_X
	.half	1
	.half	8
	.word	secp224k1_T_3_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_4_X
	.half	1
	.half	8
	.word	secp224k1_T_4_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_5_X
	.half	1
	.half	8
	.word	secp224k1_T_5_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_6_X
	.half	1
	.half	8
	.word	secp224k1_T_6_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_7_X
	.half	1
	.half	8
	.word	secp224k1_T_7_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_8_X
	.half	1
	.half	8
	.word	secp224k1_T_8_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_9_X
	.half	1
	.half	8
	.word	secp224k1_T_9_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_10_X
	.half	1
	.half	8
	.word	secp224k1_T_10_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_11_X
	.half	1
	.half	8
	.word	secp224k1_T_11_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_12_X
	.half	1
	.half	8
	.word	secp224k1_T_12_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_13_X
	.half	1
	.half	8
	.word	secp224k1_T_13_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_14_X
	.half	1
	.half	8
	.word	secp224k1_T_14_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp224k1_T_15_X
	.half	1
	.half	8
	.word	secp224k1_T_15_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.section	.rodata.secp256k1_p,"a"
	.align	2
	.type	secp256k1_p, @object
	.size	secp256k1_p, 32
secp256k1_p:
	.word	-977
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.section	.srodata.secp256k1_a,"a"
	.align	2
	.type	secp256k1_a, @object
	.size	secp256k1_a, 4
secp256k1_a:
	.zero	4
	.section	.srodata.secp256k1_b,"a"
	.align	2
	.type	secp256k1_b, @object
	.size	secp256k1_b, 4
secp256k1_b:
	.word	7
	.section	.rodata.secp256k1_gx,"a"
	.align	2
	.type	secp256k1_gx, @object
	.size	secp256k1_gx, 32
secp256k1_gx:
	.word	385357720
	.word	1509065051
	.word	768485593
	.word	43777243
	.word	-830010617
	.word	1436574357
	.word	-102974548
	.word	2042521214
	.section	.rodata.secp256k1_gy,"a"
	.align	2
	.type	secp256k1_gy, @object
	.size	secp256k1_gy, 32
secp256k1_gy:
	.word	-82783048
	.word	-1673015153
	.word	-1501211623
	.word	-48778168
	.word	235997352
	.word	1571093500
	.word	648266853
	.word	1211816567
	.section	.rodata.secp256k1_n,"a"
	.align	2
	.type	secp256k1_n, @object
	.size	secp256k1_n, 32
secp256k1_n:
	.word	-801750719
	.word	-1076732276
	.word	-1354194885
	.word	-1162945306
	.word	-2
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.secp256k1_T_0_X,"a"
	.align	2
	.type	secp256k1_T_0_X, @object
	.size	secp256k1_T_0_X, 32
secp256k1_T_0_X:
	.word	385357720
	.word	1509065051
	.word	768485593
	.word	43777243
	.word	-830010617
	.word	1436574357
	.word	-102974548
	.word	2042521214
	.section	.rodata.secp256k1_T_0_Y,"a"
	.align	2
	.type	secp256k1_T_0_Y, @object
	.size	secp256k1_T_0_Y, 32
secp256k1_T_0_Y:
	.word	-82783048
	.word	-1673015153
	.word	-1501211623
	.word	-48778168
	.word	235997352
	.word	1571093500
	.word	648266853
	.word	1211816567
	.section	.rodata.secp256k1_T_1_X,"a"
	.align	2
	.type	secp256k1_T_1_X, @object
	.size	secp256k1_T_1_X, 32
secp256k1_T_1_X:
	.word	517467879
	.word	1949468263
	.word	-1447988445
	.word	2015874261
	.word	17894943
	.word	1939013233
	.word	1835215046
	.word	-1062860430
	.section	.rodata.secp256k1_T_1_Y,"a"
	.align	2
	.type	secp256k1_T_1_Y, @object
	.size	secp256k1_T_1_Y, 32
secp256k1_T_1_Y:
	.word	-597040690
	.word	-1015731138
	.word	809482213
	.word	-1897972698
	.word	1572453949
	.word	341764110
	.word	-704265471
	.word	-64694857
	.section	.rodata.secp256k1_T_2_X,"a"
	.align	2
	.type	secp256k1_T_2_X, @object
	.size	secp256k1_T_2_X, 32
secp256k1_T_2_X:
	.word	-595865837
	.word	-1657158707
	.word	-440804798
	.word	-1857575068
	.word	1638418038
	.word	1491805174
	.word	-453000868
	.word	-1077750443
	.section	.rodata.secp256k1_T_2_Y,"a"
	.align	2
	.type	secp256k1_T_2_Y, @object
	.size	secp256k1_T_2_Y, 32
secp256k1_T_2_Y:
	.word	1505345225
	.word	709497636
	.word	-569227932
	.word	1458524090
	.word	-1044444994
	.word	-1140151706
	.word	1429274166
	.word	-1264089551
	.section	.rodata.secp256k1_T_3_X,"a"
	.align	2
	.type	secp256k1_T_3_X, @object
	.size	secp256k1_T_3_X, 32
secp256k1_T_3_X:
	.word	-2129084643
	.word	-1119738009
	.word	-1534917368
	.word	1356027869
	.word	-458530016
	.word	2094035088
	.word	-1594008207
	.word	1411174383
	.section	.rodata.secp256k1_T_3_Y,"a"
	.align	2
	.type	secp256k1_T_3_Y, @object
	.size	secp256k1_T_3_Y, 32
secp256k1_T_3_Y:
	.word	-152797165
	.word	-1873298423
	.word	-2006016223
	.word	-229544364
	.word	-75145227
	.word	-1437974908
	.word	1442126248
	.word	-824703031
	.section	.rodata.secp256k1_T_4_X,"a"
	.align	2
	.type	secp256k1_T_4_X, @object
	.size	secp256k1_T_4_X, 32
secp256k1_T_4_X:
	.word	-641485798
	.word	-1865113508
	.word	1504653325
	.word	-2063271781
	.word	1727899213
	.word	-2059811973
	.word	-1024409632
	.word	-1633390103
	.section	.rodata.secp256k1_T_4_Y,"a"
	.align	2
	.type	secp256k1_T_4_Y, @object
	.size	secp256k1_T_4_Y, 32
secp256k1_T_4_Y:
	.word	-2001130220
	.word	2025779496
	.word	236647188
	.word	879100345
	.word	-190535817
	.word	1403703301
	.word	1193163008
	.word	-1060607771
	.section	.rodata.secp256k1_T_5_X,"a"
	.align	2
	.type	secp256k1_T_5_X, @object
	.size	secp256k1_T_5_X, 32
secp256k1_T_5_X:
	.word	-520308259
	.word	-1770157517
	.word	1403360079
	.word	1857295957
	.word	-1679138839
	.word	-630107607
	.word	-1205538638
	.word	-1683966083
	.section	.rodata.secp256k1_T_5_Y,"a"
	.align	2
	.type	secp256k1_T_5_Y, @object
	.size	secp256k1_T_5_Y, 32
secp256k1_T_5_Y:
	.word	-1306066750
	.word	-526224417
	.word	2085432861
	.word	841186014
	.word	-949983828
	.word	581181079
	.word	2002457549
	.word	-516502695
	.section	.rodata.secp256k1_T_6_X,"a"
	.align	2
	.type	secp256k1_T_6_X, @object
	.size	secp256k1_T_6_X, 32
secp256k1_T_6_X:
	.word	-1633698663
	.word	-1473621203
	.word	-1620811897
	.word	2011568410
	.word	-767984738
	.word	-712735269
	.word	1477298051
	.word	357711726
	.section	.rodata.secp256k1_T_6_Y,"a"
	.align	2
	.type	secp256k1_T_6_Y, @object
	.size	secp256k1_T_6_Y, 32
secp256k1_T_6_Y:
	.word	186214433
	.word	-81868440
	.word	1226919634
	.word	634148157
	.word	1160116725
	.word	263275860
	.word	-839404631
	.word	84190336
	.section	.rodata.secp256k1_T_7_X,"a"
	.align	2
	.type	secp256k1_T_7_X, @object
	.size	secp256k1_T_7_X, 32
secp256k1_T_7_X:
	.word	-997712172
	.word	1165891754
	.word	-1294357429
	.word	1567735969
	.word	368157353
	.word	-2039717978
	.word	-1140499633
	.word	1917765303
	.section	.rodata.secp256k1_T_7_Y,"a"
	.align	2
	.type	secp256k1_T_7_Y, @object
	.size	secp256k1_T_7_Y, 32
secp256k1_T_7_Y:
	.word	1559789597
	.word	-488560096
	.word	1747863676
	.word	1609269122
	.word	-618316894
	.word	1116228914
	.word	-1230606610
	.word	578314861
	.section	.rodata.secp256k1_T_8_X,"a"
	.align	2
	.type	secp256k1_T_8_X, @object
	.size	secp256k1_T_8_X, 32
secp256k1_T_8_X:
	.word	-2042737377
	.word	-1158954152
	.word	406030618
	.word	-409264863
	.word	-1006658293
	.word	-125255303
	.word	1397281832
	.word	371305960
	.section	.rodata.secp256k1_T_8_Y,"a"
	.align	2
	.type	secp256k1_T_8_Y, @object
	.size	secp256k1_T_8_Y, 32
secp256k1_T_8_Y:
	.word	-874611723
	.word	2081896920
	.word	-234621997
	.word	-1966556068
	.word	-1337151961
	.word	-2037144554
	.word	-596931727
	.word	2118032087
	.section	.rodata.secp256k1_T_9_X,"a"
	.align	2
	.type	secp256k1_T_9_X, @object
	.size	secp256k1_T_9_X, 32
secp256k1_T_9_X:
	.word	-763744810
	.word	-2103311015
	.word	839472727
	.word	1927538929
	.word	786811395
	.word	421067760
	.word	598312378
	.word	236925205
	.section	.rodata.secp256k1_T_9_Y,"a"
	.align	2
	.type	secp256k1_T_9_Y, @object
	.size	secp256k1_T_9_Y, 32
secp256k1_T_9_Y:
	.word	-2035161738
	.word	-745705799
	.word	-906201236
	.word	-762757213
	.word	635202267
	.word	1413597104
	.word	-1502932734
	.word	768893457
	.section	.rodata.secp256k1_T_10_X,"a"
	.align	2
	.type	secp256k1_T_10_X, @object
	.size	secp256k1_T_10_X, 32
secp256k1_T_10_X:
	.word	-1288405735
	.word	-1439203552
	.word	-398076739
	.word	-356128318
	.word	624636506
	.word	-407930498
	.word	1901388863
	.word	-800180802
	.section	.rodata.secp256k1_T_10_Y,"a"
	.align	2
	.type	secp256k1_T_10_Y, @object
	.size	secp256k1_T_10_Y, 32
secp256k1_T_10_Y:
	.word	-1881303888
	.word	1977467573
	.word	485050631
	.word	-968292305
	.word	-2013022601
	.word	1729476719
	.word	-216214620
	.word	24767397
	.section	.rodata.secp256k1_T_11_X,"a"
	.align	2
	.type	secp256k1_T_11_X, @object
	.size	secp256k1_T_11_X, 32
secp256k1_T_11_X:
	.word	-2008811227
	.word	-368702071
	.word	-1728762622
	.word	95548978
	.word	730821411
	.word	-418764976
	.word	381543335
	.word	311674885
	.section	.rodata.secp256k1_T_11_Y,"a"
	.align	2
	.type	secp256k1_T_11_Y, @object
	.size	secp256k1_T_11_Y, 32
secp256k1_T_11_Y:
	.word	-470324726
	.word	794811965
	.word	580690759
	.word	1563833148
	.word	1766597664
	.word	-1374390203
	.word	-1076561831
	.word	631357624
	.section	.rodata.secp256k1_T_12_X,"a"
	.align	2
	.type	secp256k1_T_12_X, @object
	.size	secp256k1_T_12_X, 32
secp256k1_T_12_X:
	.word	-1847490434
	.word	733211395
	.word	-274656932
	.word	2110000404
	.word	487445758
	.word	425472918
	.word	438977904
	.word	-1694214170
	.section	.rodata.secp256k1_T_12_Y,"a"
	.align	2
	.type	secp256k1_T_12_Y, @object
	.size	secp256k1_T_12_Y, 32
secp256k1_T_12_Y:
	.word	-2136492688
	.word	-1919446039
	.word	-1602438819
	.word	1126586313
	.word	-631836770
	.word	-1709443482
	.word	-1855223521
	.word	728082912
	.section	.rodata.secp256k1_T_13_X,"a"
	.align	2
	.type	secp256k1_T_13_X, @object
	.size	secp256k1_T_13_X, 32
secp256k1_T_13_X:
	.word	-1684629359
	.word	1516141830
	.word	1606547978
	.word	-1651230951
	.word	443268815
	.word	-1614814203
	.word	895339908
	.word	1693929908
	.section	.rodata.secp256k1_T_13_Y,"a"
	.align	2
	.type	secp256k1_T_13_Y, @object
	.size	secp256k1_T_13_Y, 32
secp256k1_T_13_Y:
	.word	-610865300
	.word	1499685362
	.word	-913832757
	.word	-1181475937
	.word	2121871579
	.word	-1201674460
	.word	-1215252417
	.word	263923092
	.section	.rodata.secp256k1_T_14_X,"a"
	.align	2
	.type	secp256k1_T_14_X, @object
	.size	secp256k1_T_14_X, 32
secp256k1_T_14_X:
	.word	-1377142430
	.word	1461218752
	.word	710452457
	.word	-424438387
	.word	314754248
	.word	736262413
	.word	-1749127422
	.word	119579725
	.section	.rodata.secp256k1_T_14_Y,"a"
	.align	2
	.type	secp256k1_T_14_Y, @object
	.size	secp256k1_T_14_Y, 32
secp256k1_T_14_Y:
	.word	-965660214
	.word	535531942
	.word	1252563892
	.word	-1428064281
	.word	1037239977
	.word	-1930481516
	.word	-87367705
	.word	-906483467
	.section	.rodata.secp256k1_T_15_X,"a"
	.align	2
	.type	secp256k1_T_15_X, @object
	.size	secp256k1_T_15_X, 32
secp256k1_T_15_X:
	.word	-46997044
	.word	301498686
	.word	491516621
	.word	-871380711
	.word	579514713
	.word	1449854347
	.word	820977973
	.word	-1993733652
	.section	.rodata.secp256k1_T_15_Y,"a"
	.align	2
	.type	secp256k1_T_15_Y, @object
	.size	secp256k1_T_15_Y, 32
secp256k1_T_15_Y:
	.word	1179288597
	.word	1279028231
	.word	-197519139
	.word	-223152692
	.word	181243727
	.word	-1782713188
	.word	-1971353289
	.word	-1422241103
	.section	.rodata.secp256k1_T,"a"
	.align	2
	.type	secp256k1_T, @object
	.size	secp256k1_T, 384
secp256k1_T:
	.word	secp256k1_T_0_X
	.half	1
	.half	8
	.word	secp256k1_T_0_Y
	.half	1
	.half	8
	.word	mpi_one
	.half	1
	.half	1
	.word	secp256k1_T_1_X
	.half	1
	.half	8
	.word	secp256k1_T_1_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_2_X
	.half	1
	.half	8
	.word	secp256k1_T_2_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_3_X
	.half	1
	.half	8
	.word	secp256k1_T_3_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_4_X
	.half	1
	.half	8
	.word	secp256k1_T_4_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_5_X
	.half	1
	.half	8
	.word	secp256k1_T_5_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_6_X
	.half	1
	.half	8
	.word	secp256k1_T_6_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_7_X
	.half	1
	.half	8
	.word	secp256k1_T_7_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_8_X
	.half	1
	.half	8
	.word	secp256k1_T_8_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_9_X
	.half	1
	.half	8
	.word	secp256k1_T_9_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_10_X
	.half	1
	.half	8
	.word	secp256k1_T_10_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_11_X
	.half	1
	.half	8
	.word	secp256k1_T_11_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_12_X
	.half	1
	.half	8
	.word	secp256k1_T_12_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_13_X
	.half	1
	.half	8
	.word	secp256k1_T_13_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_14_X
	.half	1
	.half	8
	.word	secp256k1_T_14_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	secp256k1_T_15_X
	.half	1
	.half	8
	.word	secp256k1_T_15_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.section	.rodata.brainpoolP256r1_p,"a"
	.align	2
	.type	brainpoolP256r1_p, @object
	.size	brainpoolP256r1_p, 32
brainpoolP256r1_p:
	.word	527324023
	.word	538134557
	.word	-718921688
	.word	1849423395
	.word	-1652322958
	.word	1046874768
	.word	-1578194500
	.word	-1443145765
	.section	.rodata.brainpoolP256r1_a,"a"
	.align	2
	.type	brainpoolP256r1_a, @object
	.size	brainpoolP256r1_a, 32
brainpoolP256r1_a:
	.word	-214911527
	.word	-381007036
	.word	651975788
	.word	-75475519
	.word	1098579943
	.word	-285838032
	.word	-64212905
	.word	2103052661
	.section	.rodata.brainpoolP256r1_b,"a"
	.align	2
	.type	brainpoolP256r1_b, @object
	.size	brainpoolP256r1_b, 32
brainpoolP256r1_b:
	.word	-7600202
	.word	1808587800
	.word	1559749070
	.word	-1786505687
	.word	-1143505729
	.word	-214911527
	.word	-381007036
	.word	651975788
	.section	.rodata.brainpoolP256r1_gx,"a"
	.align	2
	.type	brainpoolP256r1_gx, @object
	.size	brainpoolP256r1_gx, 32
brainpoolP256r1_gx:
	.word	-1697762718
	.word	977556413
	.word	-474143806
	.word	-1176623135
	.word	-58607697
	.word	743131183
	.word	-880912437
	.word	-1949126983
	.section	.rodata.brainpoolP256r1_gy,"a"
	.align	2
	.type	brainpoolP256r1_gy, @object
	.size	brainpoolP256r1_gy, 32
brainpoolP256r1_gy:
	.word	788818327
	.word	1545426119
	.word	770543188
	.word	-1032370925
	.word	341908937
	.word	-1745336806
	.word	-1009072899
	.word	1417607221
	.section	.rodata.brainpoolP256r1_n,"a"
	.align	2
	.type	brainpoolP256r1_n, @object
	.size	brainpoolP256r1_n, 32
brainpoolP256r1_n:
	.word	-1756866905
	.word	-1877078398
	.word	-1251891465
	.word	-1942390109
	.word	-1652322959
	.word	1046874768
	.word	-1578194500
	.word	-1443145765
	.section	.rodata.brainpoolP256r1_T_0_X,"a"
	.align	2
	.type	brainpoolP256r1_T_0_X, @object
	.size	brainpoolP256r1_T_0_X, 32
brainpoolP256r1_T_0_X:
	.word	-1697762718
	.word	977556413
	.word	-474143806
	.word	-1176623135
	.word	-58607697
	.word	743131183
	.word	-880912437
	.word	-1949126983
	.section	.rodata.brainpoolP256r1_T_0_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_0_Y, @object
	.size	brainpoolP256r1_T_0_Y, 32
brainpoolP256r1_T_0_Y:
	.word	788818327
	.word	1545426119
	.word	770543188
	.word	-1032370925
	.word	341908937
	.word	-1745336806
	.word	-1009072899
	.word	1417607221
	.section	.rodata.brainpoolP256r1_T_1_X,"a"
	.align	2
	.type	brainpoolP256r1_T_1_X, @object
	.size	brainpoolP256r1_T_1_X, 32
brainpoolP256r1_T_1_X:
	.word	1391305276
	.word	-1511813943
	.word	-2017146510
	.word	-780496065
	.word	1632834198
	.word	-888637890
	.word	-193688567
	.word	-2139700472
	.section	.rodata.brainpoolP256r1_T_1_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_1_Y, @object
	.size	brainpoolP256r1_T_1_Y, 32
brainpoolP256r1_T_1_Y:
	.word	-1509303035
	.word	952430317
	.word	1270798708
	.word	1848358821
	.word	-904781758
	.word	-1423689718
	.word	-1871613440
	.word	599207546
	.section	.rodata.brainpoolP256r1_T_2_X,"a"
	.align	2
	.type	brainpoolP256r1_T_2_X, @object
	.size	brainpoolP256r1_T_2_X, 32
brainpoolP256r1_T_2_X:
	.word	-1818139092
	.word	391195152
	.word	303108232
	.word	-1816743748
	.word	181884988
	.word	-1667037820
	.word	1637191415
	.word	920587219
	.section	.rodata.brainpoolP256r1_T_2_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_2_Y, @object
	.size	brainpoolP256r1_T_2_Y, 32
brainpoolP256r1_T_2_Y:
	.word	252875513
	.word	460359518
	.word	-342103752
	.word	-993002694
	.word	-138833188
	.word	-1241066683
	.word	-513464190
	.word	408382661
	.section	.rodata.brainpoolP256r1_T_3_X,"a"
	.align	2
	.type	brainpoolP256r1_T_3_X, @object
	.size	brainpoolP256r1_T_3_X, 32
brainpoolP256r1_T_3_X:
	.word	24579624
	.word	1547214465
	.word	-1512705935
	.word	-1059116143
	.word	632745688
	.word	769562838
	.word	1666556283
	.word	1203104569
	.section	.rodata.brainpoolP256r1_T_3_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_3_Y, @object
	.size	brainpoolP256r1_T_3_Y, 32
brainpoolP256r1_T_3_Y:
	.word	-474425674
	.word	-1551897325
	.word	917432428
	.word	35245496
	.word	2055439097
	.word	-396999045
	.word	356933710
	.word	815377498
	.section	.rodata.brainpoolP256r1_T_4_X,"a"
	.align	2
	.type	brainpoolP256r1_T_4_X, @object
	.size	brainpoolP256r1_T_4_X, 32
brainpoolP256r1_T_4_X:
	.word	-967810625
	.word	75305215
	.word	-1444982382
	.word	1948678269
	.word	-140896938
	.word	1086046465
	.word	719720230
	.word	-2019669315
	.section	.rodata.brainpoolP256r1_T_4_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_4_Y, @object
	.size	brainpoolP256r1_T_4_Y, 32
brainpoolP256r1_T_4_Y:
	.word	2010249303
	.word	-575452718
	.word	-1627683274
	.word	1197496863
	.word	-846347112
	.word	-114335354
	.word	-1397098943
	.word	686398775
	.section	.rodata.brainpoolP256r1_T_5_X,"a"
	.align	2
	.type	brainpoolP256r1_T_5_X, @object
	.size	brainpoolP256r1_T_5_X, 32
brainpoolP256r1_T_5_X:
	.word	-1750435846
	.word	537136028
	.word	-2124372352
	.word	1041442254
	.word	-1141702620
	.word	-1214932606
	.word	-1865524665
	.word	271530097
	.section	.rodata.brainpoolP256r1_T_5_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_5_Y, @object
	.size	brainpoolP256r1_T_5_Y, 32
brainpoolP256r1_T_5_Y:
	.word	-2067785049
	.word	-1214392793
	.word	374486836
	.word	-1831989741
	.word	-614809826
	.word	1763602139
	.word	-111233218
	.word	1552604550
	.section	.rodata.brainpoolP256r1_T_6_X,"a"
	.align	2
	.type	brainpoolP256r1_T_6_X, @object
	.size	brainpoolP256r1_T_6_X, 32
brainpoolP256r1_T_6_X:
	.word	-1923306691
	.word	506327581
	.word	-134691483
	.word	1292604957
	.word	1168592044
	.word	1528719904
	.word	-554738399
	.word	423901678
	.section	.rodata.brainpoolP256r1_T_6_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_6_Y, @object
	.size	brainpoolP256r1_T_6_Y, 32
brainpoolP256r1_T_6_Y:
	.word	1382887243
	.word	-396338999
	.word	-882718269
	.word	-900383688
	.word	269067775
	.word	-1109140600
	.word	-834871214
	.word	1565199110
	.section	.rodata.brainpoolP256r1_T_7_X,"a"
	.align	2
	.type	brainpoolP256r1_T_7_X, @object
	.size	brainpoolP256r1_T_7_X, 32
brainpoolP256r1_T_7_X:
	.word	280239537
	.word	163221366
	.word	123367511
	.word	-948692235
	.word	-1466636021
	.word	1246418368
	.word	-388731586
	.word	242084251
	.section	.rodata.brainpoolP256r1_T_7_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_7_Y, @object
	.size	brainpoolP256r1_T_7_Y, 32
brainpoolP256r1_T_7_Y:
	.word	1093795941
	.word	1384744023
	.word	-334182418
	.word	-201381911
	.word	-73504870
	.word	-208226122
	.word	-1746711835
	.word	819877963
	.section	.rodata.brainpoolP256r1_T_8_X,"a"
	.align	2
	.type	brainpoolP256r1_T_8_X, @object
	.size	brainpoolP256r1_T_8_X, 32
brainpoolP256r1_T_8_X:
	.word	-178512218
	.word	-1428892289
	.word	-243660707
	.word	516393405
	.word	454162746
	.word	-1938998027
	.word	1776635929
	.word	217864477
	.section	.rodata.brainpoolP256r1_T_8_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_8_Y, @object
	.size	brainpoolP256r1_T_8_Y, 32
brainpoolP256r1_T_8_Y:
	.word	1073229809
	.word	1469666796
	.word	-1876318399
	.word	1278312771
	.word	1346640067
	.word	-573868451
	.word	-1705261584
	.word	957867523
	.section	.rodata.brainpoolP256r1_T_9_X,"a"
	.align	2
	.type	brainpoolP256r1_T_9_X, @object
	.size	brainpoolP256r1_T_9_X, 32
brainpoolP256r1_T_9_X:
	.word	1442613537
	.word	-1570074220
	.word	-231389580
	.word	789070394
	.word	1232523987
	.word	2144569154
	.word	1386277520
	.word	1462790897
	.section	.rodata.brainpoolP256r1_T_9_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_9_Y, @object
	.size	brainpoolP256r1_T_9_Y, 32
brainpoolP256r1_T_9_Y:
	.word	-1554533888
	.word	1008422282
	.word	-1801870340
	.word	157564341
	.word	1406649141
	.word	1612466678
	.word	1296114471
	.word	1398569723
	.section	.rodata.brainpoolP256r1_T_10_X,"a"
	.align	2
	.type	brainpoolP256r1_T_10_X, @object
	.size	brainpoolP256r1_T_10_X, 32
brainpoolP256r1_T_10_X:
	.word	1695922378
	.word	-678132388
	.word	-121161812
	.word	275558014
	.word	1410455635
	.word	-236764008
	.word	1269190116
	.word	-1638403544
	.section	.rodata.brainpoolP256r1_T_10_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_10_Y, @object
	.size	brainpoolP256r1_T_10_Y, 32
brainpoolP256r1_T_10_Y:
	.word	518770934
	.word	1792225450
	.word	-1488086184
	.word	1169583731
	.word	-302626979
	.word	1299312439
	.word	1632220584
	.word	1257653598
	.section	.rodata.brainpoolP256r1_T_11_X,"a"
	.align	2
	.type	brainpoolP256r1_T_11_X, @object
	.size	brainpoolP256r1_T_11_X, 32
brainpoolP256r1_T_11_X:
	.word	-2068640017
	.word	-2072878278
	.word	-1487121555
	.word	-1632948538
	.word	-2020667413
	.word	-1363924912
	.word	-1739941796
	.word	1372227121
	.section	.rodata.brainpoolP256r1_T_11_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_11_Y, @object
	.size	brainpoolP256r1_T_11_Y, 32
brainpoolP256r1_T_11_Y:
	.word	-35468866
	.word	-1024975011
	.word	-997093163
	.word	-977604476
	.word	1320376940
	.word	-396893957
	.word	-1500509333
	.word	42900989
	.section	.rodata.brainpoolP256r1_T_12_X,"a"
	.align	2
	.type	brainpoolP256r1_T_12_X, @object
	.size	brainpoolP256r1_T_12_X, 32
brainpoolP256r1_T_12_X:
	.word	831472120
	.word	871783162
	.word	-152835668
	.word	-756593952
	.word	-1563603324
	.word	315888674
	.word	-1222513284
	.word	386945807
	.section	.rodata.brainpoolP256r1_T_12_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_12_Y, @object
	.size	brainpoolP256r1_T_12_Y, 32
brainpoolP256r1_T_12_Y:
	.word	740558341
	.word	-1625370290
	.word	-1614725161
	.word	-1791496021
	.word	-837657085
	.word	405412739
	.word	-389061279
	.word	1889707356
	.section	.rodata.brainpoolP256r1_T_13_X,"a"
	.align	2
	.type	brainpoolP256r1_T_13_X, @object
	.size	brainpoolP256r1_T_13_X, 32
brainpoolP256r1_T_13_X:
	.word	980846264
	.word	-1055000940
	.word	-1496720867
	.word	269849385
	.word	2104123757
	.word	1995680199
	.word	-1569651894
	.word	1917898261
	.section	.rodata.brainpoolP256r1_T_13_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_13_Y, @object
	.size	brainpoolP256r1_T_13_Y, 32
brainpoolP256r1_T_13_Y:
	.word	514379958
	.word	609207441
	.word	-679589075
	.word	511596657
	.word	716129683
	.word	999658264
	.word	-87584997
	.word	1418099276
	.section	.rodata.brainpoolP256r1_T_14_X,"a"
	.align	2
	.type	brainpoolP256r1_T_14_X, @object
	.size	brainpoolP256r1_T_14_X, 32
brainpoolP256r1_T_14_X:
	.word	979939223
	.word	-1087454941
	.word	1729187977
	.word	1219475769
	.word	514491929
	.word	-1960238712
	.word	-1650186035
	.word	278571401
	.section	.rodata.brainpoolP256r1_T_14_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_14_Y, @object
	.size	brainpoolP256r1_T_14_Y, 32
brainpoolP256r1_T_14_Y:
	.word	1728363153
	.word	943718839
	.word	-1559631608
	.word	-164124982
	.word	-1230465172
	.word	1032908348
	.word	-138088996
	.word	-2048092733
	.section	.rodata.brainpoolP256r1_T_15_X,"a"
	.align	2
	.type	brainpoolP256r1_T_15_X, @object
	.size	brainpoolP256r1_T_15_X, 32
brainpoolP256r1_T_15_X:
	.word	-339901195
	.word	-1648663339
	.word	685939675
	.word	1081262672
	.word	-780864967
	.word	1748156198
	.word	1924123446
	.word	-1741656613
	.section	.rodata.brainpoolP256r1_T_15_Y,"a"
	.align	2
	.type	brainpoolP256r1_T_15_Y, @object
	.size	brainpoolP256r1_T_15_Y, 32
brainpoolP256r1_T_15_Y:
	.word	-192589645
	.word	-1379842005
	.word	297478336
	.word	1814191034
	.word	1558553005
	.word	1162091977
	.word	1877403860
	.word	2139210171
	.section	.rodata.brainpoolP256r1_T,"a"
	.align	2
	.type	brainpoolP256r1_T, @object
	.size	brainpoolP256r1_T, 384
brainpoolP256r1_T:
	.word	brainpoolP256r1_T_0_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_0_Y
	.half	1
	.half	8
	.word	mpi_one
	.half	1
	.half	1
	.word	brainpoolP256r1_T_1_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_1_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_2_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_2_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_3_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_3_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_4_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_4_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_5_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_5_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_6_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_6_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_7_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_7_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_8_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_8_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_9_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_9_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_10_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_10_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_11_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_11_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_12_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_12_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_13_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_13_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_14_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_14_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.word	brainpoolP256r1_T_15_X
	.half	1
	.half	8
	.word	brainpoolP256r1_T_15_Y
	.half	1
	.half	8
	.word	0
	.half	1
	.half	0
	.section	.rodata.brainpoolP384r1_p,"a"
	.align	2
	.type	brainpoolP384r1_p, @object
	.size	brainpoolP384r1_p, 48
brainpoolP384r1_p:
	.word	822602835
	.word	-2025390061
	.word	-1877140879
	.word	-1395415255
	.word	2142703907
	.word	313645593
	.word	-313239884
	.word	355430665
	.word	1357267423
	.word	257781630
	.word	-1556583128
	.word	-1934025086
	.section	.rodata.brainpoolP384r1_a,"a"
	.align	2
	.type	brainpoolP384r1_a, @object
	.size	brainpoolP384r1_a, 48
brainpoolP384r1_a:
	.word	583936038
	.word	78170077
	.word	1346032875
	.word	-1968864950
	.word	-1164838641
	.word	328295919
	.word	1337075591
	.word	-1027693938
	.word	-838488160
	.word	1014106122
	.word	1032590604
	.word	2076410566
	.section	.rodata.brainpoolP384r1_b,"a"
	.align	2
	.type	brainpoolP384r1_b, @object
	.size	brainpoolP384r1_b, 48
brainpoolP384r1_b:
	.word	-95400943
	.word	985106070
	.word	-1780758124
	.word	2092185858
	.word	1055613653
	.word	780668581
	.word	131912358
	.word	800554465
	.word	384844924
	.word	-1959152300
	.word	583936038
	.word	78170077
	.section	.rodata.brainpoolP384r1_gx,"a"
	.align	2
	.type	brainpoolP384r1_gx, @object
	.size	brainpoolP384r1_gx, 48
brainpoolP384r1_gx:
	.word	1205120798
	.word	-276319518
	.word	920012458
	.word	-400105420
	.word	213717224
	.word	-612381954
	.word	2129743843
	.word	-2008570905
	.word	-1212072085
	.word	-1566164351
	.word	1758414335
	.word	488400112
	.section	.rodata.brainpoolP384r1_gy,"a"
	.align	2
	.type	brainpoolP384r1_gy, @object
	.size	brainpoolP384r1_gy, 48
brainpoolP384r1_gy:
	.word	641487637
	.word	1115816769
	.word	2006024465
	.word	239486497
	.word	-107927256
	.word	-509868721
	.word	-18065308
	.word	1656163113
	.word	-1781541550
	.word	1555164046
	.word	553239204
	.word	-1967252107
	.section	.rodata.brainpoolP384r1_n,"a"
	.align	2
	.type	brainpoolP384r1_n, @object
	.size	brainpoolP384r1_n, 48
brainpoolP384r1_n:
	.word	-385587867
	.word	998781442
	.word	1803535120
	.word	-818235729
	.word	-1409014361
	.word	521563756
	.word	-313239885
	.word	355430665
	.word	1357267423
	.word	257781630
	.word	-1556583128
	.word	-1934025086
	.section	.rodata.brainpoolP384r1_T_0_X,"a"
	.align	2
	.type	brainpoolP384r1_T_0_X, @object
	.size	brainpoolP384r1_T_0_X, 48
brainpoolP384r1_T_0_X:
	.word	1205120798
	.word	-276319518
	.word	920012458
	.word	-400105420
	.word	213717224
	.word	-612381954
	.word	2129743843
	.word	-2008570905
	.word	-1212072085
	.word	-1566164351
	.word	1758414335
	.word	488400112
	.section	.rodata.brainpoolP384r1_T_0_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_0_Y, @object
	.size	brainpoolP384r1_T_0_Y, 48
brainpoolP384r1_T_0_Y:
	.word	641487637
	.word	1115816769
	.word	2006024465
	.word	239486497
	.word	-107927256
	.word	-509868721
	.word	-18065308
	.word	1656163113
	.word	-1781541550
	.word	1555164046
	.word	553239204
	.word	-1967252107
	.section	.rodata.brainpoolP384r1_T_1_X,"a"
	.align	2
	.type	brainpoolP384r1_T_1_X, @object
	.size	brainpoolP384r1_T_1_X, 48
brainpoolP384r1_T_1_X:
	.word	1418385555
	.word	493606465
	.word	586234850
	.word	55258621
	.word	870536449
	.word	1515353072
	.word	640696257
	.word	-1554874422
	.word	-1692963117
	.word	826944213
	.word	-445916538
	.word	773654275
	.section	.rodata.brainpoolP384r1_T_1_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_1_Y, @object
	.size	brainpoolP384r1_T_1_Y, 48
brainpoolP384r1_T_1_Y:
	.word	-1733330351
	.word	435594467
	.word	1375632876
	.word	-767083712
	.word	-991131396
	.word	-1530163230
	.word	763945520
	.word	-1695854514
	.word	1586779155
	.word	70942708
	.word	-518256691
	.word	1677201341
	.section	.rodata.brainpoolP384r1_T_2_X,"a"
	.align	2
	.type	brainpoolP384r1_T_2_X, @object
	.size	brainpoolP384r1_T_2_X, 48
brainpoolP384r1_T_2_X:
	.word	774410900
	.word	1303446578
	.word	1128563237
	.word	-1084945034
	.word	-1979718821
	.word	-28385722
	.word	1740317275
	.word	669942042
	.word	2061653192
	.word	-802366802
	.word	-1433363852
	.word	1607240558
	.section	.rodata.brainpoolP384r1_T_2_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_2_Y, @object
	.size	brainpoolP384r1_T_2_Y, 48
brainpoolP384r1_T_2_Y:
	.word	-307478506
	.word	-1400424579
	.word	-2135820136
	.word	1107594316
	.word	-1389586238
	.word	-1070241488
	.word	788540978
	.word	-1057977276
	.word	-687384554
	.word	1537302733
	.word	58457007
	.word	1937333765
	.section	.rodata.brainpoolP384r1_T_3_X,"a"
	.align	2
	.type	brainpoolP384r1_T_3_X, @object
	.size	brainpoolP384r1_T_3_X, 48
brainpoolP384r1_T_3_X:
	.word	953030600
	.word	-933536181
	.word	1628048992
	.word	140672157
	.word	1905848357
	.word	-685369473
	.word	1023071107
	.word	-2113441552
	.word	157042473
	.word	358987587
	.word	1051175182
	.word	585954298
	.section	.rodata.brainpoolP384r1_T_3_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_3_Y, @object
	.size	brainpoolP384r1_T_3_Y, 48
brainpoolP384r1_T_3_Y:
	.word	723679450
	.word	-1426427560
	.word	1791897600
	.word	-2091929421
	.word	-1457482289
	.word	-412761565
	.word	1526976341
	.word	-1153138550
	.word	-141428644
	.word	-2115310123
	.word	269900608
	.word	388672549
	.section	.rodata.brainpoolP384r1_T_4_X,"a"
	.align	2
	.type	brainpoolP384r1_T_4_X, @object
	.size	brainpoolP384r1_T_4_X, 48
brainpoolP384r1_T_4_X:
	.word	-992154382
	.word	-378827653
	.word	-753091797
	.word	-1747325350
	.word	1580227940
	.word	-1656638729
	.word	437243629
	.word	1650737606
	.word	-471787278
	.word	1264981378
	.word	69526171
	.word	2090875250
	.section	.rodata.brainpoolP384r1_T_4_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_4_Y, @object
	.size	brainpoolP384r1_T_4_Y, 48
brainpoolP384r1_T_4_Y:
	.word	1487032619
	.word	48325256
	.word	342217304
	.word	813845737
	.word	-2018713124
	.word	2048537006
	.word	513167237
	.word	734231173
	.word	-256145680
	.word	2064162240
	.word	151212989
	.word	1760530816
	.section	.rodata.brainpoolP384r1_T_5_X,"a"
	.align	2
	.type	brainpoolP384r1_T_5_X, @object
	.size	brainpoolP384r1_T_5_X, 48
brainpoolP384r1_T_5_X:
	.word	1873794861
	.word	-1584891031
	.word	820253615
	.word	-1045084254
	.word	-574565873
	.word	-230941558
	.word	1286835449
	.word	-814904390
	.word	-1465792661
	.word	-246465426
	.word	-929609068
	.word	-2113835261
	.section	.rodata.brainpoolP384r1_T_5_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_5_Y, @object
	.size	brainpoolP384r1_T_5_Y, 48
brainpoolP384r1_T_5_Y:
	.word	-1458431884
	.word	639817017
	.word	-1111447737
	.word	947424669
	.word	2144383913
	.word	-567226145
	.word	-1770838729
	.word	2082318572
	.word	1717948817
	.word	-540026404
	.word	930868629
	.word	767484589
	.section	.rodata.brainpoolP384r1_T_6_X,"a"
	.align	2
	.type	brainpoolP384r1_T_6_X, @object
	.size	brainpoolP384r1_T_6_X, 48
brainpoolP384r1_T_6_X:
	.word	1782741328
	.word	-1112447481
	.word	1700942661
	.word	-1588852334
	.word	63155974
	.word	-1691486986
	.word	-649999640
	.word	-912561758
	.word	-1918455221
	.word	1986112225
	.word	307083793
	.word	2129903286
	.section	.rodata.brainpoolP384r1_T_6_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_6_Y, @object
	.size	brainpoolP384r1_T_6_Y, 48
brainpoolP384r1_T_6_Y:
	.word	580049354
	.word	650759687
	.word	-1854103198
	.word	-436784421
	.word	1833650541
	.word	997251579
	.word	1280244508
	.word	495019614
	.word	14791589
	.word	1489820087
	.word	-997509389
	.word	821895225
	.section	.rodata.brainpoolP384r1_T_7_X,"a"
	.align	2
	.type	brainpoolP384r1_T_7_X, @object
	.size	brainpoolP384r1_T_7_X, 48
brainpoolP384r1_T_7_X:
	.word	56631188
	.word	1465964475
	.word	-580764558
	.word	1642698097
	.word	1601854384
	.word	-1866104472
	.word	-1179275490
	.word	-1524088168
	.word	294529292
	.word	551007305
	.word	819084955
	.word	63617697
	.section	.rodata.brainpoolP384r1_T_7_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_7_Y, @object
	.size	brainpoolP384r1_T_7_Y, 48
brainpoolP384r1_T_7_Y:
	.word	1147418409
	.word	1105527599
	.word	-4439478
	.word	106896034
	.word	78316573
	.word	715990240
	.word	1729578301
	.word	-128762337
	.word	464719853
	.word	63067223
	.word	-990325927
	.word	821730075
	.section	.rodata.brainpoolP384r1_T_8_X,"a"
	.align	2
	.type	brainpoolP384r1_T_8_X, @object
	.size	brainpoolP384r1_T_8_X, 48
brainpoolP384r1_T_8_X:
	.word	-67268553
	.word	1312311754
	.word	-574173245
	.word	294453232
	.word	-1113757225
	.word	-1259785377
	.word	1031936327
	.word	591404204
	.word	1174587200
	.word	-1107265772
	.word	2012349897
	.word	962356794
	.section	.rodata.brainpoolP384r1_T_8_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_8_Y, @object
	.size	brainpoolP384r1_T_8_Y, 48
brainpoolP384r1_T_8_Y:
	.word	-568859106
	.word	-1192910414
	.word	-1645448761
	.word	1725232600
	.word	1581434538
	.word	-793110297
	.word	1516773829
	.word	400030502
	.word	-1168375770
	.word	1978414218
	.word	-1354982205
	.word	895871059
	.section	.rodata.brainpoolP384r1_T_9_X,"a"
	.align	2
	.type	brainpoolP384r1_T_9_X, @object
	.size	brainpoolP384r1_T_9_X, 48
brainpoolP384r1_T_9_X:
	.word	-601296962
	.word	-540539545
	.word	-2050787317
	.word	264020041
	.word	-1607647728
	.word	-176499505
	.word	1627296566
	.word	-493261133
	.word	-419123870
	.word	-480334007
	.word	-1494386092
	.word	822679710
	.section	.rodata.brainpoolP384r1_T_9_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_9_Y, @object
	.size	brainpoolP384r1_T_9_Y, 48
brainpoolP384r1_T_9_Y:
	.word	1150551528
	.word	-1803175716
	.word	-1036536044
	.word	-636127920
	.word	-1307588906
	.word	-398552663
	.word	632127929
	.word	359868065
	.word	1641148925
	.word	328169084
	.word	-11871482
	.word	189310740
	.section	.rodata.brainpoolP384r1_T_10_X,"a"
	.align	2
	.type	brainpoolP384r1_T_10_X, @object
	.size	brainpoolP384r1_T_10_X, 48
brainpoolP384r1_T_10_X:
	.word	-1027181782
	.word	72872396
	.word	661908918
	.word	1589019248
	.word	984398347
	.word	-1494551345
	.word	-1884170599
	.word	1579943950
	.word	797958935
	.word	133406990
	.word	-1686309606
	.word	687213097
	.section	.rodata.brainpoolP384r1_T_10_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_10_Y, @object
	.size	brainpoolP384r1_T_10_Y, 48
brainpoolP384r1_T_10_Y:
	.word	1192750781
	.word	-1348266700
	.word	1216921339
	.word	-558128409
	.word	1708961221
	.word	-1055967391
	.word	-1565693958
	.word	2022775866
	.word	973866837
	.word	672362049
	.word	-310461069
	.word	1641878698
	.section	.rodata.brainpoolP384r1_T_11_X,"a"
	.align	2
	.type	brainpoolP384r1_T_11_X, @object
	.size	brainpoolP384r1_T_11_X, 48
brainpoolP384r1_T_11_X:
	.word	18930883
	.word	1430786418
	.word	-126106594
	.word	-1611645598
	.word	775799528
	.word	-1991597230
	.word	1179902670
	.word	-822599330
	.word	-1450195006
	.word	976372262
	.word	-1918851333
	.word	52009547
	.section	.rodata.brainpoolP384r1_T_11_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_11_Y, @object
	.size	brainpoolP384r1_T_11_Y, 48
brainpoolP384r1_T_11_Y:
	.word	510503914
	.word	207679227
	.word	-985901386
	.word	477696093
	.word	-1623081947
	.word	-117248143
	.word	-792447326
	.word	-63792248
	.word	392025244
	.word	740484665
	.word	-838785413
	.word	664554174
	.section	.rodata.brainpoolP384r1_T_12_X,"a"
	.align	2
	.type	brainpoolP384r1_T_12_X, @object
	.size	brainpoolP384r1_T_12_X, 48
brainpoolP384r1_T_12_X:
	.word	-904827409
	.word	210983532
	.word	-1356425493
	.word	-1741626321
	.word	-968048331
	.word	73146160
	.word	-51858599
	.word	1818487605
	.word	-53863012
	.word	-1773455792
	.word	1529024228
	.word	825093039
	.section	.rodata.brainpoolP384r1_T_12_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_12_Y, @object
	.size	brainpoolP384r1_T_12_Y, 48
brainpoolP384r1_T_12_Y:
	.word	-675903290
	.word	-1239201164
	.word	-1142790417
	.word	1431283241
	.word	1753116649
	.word	-1810587538
	.word	-388730053
	.word	234249131
	.word	607969350
	.word	-1377200896
	.word	-2125525705
	.word	4190928
	.section	.rodata.brainpoolP384r1_T_13_X,"a"
	.align	2
	.type	brainpoolP384r1_T_13_X, @object
	.size	brainpoolP384r1_T_13_X, 48
brainpoolP384r1_T_13_X:
	.word	2026708377
	.word	-647248839
	.word	-1194900095
	.word	-480400849
	.word	-1553036237
	.word	1272689188
	.word	-237425303
	.word	-1349870649
	.word	-1188241049
	.word	1972451136
	.word	599075969
	.word	800008963
	.section	.rodata.brainpoolP384r1_T_13_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_13_Y, @object
	.size	brainpoolP384r1_T_13_Y, 48
brainpoolP384r1_T_13_Y:
	.word	542809391
	.word	-628840176
	.word	545861729
	.word	-894244589
	.word	-346919242
	.word	-1507911677
	.word	891068012
	.word	-949382521
	.word	-1349989983
	.word	1921215686
	.word	1417336267
	.word	1874237748
	.section	.rodata.brainpoolP384r1_T_14_X,"a"
	.align	2
	.type	brainpoolP384r1_T_14_X, @object
	.size	brainpoolP384r1_T_14_X, 48
brainpoolP384r1_T_14_X:
	.word	-1689932321
	.word	1347240267
	.word	2141936923
	.word	703149109
	.word	880328307
	.word	-2025131196
	.word	-991699205
	.word	-336000018
	.word	1209435742
	.word	1098168370
	.word	-1166217486
	.word	1440973245
	.section	.rodata.brainpoolP384r1_T_14_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_14_Y, @object
	.size	brainpoolP384r1_T_14_Y, 48
brainpoolP384r1_T_14_Y:
	.word	-2063963400
	.word	349550810
	.word	-712335438
	.word	186265115
	.word	-496956321
	.word	-706323457
	.word	-2017369586
	.word	-1550705837
	.word	-788492204
	.word	672009322
	.word	1001729675
	.word	2023798084
	.section	.rodata.brainpoolP384r1_T_15_X,"a"
	.align	2
	.type	brainpoolP384r1_T_15_X, @object
	.size	brainpoolP384r1_T_15_X, 48
brainpoolP384r1_T_15_X:
	.word	1476550072
	.word	340115125
	.word	-1869680723
	.word	-1405998515
	.word	1551210824
	.word	915354378
	.word	-728404792
	.word	-622071009
	.word	-1857231678
	.word	-349834464
	.word	703305201
	.word	-2127290257
	.section	.rodata.brainpoolP384r1_T_15_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_15_Y, @object
	.size	brainpoolP384r1_T_15_Y, 48
brainpoolP384r1_T_15_Y:
	.word	333780269
	.word	-1383373698
	.word	403553447
	.word	-90294402
	.word	-148864280
	.word	1383561773
	.word	-610129461
	.word	-1519393158
	.word	1548797600
	.word	-1118837060
	.word	-388653282
	.word	817315269
	.section	.rodata.brainpoolP384r1_T_16_X,"a"
	.align	2
	.type	brainpoolP384r1_T_16_X, @object
	.size	brainpoolP384r1_T_16_X, 48
brainpoolP384r1_T_16_X:
	.word	274006853
	.word	579577563
	.word	2024675150
	.word	-901571127
	.word	-733399730
	.word	546145351
	.word	-365980173
	.word	-1290226500
	.word	-1985066796
	.word	-1992464907
	.word	539751046
	.word	1666217425
	.section	.rodata.brainpoolP384r1_T_16_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_16_Y, @object
	.size	brainpoolP384r1_T_16_Y, 48
brainpoolP384r1_T_16_Y:
	.word	744285869
	.word	769621472
	.word	-834795714
	.word	95819935
	.word	-705628006
	.word	1830634234
	.word	52259905
	.word	791350985
	.word	-1521346493
	.word	115434420
	.word	-992408905
	.word	1415583485
	.section	.rodata.brainpoolP384r1_T_17_X,"a"
	.align	2
	.type	brainpoolP384r1_T_17_X, @object
	.size	brainpoolP384r1_T_17_X, 48
brainpoolP384r1_T_17_X:
	.word	-539067069
	.word	-877639093
	.word	-1802744144
	.word	-544873791
	.word	-1242894257
	.word	284127387
	.word	1564066390
	.word	752430323
	.word	-869393395
	.word	-2138614737
	.word	-1245220176
	.word	2005181264
	.section	.rodata.brainpoolP384r1_T_17_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_17_Y, @object
	.size	brainpoolP384r1_T_17_Y, 48
brainpoolP384r1_T_17_Y:
	.word	-1448095305
	.word	-94532684
	.word	-1974274360
	.word	1587893955
	.word	-352366021
	.word	-2089336315
	.word	1922041897
	.word	-1195129722
	.word	-235399859
	.word	-708417770
	.word	-1884518539
	.word	-2122060687
	.section	.rodata.brainpoolP384r1_T_18_X,"a"
	.align	2
	.type	brainpoolP384r1_T_18_X, @object
	.size	brainpoolP384r1_T_18_X, 48
brainpoolP384r1_T_18_X:
	.word	770105745
	.word	1654722830
	.word	849928820
	.word	-779885594
	.word	-840608176
	.word	1869032375
	.word	1707732453
	.word	-1897822355
	.word	-1694658992
	.word	-1543893421
	.word	-498447287
	.word	33195043
	.section	.rodata.brainpoolP384r1_T_18_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_18_Y, @object
	.size	brainpoolP384r1_T_18_Y, 48
brainpoolP384r1_T_18_Y:
	.word	-2125857100
	.word	2096381649
	.word	-270503355
	.word	1866381325
	.word	1594818620
	.word	745693390
	.word	64539831
	.word	-849711609
	.word	1345665575
	.word	1607081806
	.word	1435036248
	.word	2131062461
	.section	.rodata.brainpoolP384r1_T_19_X,"a"
	.align	2
	.type	brainpoolP384r1_T_19_X, @object
	.size	brainpoolP384r1_T_19_X, 48
brainpoolP384r1_T_19_X:
	.word	-1745785423
	.word	607742374
	.word	-6733557
	.word	-333012677
	.word	-2137706603
	.word	-887404014
	.word	-1437483030
	.word	-807785042
	.word	1387469836
	.word	-2032907978
	.word	975159705
	.word	442253011
	.section	.rodata.brainpoolP384r1_T_19_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_19_Y, @object
	.size	brainpoolP384r1_T_19_Y, 48
brainpoolP384r1_T_19_Y:
	.word	737628531
	.word	363309512
	.word	-1736487406
	.word	61892161
	.word	1119886737
	.word	734263501
	.word	2106671564
	.word	1103924172
	.word	-310989270
	.word	-1413146538
	.word	-1559860565
	.word	521168255
	.section	.rodata.brainpoolP384r1_T_20_X,"a"
	.align	2
	.type	brainpoolP384r1_T_20_X, @object
	.size	brainpoolP384r1_T_20_X, 48
brainpoolP384r1_T_20_X:
	.word	87878668
	.word	-302593531
	.word	1359138120
	.word	1664882194
	.word	1135864744
	.word	2092096891
	.word	1099979008
	.word	-1846156069
	.word	706219728
	.word	796689242
	.word	228669409
	.word	2036543473
	.section	.rodata.brainpoolP384r1_T_20_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_20_Y, @object
	.size	brainpoolP384r1_T_20_Y, 48
brainpoolP384r1_T_20_Y:
	.word	1878704161
	.word	-321951969
	.word	-1153092456
	.word	-1986266636
	.word	1744726517
	.word	-1181785059
	.word	-658556453
	.word	-1968322637
	.word	-201354356
	.word	-163972568
	.word	-2050754054
	.word	-1987544538
	.section	.rodata.brainpoolP384r1_T_21_X,"a"
	.align	2
	.type	brainpoolP384r1_T_21_X, @object
	.size	brainpoolP384r1_T_21_X, 48
brainpoolP384r1_T_21_X:
	.word	-663104179
	.word	1324080657
	.word	1789150748
	.word	-1472957222
	.word	-170672866
	.word	-1359024620
	.word	1906527257
	.word	-1795660477
	.word	-97162126
	.word	-489151088
	.word	-1769720645
	.word	1292059553
	.section	.rodata.brainpoolP384r1_T_21_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_21_Y, @object
	.size	brainpoolP384r1_T_21_Y, 48
brainpoolP384r1_T_21_Y:
	.word	792411121
	.word	1123178954
	.word	1948534989
	.word	-1550814504
	.word	-1938537853
	.word	1025069679
	.word	1665244736
	.word	793540712
	.word	1807127635
	.word	-1616358856
	.word	-1826279295
	.word	1752068001
	.section	.rodata.brainpoolP384r1_T_22_X,"a"
	.align	2
	.type	brainpoolP384r1_T_22_X, @object
	.size	brainpoolP384r1_T_22_X, 48
brainpoolP384r1_T_22_X:
	.word	1682649084
	.word	33509497
	.word	1475163860
	.word	-202949831
	.word	904562161
	.word	1386266838
	.word	-868578886
	.word	38149154
	.word	-1582269844
	.word	1432512795
	.word	1821030487
	.word	-2012379880
	.section	.rodata.brainpoolP384r1_T_22_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_22_Y, @object
	.size	brainpoolP384r1_T_22_Y, 48
brainpoolP384r1_T_22_Y:
	.word	-380586243
	.word	132677454
	.word	-782476398
	.word	-660991669
	.word	1951802774
	.word	-1662215087
	.word	-1967751339
	.word	1779448523
	.word	17249120
	.word	-430355991
	.word	-231823930
	.word	1147351738
	.section	.rodata.brainpoolP384r1_T_23_X,"a"
	.align	2
	.type	brainpoolP384r1_T_23_X, @object
	.size	brainpoolP384r1_T_23_X, 48
brainpoolP384r1_T_23_X:
	.word	-1526003976
	.word	578758468
	.word	262960176
	.word	1628655564
	.word	-1749044739
	.word	488416585
	.word	2070439050
	.word	-126366705
	.word	1324956091
	.word	-1762222972
	.word	-496119876
	.word	737750433
	.section	.rodata.brainpoolP384r1_T_23_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_23_Y, @object
	.size	brainpoolP384r1_T_23_Y, 48
brainpoolP384r1_T_23_Y:
	.word	1469105301
	.word	1577386289
	.word	-1078255924
	.word	-478370664
	.word	-1298078839
	.word	1067071949
	.word	2053125266
	.word	1387632777
	.word	977084557
	.word	-1403351292
	.word	1236674211
	.word	1494195209
	.section	.rodata.brainpoolP384r1_T_24_X,"a"
	.align	2
	.type	brainpoolP384r1_T_24_X, @object
	.size	brainpoolP384r1_T_24_X, 48
brainpoolP384r1_T_24_X:
	.word	953312882
	.word	-897490390
	.word	1579206853
	.word	-1484676312
	.word	-240897760
	.word	1166507498
	.word	161033359
	.word	803955567
	.word	450524787
	.word	-1562460666
	.word	1965951273
	.word	1110257721
	.section	.rodata.brainpoolP384r1_T_24_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_24_Y, @object
	.size	brainpoolP384r1_T_24_Y, 48
brainpoolP384r1_T_24_Y:
	.word	1522637633
	.word	831308567
	.word	1301581144
	.word	-731862211
	.word	253689343
	.word	1654500931
	.word	552858254
	.word	1102555675
	.word	-190555235
	.word	1910717328
	.word	-1116571401
	.word	17500517
	.section	.rodata.brainpoolP384r1_T_25_X,"a"
	.align	2
	.type	brainpoolP384r1_T_25_X, @object
	.size	brainpoolP384r1_T_25_X, 48
brainpoolP384r1_T_25_X:
	.word	1814706122
	.word	1499746070
	.word	-1868312998
	.word	-138634572
	.word	1666529319
	.word	409877021
	.word	-1716865993
	.word	747193634
	.word	-1500742473
	.word	-398547139
	.word	-599652752
	.word	315024294
	.section	.rodata.brainpoolP384r1_T_25_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_25_Y, @object
	.size	brainpoolP384r1_T_25_Y, 48
brainpoolP384r1_T_25_Y:
	.word	1564314709
	.word	-344182457
	.word	1190036806
	.word	1090786174
	.word	1133198494
	.word	-151686098
	.word	126781626
	.word	637732905
	.word	-343303190
	.word	-1253840888
	.word	-43579625
	.word	409957337
	.section	.rodata.brainpoolP384r1_T_26_X,"a"
	.align	2
	.type	brainpoolP384r1_T_26_X, @object
	.size	brainpoolP384r1_T_26_X, 48
brainpoolP384r1_T_26_X:
	.word	-1927156951
	.word	-1737210984
	.word	-669725560
	.word	-475612408
	.word	1794283716
	.word	-1629633768
	.word	-1601095481
	.word	1644491267
	.word	-35082374
	.word	1953502203
	.word	-1735945264
	.word	302047306
	.section	.rodata.brainpoolP384r1_T_26_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_26_Y, @object
	.size	brainpoolP384r1_T_26_Y, 48
brainpoolP384r1_T_26_Y:
	.word	-1670828393
	.word	1057172898
	.word	-1175191943
	.word	-299203135
	.word	-1316553266
	.word	-1220427827
	.word	563796128
	.word	-238289165
	.word	1610905749
	.word	-2069714505
	.word	711335656
	.word	-1950527148
	.section	.rodata.brainpoolP384r1_T_27_X,"a"
	.align	2
	.type	brainpoolP384r1_T_27_X, @object
	.size	brainpoolP384r1_T_27_X, 48
brainpoolP384r1_T_27_X:
	.word	-281667954
	.word	1005464929
	.word	-1601675451
	.word	603394579
	.word	1252902569
	.word	1526794058
	.word	1337029816
	.word	1809169899
	.word	-1569588905
	.word	-1126740218
	.word	1213041663
	.word	1794873568
	.section	.rodata.brainpoolP384r1_T_27_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_27_Y, @object
	.size	brainpoolP384r1_T_27_Y, 48
brainpoolP384r1_T_27_Y:
	.word	-1559184700
	.word	984371725
	.word	920702993
	.word	809109478
	.word	-1427079042
	.word	-582278583
	.word	481019903
	.word	1076153737
	.word	-1275319678
	.word	1234584941
	.word	1390142563
	.word	431277119
	.section	.rodata.brainpoolP384r1_T_28_X,"a"
	.align	2
	.type	brainpoolP384r1_T_28_X, @object
	.size	brainpoolP384r1_T_28_X, 48
brainpoolP384r1_T_28_X:
	.word	2143865947
	.word	1200057275
	.word	1765548480
	.word	1347893373
	.word	1008225362
	.word	1833477459
	.word	1164231457
	.word	359515355
	.word	-1143878583
	.word	758429719
	.word	-93230740
	.word	1028270240
	.section	.rodata.brainpoolP384r1_T_28_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_28_Y, @object
	.size	brainpoolP384r1_T_28_Y, 48
brainpoolP384r1_T_28_Y:
	.word	966715629
	.word	-617050646
	.word	-843342644
	.word	-1209132416
	.word	-1085955908
	.word	839983833
	.word	-648250150
	.word	-177627200
	.word	2040957628
	.word	-709282482
	.word	1050315724
	.word	271104161
	.section	.rodata.brainpoolP384r1_T_29_X,"a"
	.align	2
	.type	brainpoolP384r1_T_29_X, @object
	.size	brainpoolP384r1_T_29_X, 48
brainpoolP384r1_T_29_X:
	.word	-1141952683
	.word	-360746327
	.word	313996469
	.word	717481913
	.word	1121525240
	.word	1852902519
	.word	-1487339028
	.word	-1919876266
	.word	865702252
	.word	334446128
	.word	-1705326201
	.word	1894868564
	.section	.rodata.brainpoolP384r1_T_29_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_29_Y, @object
	.size	brainpoolP384r1_T_29_Y, 48
brainpoolP384r1_T_29_Y:
	.word	1857498212
	.word	808811889
	.word	-772862694
	.word	795056429
	.word	766456292
	.word	-1362966839
	.word	-2132819943
	.word	-206781356
	.word	-2069861405
	.word	-936249450
	.word	2055004819
	.word	1786070337
	.section	.rodata.brainpoolP384r1_T_30_X,"a"
	.align	2
	.type	brainpoolP384r1_T_30_X, @object
	.size	brainpoolP384r1_T_30_X, 48
brainpoolP384r1_T_30_X:
	.word	827911854
	.word	1993763048
	.word	-1220006190
	.word	-892035319
	.word	-413357772
	.word	-916634780
	.word	1352620190
	.word	1845455019
	.word	-1171421049
	.word	2106441490
	.word	-1284513836
	.word	1934992501
	.section	.rodata.brainpoolP384r1_T_30_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_30_Y, @object
	.size	brainpoolP384r1_T_30_Y, 48
brainpoolP384r1_T_30_Y:
	.word	965875565
	.word	1865880503
	.word	-1485749410
	.word	840636362
	.word	2024847847
	.word	-2082823953
	.word	267551898
	.word	532062853
	.word	1848534386
	.word	1011661125
	.word	730622718
	.word	574002807
	.section	.rodata.brainpoolP384r1_T_31_X,"a"
	.align	2
	.type	brainpoolP384r1_T_31_X, @object
	.size	brainpoolP384r1_T_31_X, 48
brainpoolP384r1_T_31_X:
	.word	1242790504
	.word	268592023
	.word	50732732
	.word	1693366671
	.word	-1987318168
	.word	-824479575
	.word	-914261227
	.word	845319536
	.word	-129574283
	.word	1438530297
	.word	-1753572193
	.word	268102498
	.section	.rodata.brainpoolP384r1_T_31_Y,"a"
	.align	2
	.type	brainpoolP384r1_T_31_Y, @object
	.size	brainpoolP384r1_T_31_Y, 48
brainpoolP384r1_T_31_Y:
	.word	1010631602
	.word	1704863558
	.word	-719583068
	.word	1089056549
	.word	1507617278
	.word	528255732
	.word	-1720018180
	.word	-481424351
	.word	1602604789
	.word	276998828
	.word	-1872144509
	.word	1062466422
	.section	.rodata.brainpoolP384r1_T,"a"
	.align	2
	.type	brainpoolP384r1_T, @object
	.size	brainpoolP384r1_T, 768
brainpoolP384r1_T:
	.word	brainpoolP384r1_T_0_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_0_Y
	.half	1
	.half	12
	.word	mpi_one
	.half	1
	.half	1
	.word	brainpoolP384r1_T_1_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_1_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_2_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_2_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_3_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_3_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_4_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_4_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_5_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_5_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_6_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_6_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_7_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_7_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_8_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_8_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_9_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_9_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_10_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_10_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_11_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_11_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_12_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_12_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_13_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_13_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_14_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_14_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_15_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_15_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_16_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_16_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_17_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_17_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_18_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_18_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_19_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_19_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_20_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_20_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_21_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_21_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_22_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_22_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_23_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_23_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_24_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_24_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_25_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_25_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_26_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_26_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_27_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_27_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_28_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_28_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_29_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_29_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_30_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_30_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.word	brainpoolP384r1_T_31_X
	.half	1
	.half	12
	.word	brainpoolP384r1_T_31_Y
	.half	1
	.half	12
	.word	0
	.half	1
	.half	0
	.section	.rodata.brainpoolP512r1_p,"a"
	.align	2
	.type	brainpoolP512r1_p, @object
	.size	brainpoolP512r1_p, 64
brainpoolP512r1_p:
	.word	1480214771
	.word	682254422
	.word	763545221
	.word	679608111
	.word	-425492250
	.word	-1362255574
	.word	-1681495998
	.word	2102237952
	.word	1882392689
	.word	-698114870
	.word	-1278619122
	.word	-886010445
	.word	868875271
	.word	1070917294
	.word	-605436789
	.word	-1428316744
	.section	.rodata.brainpoolP512r1_a,"a"
	.align	2
	.type	brainpoolP512r1_a, @object
	.size	brainpoolP512r1_a, 64
brainpoolP512r1_a:
	.word	2013041866
	.word	-406737843
	.word	737331129
	.word	2131826599
	.word	-1952790347
	.word	170848713
	.word	-1473955167
	.word	770530650
	.word	-359111748
	.word	-1472970294
	.word	1039734288
	.word	-1798578803
	.word	-1406972731
	.word	-500010683
	.word	-1956627575
	.word	2016453425
	.section	.rodata.brainpoolP512r1_b,"a"
	.align	2
	.type	brainpoolP512r1_b, @object
	.size	brainpoolP512r1_b, 64
brainpoolP512r1_b:
	.word	-2145978589
	.word	671726947
	.word	1589306845
	.word	-1740615497
	.word	-603439513
	.word	2013041866
	.word	-406737843
	.word	737331129
	.word	2131826599
	.word	-1952790347
	.word	170848713
	.word	-1473955167
	.word	770530650
	.word	-359111748
	.word	-1472970294
	.word	1039734288
	.section	.rodata.brainpoolP512r1_gx,"a"
	.align	2
	.type	brainpoolP512r1_gx, @object
	.size	brainpoolP512r1_gx, 64
brainpoolP512r1_gx:
	.word	-1128663006
	.word	-1959452151
	.word	1080712808
	.word	2087538759
	.word	-1816560289
	.word	1355901051
	.word	-489630579
	.word	-12902536
	.word	-187692658
	.word	-1271176466
	.word	-1244064063
	.word	-2048024720
	.word	-1672713581
	.word	1512124974
	.word	-668018332
	.word	-2119244611
	.section	.rodata.brainpoolP512r1_gy,"a"
	.align	2
	.type	brainpoolP512r1_gy, @object
	.size	brainpoolP512r1_gy, 64
brainpoolP512r1_gy:
	.word	987236498
	.word	2026708495
	.word	-1460644858
	.word	-775279825
	.word	-1977130066
	.word	1539984344
	.word	1247758430
	.word	-1294148023
	.word	-2011201263
	.word	-1610562213
	.word	614824730
	.word	-234227968
	.word	-814210307
	.word	-1058357335
	.word	1449341676
	.word	2111715421
	.section	.rodata.brainpoolP512r1_n,"a"
	.align	2
	.type	brainpoolP512r1_n, @object
	.size	brainpoolP512r1_n, 64
brainpoolP512r1_n:
	.word	-1666645911
	.word	-1249405310
	.word	140368605
	.word	498193281
	.word	2141982791
	.word	1099325721
	.word	1286153753
	.word	1430150209
	.word	1882392688
	.word	-698114870
	.word	-1278619122
	.word	-886010445
	.word	868875271
	.word	1070917294
	.word	-605436789
	.word	-1428316744
	.section	.rodata.brainpoolP512r1_T_0_X,"a"
	.align	2
	.type	brainpoolP512r1_T_0_X, @object
	.size	brainpoolP512r1_T_0_X, 64
brainpoolP512r1_T_0_X:
	.word	-1128663006
	.word	-1959452151
	.word	1080712808
	.word	2087538759
	.word	-1816560289
	.word	1355901051
	.word	-489630579
	.word	-12902536
	.word	-187692658
	.word	-1271176466
	.word	-1244064063
	.word	-2048024720
	.word	-1672713581
	.word	1512124974
	.word	-668018332
	.word	-2119244611
	.section	.rodata.brainpoolP512r1_T_0_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_0_Y, @object
	.size	brainpoolP512r1_T_0_Y, 64
brainpoolP512r1_T_0_Y:
	.word	987236498
	.word	2026708495
	.word	-1460644858
	.word	-775279825
	.word	-1977130066
	.word	1539984344
	.word	1247758430
	.word	-1294148023
	.word	-2011201263
	.word	-1610562213
	.word	614824730
	.word	-234227968
	.word	-814210307
	.word	-1058357335
	.word	1449341676
	.word	2111715421
	.section	.rodata.brainpoolP512r1_T_1_X,"a"
	.align	2
	.type	brainpoolP512r1_T_1_X, @object
	.size	brainpoolP512r1_T_1_X, 64
brainpoolP512r1_T_1_X:
	.word	-1939084822
	.word	1133026671
	.word	-1769582661
	.word	936466087
	.word	-285561955
	.word	-1508969049
	.word	-1628487453
	.word	858969709
	.word	341241315
	.word	1770854999
	.word	978185636
	.word	1802859002
	.word	477545830
	.word	-843727340
	.word	-406103327
	.word	475143478
	.section	.rodata.brainpoolP512r1_T_1_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_1_Y, @object
	.size	brainpoolP512r1_T_1_Y, 64
brainpoolP512r1_T_1_Y:
	.word	-344289941
	.word	-1328182365
	.word	-129916129
	.word	1957404332
	.word	224781074
	.word	722075164
	.word	1058261567
	.word	-327222843
	.word	677600556
	.word	-1848407642
	.word	2050987465
	.word	-478686078
	.word	848476980
	.word	1114043392
	.word	-785295174
	.word	573218583
	.section	.rodata.brainpoolP512r1_T_2_X,"a"
	.align	2
	.type	brainpoolP512r1_T_2_X, @object
	.size	brainpoolP512r1_T_2_X, 64
brainpoolP512r1_T_2_X:
	.word	-844548526
	.word	2016257408
	.word	-827636591
	.word	-1693646991
	.word	894968856
	.word	-1825431206
	.word	-131553765
	.word	-1951492230
	.word	-100079740
	.word	156617031
	.word	-2077315955
	.word	-1001196124
	.word	-1660593959
	.word	-1083062105
	.word	-1833659725
	.word	1810666177
	.section	.rodata.brainpoolP512r1_T_2_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_2_Y, @object
	.size	brainpoolP512r1_T_2_Y, 64
brainpoolP512r1_T_2_Y:
	.word	2033010762
	.word	1776638046
	.word	-333019724
	.word	114585321
	.word	-2027525992
	.word	198353464
	.word	-832563209
	.word	1873148021
	.word	-1445244640
	.word	368150446
	.word	999442909
	.word	-1326082535
	.word	1381160388
	.word	-84029812
	.word	-435546076
	.word	1091088118
	.section	.rodata.brainpoolP512r1_T_3_X,"a"
	.align	2
	.type	brainpoolP512r1_T_3_X, @object
	.size	brainpoolP512r1_T_3_X, 64
brainpoolP512r1_T_3_X:
	.word	1423453054
	.word	-27807538
	.word	-1627869046
	.word	1564214019
	.word	690556563
	.word	-1083116800
	.word	244921172
	.word	1274961152
	.word	1509043526
	.word	-201076942
	.word	-1368209093
	.word	1540484876
	.word	-1087939914
	.word	1375290671
	.word	753254100
	.word	-2011276289
	.section	.rodata.brainpoolP512r1_T_3_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_3_Y, @object
	.size	brainpoolP512r1_T_3_Y, 64
brainpoolP512r1_T_3_Y:
	.word	-658789206
	.word	-163134845
	.word	365878479
	.word	1188032436
	.word	-1805722810
	.word	2058488625
	.word	-471615172
	.word	507605265
	.word	-1224613066
	.word	-1100628867
	.word	-2023421956
	.word	-481761113
	.word	-728807322
	.word	1823772208
	.word	-1099702138
	.word	911654686
	.section	.rodata.brainpoolP512r1_T_4_X,"a"
	.align	2
	.type	brainpoolP512r1_T_4_X, @object
	.size	brainpoolP512r1_T_4_X, 64
brainpoolP512r1_T_4_X:
	.word	-2023878914
	.word	1007594437
	.word	-2141193799
	.word	-248886236
	.word	1411454430
	.word	1787659410
	.word	1950845608
	.word	-122600740
	.word	-47122559
	.word	1527552961
	.word	-540251058
	.word	-710286395
	.word	274294742
	.word	1079267676
	.word	1861957536
	.word	-1906083664
	.section	.rodata.brainpoolP512r1_T_4_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_4_Y, @object
	.size	brainpoolP512r1_T_4_Y, 64
brainpoolP512r1_T_4_Y:
	.word	969207717
	.word	1715925280
	.word	-5348638
	.word	-371006448
	.word	787832063
	.word	-2098886366
	.word	-1473704823
	.word	1708895842
	.word	-904945961
	.word	2070882951
	.word	-1617175346
	.word	665703525
	.word	252232685
	.word	-186030129
	.word	-2663278
	.word	650878017
	.section	.rodata.brainpoolP512r1_T_5_X,"a"
	.align	2
	.type	brainpoolP512r1_T_5_X, @object
	.size	brainpoolP512r1_T_5_X, 64
brainpoolP512r1_T_5_X:
	.word	302327095
	.word	-1872530515
	.word	-2046322233
	.word	-1315641513
	.word	-1079686400
	.word	1794091288
	.word	163859706
	.word	-1442041870
	.word	-368821620
	.word	-1181651831
	.word	-415601539
	.word	2066017443
	.word	556179734
	.word	1085924100
	.word	2068541779
	.word	-1563588158
	.section	.rodata.brainpoolP512r1_T_5_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_5_Y, @object
	.size	brainpoolP512r1_T_5_Y, 64
brainpoolP512r1_T_5_Y:
	.word	-1649886793
	.word	523895037
	.word	-1150533277
	.word	1948240474
	.word	1826805546
	.word	-917985429
	.word	-1481828066
	.word	1850703553
	.word	1008334801
	.word	975991814
	.word	206513093
	.word	1249947657
	.word	137655374
	.word	-576487868
	.word	311282939
	.word	188604782
	.section	.rodata.brainpoolP512r1_T_6_X,"a"
	.align	2
	.type	brainpoolP512r1_T_6_X, @object
	.size	brainpoolP512r1_T_6_X, 64
brainpoolP512r1_T_6_X:
	.word	1907431480
	.word	-1530752254
	.word	-499086903
	.word	1751050015
	.word	-1985049008
	.word	-351480831
	.word	1884871342
	.word	1608839716
	.word	-702691473
	.word	1332113226
	.word	1249779090
	.word	1005373996
	.word	-1468070239
	.word	1322509465
	.word	-547742422
	.word	1228298334
	.section	.rodata.brainpoolP512r1_T_6_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_6_Y, @object
	.size	brainpoolP512r1_T_6_Y, 64
brainpoolP512r1_T_6_Y:
	.word	1764931996
	.word	-1289063905
	.word	65172252
	.word	-1465240263
	.word	1214078699
	.word	-181358865
	.word	425754487
	.word	-56759121
	.word	-468067894
	.word	1595233819
	.word	1496569788
	.word	744047391
	.word	-890319162
	.word	-731676764
	.word	-155172675
	.word	541296921
	.section	.rodata.brainpoolP512r1_T_7_X,"a"
	.align	2
	.type	brainpoolP512r1_T_7_X, @object
	.size	brainpoolP512r1_T_7_X, 64
brainpoolP512r1_T_7_X:
	.word	132813547
	.word	-746161819
	.word	1964226559
	.word	-922040877
	.word	-503669210
	.word	1962478623
	.word	1559071924
	.word	-586553055
	.word	416828916
	.word	959903428
	.word	1554827719
	.word	-1599837702
	.word	479497323
	.word	1479963003
	.word	-834224772
	.word	1587289527
	.section	.rodata.brainpoolP512r1_T_7_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_7_Y, @object
	.size	brainpoolP512r1_T_7_Y, 64
brainpoolP512r1_T_7_Y:
	.word	1268176618
	.word	-437565530
	.word	358609247
	.word	1718589918
	.word	82165025
	.word	197191352
	.word	82891593
	.word	-620370944
	.word	-1559825514
	.word	1944780570
	.word	-1716899320
	.word	884345139
	.word	1643966318
	.word	-1808711152
	.word	871690548
	.word	-1668273969
	.section	.rodata.brainpoolP512r1_T_8_X,"a"
	.align	2
	.type	brainpoolP512r1_T_8_X, @object
	.size	brainpoolP512r1_T_8_X, 64
brainpoolP512r1_T_8_X:
	.word	-1996890608
	.word	-907314297
	.word	-86329242
	.word	396770778
	.word	-2107445088
	.word	55915091
	.word	1244833071
	.word	278663449
	.word	-383274218
	.word	755339381
	.word	1217404003
	.word	461701495
	.word	-2070161721
	.word	684054440
	.word	-1278510367
	.word	-1713945071
	.section	.rodata.brainpoolP512r1_T_8_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_8_Y, @object
	.size	brainpoolP512r1_T_8_Y, 64
brainpoolP512r1_T_8_Y:
	.word	1975460747
	.word	-1869241995
	.word	878536267
	.word	-1107056365
	.word	1604157481
	.word	1658930386
	.word	-1463984746
	.word	522564799
	.word	1394579818
	.word	-405055503
	.word	-974816223
	.word	-1689515183
	.word	-1675972501
	.word	523415574
	.word	-573578252
	.word	863745096
	.section	.rodata.brainpoolP512r1_T_9_X,"a"
	.align	2
	.type	brainpoolP512r1_T_9_X, @object
	.size	brainpoolP512r1_T_9_X, 64
brainpoolP512r1_T_9_X:
	.word	1017044416
	.word	1702301336
	.word	-754865300
	.word	1243968647
	.word	1994630023
	.word	-1122859197
	.word	1614524756
	.word	1419307878
	.word	-674727726
	.word	1774875982
	.word	426893063
	.word	-1254750233
	.word	1604897133
	.word	-1303920751
	.word	-1772579200
	.word	33207832
	.section	.rodata.brainpoolP512r1_T_9_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_9_Y, @object
	.size	brainpoolP512r1_T_9_Y, 64
brainpoolP512r1_T_9_Y:
	.word	-1683411504
	.word	1275911046
	.word	1445792740
	.word	-1970023606
	.word	1709315509
	.word	-1307671022
	.word	-1051901516
	.word	-675027765
	.word	-904899734
	.word	646163619
	.word	-1776156354
	.word	-613831408
	.word	-665958846
	.word	-207759638
	.word	1652502339
	.word	349208674
	.section	.rodata.brainpoolP512r1_T_10_X,"a"
	.align	2
	.type	brainpoolP512r1_T_10_X, @object
	.size	brainpoolP512r1_T_10_X, 64
brainpoolP512r1_T_10_X:
	.word	1661000370
	.word	-2090156791
	.word	1215222799
	.word	402110213
	.word	14109972
	.word	2049381706
	.word	933893434
	.word	605565991
	.word	-2077482950
	.word	96110619
	.word	81136044
	.word	1921278114
	.word	143918280
	.word	-616043052
	.word	1055191947
	.word	1110793145
	.section	.rodata.brainpoolP512r1_T_10_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_10_Y, @object
	.size	brainpoolP512r1_T_10_Y, 64
brainpoolP512r1_T_10_Y:
	.word	-2135500705
	.word	-583994922
	.word	-2052713258
	.word	1641588718
	.word	506087908
	.word	-332535428
	.word	-1856600262
	.word	1431140099
	.word	-1428925938
	.word	-978257161
	.word	957439236
	.word	-1384716367
	.word	935072726
	.word	-1026722723
	.word	588531913
	.word	927397936
	.section	.rodata.brainpoolP512r1_T_11_X,"a"
	.align	2
	.type	brainpoolP512r1_T_11_X, @object
	.size	brainpoolP512r1_T_11_X, 64
brainpoolP512r1_T_11_X:
	.word	-642766932
	.word	-1061915470
	.word	1874437866
	.word	-1841929057
	.word	1081617198
	.word	-1451545851
	.word	-1237686093
	.word	-1193549238
	.word	886518558
	.word	-280681077
	.word	-911683959
	.word	2064579329
	.word	1280440802
	.word	-463429870
	.word	817726823
	.word	1144620087
	.section	.rodata.brainpoolP512r1_T_11_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_11_Y, @object
	.size	brainpoolP512r1_T_11_Y, 64
brainpoolP512r1_T_11_Y:
	.word	783233830
	.word	1020014264
	.word	1500754340
	.word	1242106958
	.word	-2121718646
	.word	1857814290
	.word	1712994161
	.word	-1682510354
	.word	537181462
	.word	-1782580387
	.word	-1556809568
	.word	-1830926849
	.word	-244115301
	.word	-346544846
	.word	-485179037
	.word	302989470
	.section	.rodata.brainpoolP512r1_T_12_X,"a"
	.align	2
	.type	brainpoolP512r1_T_12_X, @object
	.size	brainpoolP512r1_T_12_X, 64
brainpoolP512r1_T_12_X:
	.word	-1667430559
	.word	425129728
	.word	-108545285
	.word	1566968853
	.word	683745150
	.word	-183679056
	.word	-299382122
	.word	-1993661621
	.word	-932661890
	.word	-1430037225
	.word	-301465065
	.word	1693097248
	.word	-732949337
	.word	-1597022339
	.word	-1476855083
	.word	-1944789818
	.section	.rodata.brainpoolP512r1_T_12_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_12_Y, @object
	.size	brainpoolP512r1_T_12_Y, 64
brainpoolP512r1_T_12_Y:
	.word	436911478
	.word	-1327720424
	.word	-1224580253
	.word	-967156779
	.word	1272426833
	.word	1566652693
	.word	-1629408676
	.word	1372461936
	.word	-2095523740
	.word	-1569875118
	.word	425088420
	.word	-51731404
	.word	-2141869776
	.word	-1959389725
	.word	499648187
	.word	380439831
	.section	.rodata.brainpoolP512r1_T_13_X,"a"
	.align	2
	.type	brainpoolP512r1_T_13_X, @object
	.size	brainpoolP512r1_T_13_X, 64
brainpoolP512r1_T_13_X:
	.word	-856631776
	.word	-766286861
	.word	1188846119
	.word	-1767043651
	.word	1611738913
	.word	-364228331
	.word	949216051
	.word	229278677
	.word	-1311988080
	.word	253410301
	.word	1422414907
	.word	1494907247
	.word	685394495
	.word	2141034386
	.word	-941929514
	.word	879150418
	.section	.rodata.brainpoolP512r1_T_13_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_13_Y, @object
	.size	brainpoolP512r1_T_13_Y, 64
brainpoolP512r1_T_13_Y:
	.word	1402109445
	.word	-158928
	.word	-1318447456
	.word	1387530897
	.word	1061199213
	.word	1174532579
	.word	-304607725
	.word	-313749999
	.word	-2011477370
	.word	-416707105
	.word	287384471
	.word	1652651947
	.word	-99504373
	.word	-412925766
	.word	-2138214613
	.word	1156933599
	.section	.rodata.brainpoolP512r1_T_14_X,"a"
	.align	2
	.type	brainpoolP512r1_T_14_X, @object
	.size	brainpoolP512r1_T_14_X, 64
brainpoolP512r1_T_14_X:
	.word	146246578
	.word	-1473390604
	.word	36711367
	.word	1225290053
	.word	1355430551
	.word	-1944468746
	.word	1050392855
	.word	1226675571
	.word	1213817014
	.word	-1428760373
	.word	-1989363216
	.word	-123168341
	.word	1317773807
	.word	-1712580346
	.word	-821783184
	.word	45323477
	.section	.rodata.brainpoolP512r1_T_14_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_14_Y, @object
	.size	brainpoolP512r1_T_14_Y, 64
brainpoolP512r1_T_14_Y:
	.word	2090022185
	.word	463386803
	.word	2119976388
	.word	260142527
	.word	-551229220
	.word	-1182978068
	.word	1792379890
	.word	1340121243
	.word	-2111315150
	.word	1271586270
	.word	1180063655
	.word	771819013
	.word	1202140532
	.word	1328311266
	.word	-330523336
	.word	729092383
	.section	.rodata.brainpoolP512r1_T_15_X,"a"
	.align	2
	.type	brainpoolP512r1_T_15_X, @object
	.size	brainpoolP512r1_T_15_X, 64
brainpoolP512r1_T_15_X:
	.word	-1052661076
	.word	-1427566871
	.word	1268567818
	.word	1225453032
	.word	214594365
	.word	-459535802
	.word	-1130438247
	.word	1835222270
	.word	-294567119
	.word	1552728568
	.word	1777355626
	.word	443661605
	.word	-2097243395
	.word	-289291801
	.word	1584290556
	.word	-1925879145
	.section	.rodata.brainpoolP512r1_T_15_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_15_Y, @object
	.size	brainpoolP512r1_T_15_Y, 64
brainpoolP512r1_T_15_Y:
	.word	2121013410
	.word	844603064
	.word	-792610507
	.word	855341310
	.word	1185810556
	.word	2138761780
	.word	-1453974296
	.word	-1630259432
	.word	183067432
	.word	-1053017930
	.word	1856261950
	.word	1378038149
	.word	-1010520819
	.word	-2112074831
	.word	944395824
	.word	745499571
	.section	.rodata.brainpoolP512r1_T_16_X,"a"
	.align	2
	.type	brainpoolP512r1_T_16_X, @object
	.size	brainpoolP512r1_T_16_X, 64
brainpoolP512r1_T_16_X:
	.word	-568735897
	.word	-796267231
	.word	-1364804049
	.word	715628011
	.word	504565252
	.word	1002657670
	.word	1177570079
	.word	1391247698
	.word	826594670
	.word	656817046
	.word	1739090039
	.word	1760049528
	.word	-575178610
	.word	1035360498
	.word	649280641
	.word	-1517540156
	.section	.rodata.brainpoolP512r1_T_16_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_16_Y, @object
	.size	brainpoolP512r1_T_16_Y, 64
brainpoolP512r1_T_16_Y:
	.word	1944396985
	.word	-1459447058
	.word	1617259225
	.word	-370973965
	.word	-427554821
	.word	-1620752837
	.word	-1341354015
	.word	-1652423455
	.word	1035932651
	.word	1956792480
	.word	1953900040
	.word	-399963221
	.word	56585776
	.word	-835158988
	.word	1006203469
	.word	2092737596
	.section	.rodata.brainpoolP512r1_T_17_X,"a"
	.align	2
	.type	brainpoolP512r1_T_17_X, @object
	.size	brainpoolP512r1_T_17_X, 64
brainpoolP512r1_T_17_X:
	.word	-2145857956
	.word	-2126175048
	.word	-1207760399
	.word	-319331322
	.word	280045297
	.word	772960621
	.word	1858474669
	.word	-2134676962
	.word	-569715739
	.word	1543793624
	.word	-1369733226
	.word	-977257253
	.word	-1040583282
	.word	2126219674
	.word	-1955436051
	.word	286470830
	.section	.rodata.brainpoolP512r1_T_17_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_17_Y, @object
	.size	brainpoolP512r1_T_17_Y, 64
brainpoolP512r1_T_17_Y:
	.word	1342641913
	.word	-389067526
	.word	-383692552
	.word	-545329954
	.word	-2081935492
	.word	241503024
	.word	-1399256155
	.word	711768777
	.word	224024999
	.word	-1391944069
	.word	-592277196
	.word	-311964016
	.word	207655907
	.word	388964311
	.word	1084063513
	.word	1417312504
	.section	.rodata.brainpoolP512r1_T_18_X,"a"
	.align	2
	.type	brainpoolP512r1_T_18_X, @object
	.size	brainpoolP512r1_T_18_X, 64
brainpoolP512r1_T_18_X:
	.word	-392879597
	.word	894906863
	.word	-28080083
	.word	340229295
	.word	2043465230
	.word	-997416984
	.word	2010978011
	.word	-1754035602
	.word	563546048
	.word	-1470105541
	.word	-2116897338
	.word	-1612189564
	.word	158699467
	.word	-1387065750
	.word	-1754247194
	.word	1065200839
	.section	.rodata.brainpoolP512r1_T_18_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_18_Y, @object
	.size	brainpoolP512r1_T_18_Y, 64
brainpoolP512r1_T_18_Y:
	.word	-1268105991
	.word	499689744
	.word	1775683054
	.word	632076310
	.word	-337886036
	.word	1599951944
	.word	-677689233
	.word	-1968936590
	.word	-1707733580
	.word	619449190
	.word	-1227569474
	.word	985916768
	.word	-532534854
	.word	1048378781
	.word	1438257219
	.word	1563966396
	.section	.rodata.brainpoolP512r1_T_19_X,"a"
	.align	2
	.type	brainpoolP512r1_T_19_X, @object
	.size	brainpoolP512r1_T_19_X, 64
brainpoolP512r1_T_19_X:
	.word	100296229
	.word	1763378035
	.word	308716561
	.word	1275231126
	.word	1843311940
	.word	-1462382184
	.word	-1203440158
	.word	93124238
	.word	1915426152
	.word	-538621508
	.word	-539540372
	.word	-2138182769
	.word	-1433902075
	.word	493937847
	.word	-373615460
	.word	1566947739
	.section	.rodata.brainpoolP512r1_T_19_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_19_Y, @object
	.size	brainpoolP512r1_T_19_Y, 64
brainpoolP512r1_T_19_Y:
	.word	-175600026
	.word	-1568030223
	.word	-430755818
	.word	-1266536965
	.word	-1157634905
	.word	-1028949711
	.word	-1208547003
	.word	-1874036727
	.word	1153609232
	.word	1199052764
	.word	1125635271
	.word	597586969
	.word	1933272085
	.word	1982306722
	.word	1597404165
	.word	833688787
	.section	.rodata.brainpoolP512r1_T_20_X,"a"
	.align	2
	.type	brainpoolP512r1_T_20_X, @object
	.size	brainpoolP512r1_T_20_X, 64
brainpoolP512r1_T_20_X:
	.word	-39123028
	.word	-708508773
	.word	498122439
	.word	1936919794
	.word	-2021922919
	.word	-486722349
	.word	-952293990
	.word	-598506698
	.word	1674542114
	.word	-1341058475
	.word	659371200
	.word	370715794
	.word	-1654570344
	.word	370409262
	.word	1704124148
	.word	180096343
	.section	.rodata.brainpoolP512r1_T_20_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_20_Y, @object
	.size	brainpoolP512r1_T_20_Y, 64
brainpoolP512r1_T_20_Y:
	.word	-965837841
	.word	175382826
	.word	1297327927
	.word	-437307863
	.word	-951986463
	.word	1397796249
	.word	-1623085927
	.word	-242856709
	.word	635878283
	.word	518761000
	.word	-1012792174
	.word	-863369046
	.word	-497341606
	.word	887781005
	.word	567423923
	.word	-1897700787
	.section	.rodata.brainpoolP512r1_T_21_X,"a"
	.align	2
	.type	brainpoolP512r1_T_21_X, @object
	.size	brainpoolP512r1_T_21_X, 64
brainpoolP512r1_T_21_X:
	.word	730531574
	.word	-760101694
	.word	-1063127558
	.word	304704003
	.word	1441769973
	.word	1805589174
	.word	-1103997797
	.word	-38452474
	.word	551147255
	.word	466927241
	.word	278210280
	.word	2039002318
	.word	-1406687514
	.word	-943867342
	.word	-1666275677
	.word	1671544443
	.section	.rodata.brainpoolP512r1_T_21_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_21_Y, @object
	.size	brainpoolP512r1_T_21_Y, 64
brainpoolP512r1_T_21_Y:
	.word	1028509067
	.word	2109445855
	.word	101820279
	.word	-2127491380
	.word	-1376459744
	.word	-269394053
	.word	-188853020
	.word	-548994166
	.word	2130727860
	.word	-1503098192
	.word	1940985504
	.word	-1022469265
	.word	1138962986
	.word	-67406492
	.word	-1974134624
	.word	1412787790
	.section	.rodata.brainpoolP512r1_T_22_X,"a"
	.align	2
	.type	brainpoolP512r1_T_22_X, @object
	.size	brainpoolP512r1_T_22_X, 64
brainpoolP512r1_T_22_X:
	.word	504731520
	.word	-1516440885
	.word	-205795029
	.word	-1391219344
	.word	-979069224
	.word	1473632862
	.word	1709801735
	.word	1162311270
	.word	109524425
	.word	-768290957
	.word	1108705626
	.word	1113291170
	.word	159228424
	.word	-1362729964
	.word	-305894050
	.word	619304689
	.section	.rodata.brainpoolP512r1_T_22_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_22_Y, @object
	.size	brainpoolP512r1_T_22_Y, 64
brainpoolP512r1_T_22_Y:
	.word	633066932
	.word	-2002526813
	.word	1734931014
	.word	-1821143239
	.word	-1993836816
	.word	-538955091
	.word	1473024248
	.word	1976150616
	.word	-767305890
	.word	144727758
	.word	-1531400141
	.word	-2044291426
	.word	-216178284
	.word	-899654043
	.word	-312140089
	.word	543164367
	.section	.rodata.brainpoolP512r1_T_23_X,"a"
	.align	2
	.type	brainpoolP512r1_T_23_X, @object
	.size	brainpoolP512r1_T_23_X, 64
brainpoolP512r1_T_23_X:
	.word	-1978191708
	.word	-1542813551
	.word	-1541899003
	.word	1610373548
	.word	629879204
	.word	-593872539
	.word	1749751317
	.word	789797306
	.word	-975962739
	.word	1586284886
	.word	-190855492
	.word	28637158
	.word	228397
	.word	2077794086
	.word	7216420
	.word	-1821507399
	.section	.rodata.brainpoolP512r1_T_23_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_23_Y, @object
	.size	brainpoolP512r1_T_23_Y, 64
brainpoolP512r1_T_23_Y:
	.word	64643957
	.word	-32778965
	.word	-924648378
	.word	-223416249
	.word	1358384209
	.word	705054732
	.word	-1741542433
	.word	1096908302
	.word	-30997923
	.word	618628725
	.word	582037547
	.word	620632882
	.word	2029463490
	.word	-453126289
	.word	-355698528
	.word	1143230656
	.section	.rodata.brainpoolP512r1_T_24_X,"a"
	.align	2
	.type	brainpoolP512r1_T_24_X, @object
	.size	brainpoolP512r1_T_24_X, 64
brainpoolP512r1_T_24_X:
	.word	2135894839
	.word	1891821144
	.word	-1479195849
	.word	-1199555531
	.word	306933018
	.word	-1494844672
	.word	-792914633
	.word	-2119513445
	.word	-476262705
	.word	1400529035
	.word	55302668
	.word	574852519
	.word	721465175
	.word	1747120178
	.word	-1717970468
	.word	1050231742
	.section	.rodata.brainpoolP512r1_T_24_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_24_Y, @object
	.size	brainpoolP512r1_T_24_Y, 64
brainpoolP512r1_T_24_Y:
	.word	-197037793
	.word	920518069
	.word	1277223581
	.word	102706897
	.word	1984447382
	.word	-2018752118
	.word	-1470817780
	.word	1968690339
	.word	964994684
	.word	1622873033
	.word	1890187993
	.word	-908229666
	.word	1054460396
	.word	2070450500
	.word	1837473718
	.word	-2110368521
	.section	.rodata.brainpoolP512r1_T_25_X,"a"
	.align	2
	.type	brainpoolP512r1_T_25_X, @object
	.size	brainpoolP512r1_T_25_X, 64
brainpoolP512r1_T_25_X:
	.word	-1549374616
	.word	-616114971
	.word	-2065940957
	.word	874806140
	.word	-2038436588
	.word	-900240377
	.word	1392379541
	.word	1449752850
	.word	1598345604
	.word	-2067580383
	.word	-1068836514
	.word	-1407734923
	.word	-1231781377
	.word	-1016108160
	.word	-1517371897
	.word	1042201770
	.section	.rodata.brainpoolP512r1_T_25_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_25_Y, @object
	.size	brainpoolP512r1_T_25_Y, 64
brainpoolP512r1_T_25_Y:
	.word	-1501182071
	.word	1387371353
	.word	-784282084
	.word	-141238277
	.word	-1084311528
	.word	757966917
	.word	453418136
	.word	2042189737
	.word	-1563498157
	.word	1017214163
	.word	2016698282
	.word	339390171
	.word	1048851069
	.word	256076392
	.word	909753484
	.word	297518500
	.section	.rodata.brainpoolP512r1_T_26_X,"a"
	.align	2
	.type	brainpoolP512r1_T_26_X, @object
	.size	brainpoolP512r1_T_26_X, 64
brainpoolP512r1_T_26_X:
	.word	-1247672436
	.word	256708553
	.word	-429449757
	.word	1911244529
	.word	-1792851497
	.word	-586096409
	.word	1761503678
	.word	-1235237236
	.word	1026275811
	.word	450383826
	.word	1609894307
	.word	1469183695
	.word	1799492965
	.word	-1225542291
	.word	-979544385
	.word	-1693201665
	.section	.rodata.brainpoolP512r1_T_26_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_26_Y, @object
	.size	brainpoolP512r1_T_26_Y, 64
brainpoolP512r1_T_26_Y:
	.word	602290253
	.word	-902018973
	.word	-784570158
	.word	-2110002885
	.word	1230244021
	.word	323307217
	.word	1850896391
	.word	-1788951431
	.word	1525210934
	.word	-740654798
	.word	1536437564
	.word	178206133
	.word	-1014164950
	.word	716322358
	.word	941764409
	.word	894179419
	.section	.rodata.brainpoolP512r1_T_27_X,"a"
	.align	2
	.type	brainpoolP512r1_T_27_X, @object
	.size	brainpoolP512r1_T_27_X, 64
brainpoolP512r1_T_27_X:
	.word	237158672
	.word	85029872
	.word	1453633202
	.word	308699416
	.word	141753209
	.word	-1336854396
	.word	-1180137766
	.word	-1020683983
	.word	1120140170
	.word	980404147
	.word	165804248
	.word	581989822
	.word	-184582822
	.word	-1424753511
	.word	-2122048538
	.word	1036395074
	.section	.rodata.brainpoolP512r1_T_27_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_27_Y, @object
	.size	brainpoolP512r1_T_27_Y, 64
brainpoolP512r1_T_27_Y:
	.word	-1539842015
	.word	2134388640
	.word	1085750736
	.word	2050767151
	.word	1368013690
	.word	2051621038
	.word	-576774090
	.word	-948449111
	.word	-630973064
	.word	2110215072
	.word	1432779575
	.word	1146212756
	.word	1538631950
	.word	-1069533896
	.word	-267400760
	.word	1631811955
	.section	.rodata.brainpoolP512r1_T_28_X,"a"
	.align	2
	.type	brainpoolP512r1_T_28_X, @object
	.size	brainpoolP512r1_T_28_X, 64
brainpoolP512r1_T_28_X:
	.word	1766147856
	.word	1114796672
	.word	1503203696
	.word	964708571
	.word	-63082891
	.word	-1074522825
	.word	-1503937769
	.word	539528501
	.word	742070955
	.word	766169999
	.word	-132506539
	.word	1098635522
	.word	-122918481
	.word	-1592512172
	.word	-555316671
	.word	2059712856
	.section	.rodata.brainpoolP512r1_T_28_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_28_Y, @object
	.size	brainpoolP512r1_T_28_Y, 64
brainpoolP512r1_T_28_Y:
	.word	-28146857
	.word	535395321
	.word	1180017159
	.word	985745685
	.word	-1856193507
	.word	-191055427
	.word	1320287675
	.word	1408136287
	.word	-1948742735
	.word	-1776585961
	.word	1742180898
	.word	-853168890
	.word	612372225
	.word	-1956698142
	.word	-791798687
	.word	198494823
	.section	.rodata.brainpoolP512r1_T_29_X,"a"
	.align	2
	.type	brainpoolP512r1_T_29_X, @object
	.size	brainpoolP512r1_T_29_X, 64
brainpoolP512r1_T_29_X:
	.word	870183303
	.word	-704251546
	.word	2037114141
	.word	-1438496579
	.word	-481159983
	.word	-732908461
	.word	-814971854
	.word	169915098
	.word	-451226000
	.word	-831510046
	.word	-1140956715
	.word	-19824095
	.word	-1952649172
	.word	103825946
	.word	-2125867453
	.word	-1865354862
	.section	.rodata.brainpoolP512r1_T_29_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_29_Y, @object
	.size	brainpoolP512r1_T_29_Y, 64
brainpoolP512r1_T_29_Y:
	.word	1788056009
	.word	-689364314
	.word	1774443529
	.word	-327314159
	.word	-2019712228
	.word	-1572772770
	.word	358254526
	.word	-1925419331
	.word	-867136048
	.word	193968079
	.word	835544376
	.word	325644592
	.word	1734761488
	.word	-1789448046
	.word	1023515427
	.word	231836448
	.section	.rodata.brainpoolP512r1_T_30_X,"a"
	.align	2
	.type	brainpoolP512r1_T_30_X, @object
	.size	brainpoolP512r1_T_30_X, 64
brainpoolP512r1_T_30_X:
	.word	1340522667
	.word	-1280613666
	.word	481511588
	.word	1167267343
	.word	532505463
	.word	-1739173866
	.word	-373553571
	.word	2073697319
	.word	-987627784
	.word	-35564231
	.word	-1764710154
	.word	-2068663026
	.word	-213129411
	.word	1539902481
	.word	-2017183165
	.word	419098225
	.section	.rodata.brainpoolP512r1_T_30_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_30_Y, @object
	.size	brainpoolP512r1_T_30_Y, 64
brainpoolP512r1_T_30_Y:
	.word	-2115078233
	.word	1273665118
	.word	-190193682
	.word	1135770703
	.word	903861407
	.word	-1977268381
	.word	-1526776411
	.word	295027458
	.word	-780660523
	.word	247379755
	.word	-111679222
	.word	-1124280096
	.word	-704527117
	.word	-495392844
	.word	330918914
	.word	1869473956
	.section	.rodata.brainpoolP512r1_T_31_X,"a"
	.align	2
	.type	brainpoolP512r1_T_31_X, @object
	.size	brainpoolP512r1_T_31_X, 64
brainpoolP512r1_T_31_X:
	.word	-842419992
	.word	1662952127
	.word	579227613
	.word	-1142363493
	.word	1138706000
	.word	170754745
	.word	1324429831
	.word	-1901182571
	.word	-64580782
	.word	-337866541
	.word	-901446396
	.word	-1819714823
	.word	1315144389
	.word	138026325
	.word	1230137724
	.word	878177769
	.section	.rodata.brainpoolP512r1_T_31_Y,"a"
	.align	2
	.type	brainpoolP512r1_T_31_Y, @object
	.size	brainpoolP512r1_T_31_Y, 64
brainpoolP512r1_T_31_Y:
	.word	-1393990544
	.word	636111436
	.word	-1727272471
	.word	749337063
	.word	-188675036
	.word	-1313470579
	.word	905603245
	.word	-642867484
	.word	320482800
	.word	1675756174
	.word	-2044184537
	.word	-516261050
	.word	1499745343
	.word	-1006438134
	.word	-1574744255
	.word	1123014083
	.section	.rodata.brainpoolP512r1_T,"a"
	.align	2
	.type	brainpoolP512r1_T, @object
	.size	brainpoolP512r1_T, 768
brainpoolP512r1_T:
	.word	brainpoolP512r1_T_0_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_0_Y
	.half	1
	.half	16
	.word	mpi_one
	.half	1
	.half	1
	.word	brainpoolP512r1_T_1_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_1_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_2_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_2_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_3_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_3_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_4_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_4_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_5_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_5_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_6_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_6_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_7_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_7_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_8_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_8_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_9_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_9_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_10_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_10_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_11_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_11_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_12_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_12_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_13_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_13_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_14_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_14_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_15_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_15_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_16_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_16_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_17_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_17_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_18_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_18_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_19_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_19_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_20_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_20_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_21_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_21_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_22_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_22_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_23_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_23_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_24_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_24_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_25_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_25_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_26_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_26_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_27_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_27_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_28_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_28_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_29_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_29_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_30_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_30_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.word	brainpoolP512r1_T_31_X
	.half	1
	.half	16
	.word	brainpoolP512r1_T_31_Y
	.half	1
	.half	16
	.word	0
	.half	1
	.half	0
	.section	.text.ecp_mpi_load,"ax",@progbits
	.align	1
	.type	ecp_mpi_load, @function
ecp_mpi_load:
.LFB38:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecp_curves.c"
	.loc 1 4495 1
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
	.loc 1 4496 10
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 1 4497 34
	lw	a5,-28(s0)
	srli	a5,a5,2
	.loc 1 4497 12
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 4497 10
	lw	a5,-20(s0)
	sh	a4,6(a5)
	.loc 1 4498 10
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 4499 1
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
.LFE38:
	.size	ecp_mpi_load, .-ecp_mpi_load
	.section	.text.ecp_mpi_set1,"ax",@progbits
	.align	1
	.type	ecp_mpi_set1, @function
ecp_mpi_set1:
.LFB39:
	.loc 1 4505 1
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
	.loc 1 4506 10
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,4(a5)
	.loc 1 4507 10
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,6(a5)
	.loc 1 4508 10
	lw	a5,-20(s0)
	lui	a4,%hi(mpi_one)
	addi	a4,a4,%lo(mpi_one)
	sw	a4,0(a5)
	.loc 1 4509 1
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
.LFE39:
	.size	ecp_mpi_set1, .-ecp_mpi_set1
	.section	.text.ecp_group_load,"ax",@progbits
	.align	1
	.type	ecp_group_load, @function
ecp_group_load:
.LFB40:
	.loc 1 4522 1
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
	sw	a7,-48(s0)
	.loc 1 4523 5
	lw	a5,-20(s0)
	addi	a5,a5,4
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	ecp_mpi_load
	.loc 1 4524 8
	lw	a5,-32(s0)
	beq	a5,zero,.L4
	.loc 1 4525 9
	lw	a5,-20(s0)
	addi	a5,a5,12
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	ecp_mpi_load
.L4:
	.loc 1 4527 5
	lw	a5,-20(s0)
	addi	a5,a5,20
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	ecp_mpi_load
	.loc 1 4528 5
	lw	a5,-20(s0)
	addi	a5,a5,52
	lw	a2,16(s0)
	lw	a1,12(s0)
	mv	a0,a5
	call	ecp_mpi_load
	.loc 1 4530 5
	lw	a5,-20(s0)
	addi	a5,a5,28
	lw	a2,0(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	ecp_mpi_load
	.loc 1 4531 5
	lw	a5,-20(s0)
	addi	a5,a5,36
	lw	a2,8(s0)
	lw	a1,4(s0)
	mv	a0,a5
	call	ecp_mpi_load
	.loc 1 4532 5
	lw	a5,-20(s0)
	addi	a5,a5,44
	mv	a0,a5
	call	ecp_mpi_set1
	.loc 1 4534 37
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 4534 18
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 1 4534 16 discriminator 1
	lw	a5,-20(s0)
	sw	a4,60(a5)
	.loc 1 4535 37
	lw	a5,-20(s0)
	addi	a5,a5,52
	.loc 1 4535 18
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 1 4535 16 discriminator 1
	lw	a5,-20(s0)
	sw	a4,64(a5)
	.loc 1 4537 12
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,68(a5)
	.loc 1 4539 12
	lw	a5,-20(s0)
	lw	a4,20(s0)
	sw	a4,88(a5)
	.loc 1 4543 17
	lw	a5,-20(s0)
	sw	zero,92(a5)
	.loc 1 4545 12
	li	a5,0
	.loc 1 4546 1
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
	.size	ecp_group_load, .-ecp_group_load
	.section	.srodata.curve25519_a24,"a"
	.align	2
	.type	curve25519_a24, @object
	.size	curve25519_a24, 4
curve25519_a24:
	.word	121666
	.section	.rodata.curve25519_part_of_n,"a"
	.align	2
	.type	curve25519_part_of_n, @object
	.size	curve25519_part_of_n, 16
curve25519_part_of_n:
	.base64	"FN753qL3nNZYEmMaXPXT7Q=="
	.section	.text.ecp_use_curve25519,"ax",@progbits
	.align	1
	.type	ecp_use_curve25519, @function
ecp_use_curve25519:
.LFB41:
	.loc 1 4623 1
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
	.loc 1 4624 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 4627 22
	lw	a5,-36(s0)
	addi	a4,a5,12
	li	a5,122880
	addi	a5,a5,-1214
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4627 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L18
	.loc 1 4630 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4630 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L19
	.loc 1 4631 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,255
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 1 4631 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L20
	.loc 1 4632 22
	lw	a5,-36(s0)
	addi	a4,a5,4
	.loc 1 4632 51
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 4632 22
	li	a2,19
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 4632 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L21
	.loc 1 4633 37
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 4633 18
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 1 4633 16 discriminator 1
	lw	a5,-36(s0)
	sw	a4,60(a5)
	.loc 1 4636 22
	lw	a5,-36(s0)
	addi	a4,a5,52
	li	a2,16
	lui	a5,%hi(curve25519_part_of_n)
	addi	a1,a5,%lo(curve25519_part_of_n)
	mv	a0,a4
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 1 4636 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L22
	.loc 1 4638 22
	lw	a5,-36(s0)
	addi	a5,a5,52
	li	a2,1
	li	a1,252
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 1 4638 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L23
	.loc 1 4642 22
	lw	a5,-36(s0)
	addi	a5,a5,28
	li	a1,9
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4642 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L24
	.loc 1 4643 22
	lw	a5,-36(s0)
	addi	a5,a5,44
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4643 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L25
	.loc 1 4644 5
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 4647 16
	lw	a5,-36(s0)
	li	a4,254
	sw	a4,64(a5)
	j	.L8
.L18:
	.loc 1 4627 72
	nop
	j	.L8
.L19:
	.loc 1 4630 59
	nop
	j	.L8
.L20:
	.loc 1 4631 64
	nop
	j	.L8
.L21:
	.loc 1 4632 72
	nop
	j	.L8
.L22:
	.loc 1 4636 115
	nop
	j	.L8
.L23:
	.loc 1 4638 67
	nop
	j	.L8
.L24:
	.loc 1 4642 61
	nop
	j	.L8
.L25:
	.loc 1 4643 61
	nop
.L8:
	.loc 1 4650 8
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 1 4651 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_group_free
.L16:
	.loc 1 4654 12
	lw	a5,-20(s0)
	.loc 1 4655 1
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
.LFE41:
	.size	ecp_use_curve25519, .-ecp_use_curve25519
	.section	.srodata.curve448_a24,"a"
	.align	2
	.type	curve448_a24, @object
	.size	curve448_a24, 4
curve448_a24:
	.word	39082
	.section	.rodata.curve448_part_of_n,"a"
	.align	2
	.type	curve448_part_of_n, @object
	.size	curve448_part_of_n, 28
curve448_part_of_n:
	.base64	"gzXcFjuxJLZRKclv3pM9jXI6cKrchz1tVKe7DQ=="
	.section	.text.ecp_use_curve448,"ax",@progbits
	.align	1
	.type	ecp_use_curve448, @function
ecp_use_curve448:
.LFB42:
	.loc 1 4672 1
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
	.loc 1 4674 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 4676 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 4679 22
	lw	a5,-36(s0)
	addi	a4,a5,12
	li	a5,40960
	addi	a5,a5,-1878
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4679 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L41
	.loc 1 4682 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4682 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L42
	.loc 1 4683 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,224
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 1 4683 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L43
	.loc 1 4684 22
	lw	a5,-36(s0)
	addi	a4,a5,4
	.loc 1 4684 51
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 4684 22
	li	a2,1
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 4684 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 1 4685 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,224
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 1 4685 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 1 4686 22
	lw	a5,-36(s0)
	addi	a4,a5,4
	.loc 1 4686 51
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 4686 22
	li	a2,1
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 1 4686 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L46
	.loc 1 4687 37
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 4687 18
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 1 4687 16 discriminator 1
	lw	a5,-36(s0)
	sw	a4,60(a5)
	.loc 1 4691 22
	lw	a5,-36(s0)
	addi	a5,a5,28
	li	a1,5
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4691 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L47
	.loc 1 4692 22
	lw	a5,-36(s0)
	addi	a5,a5,44
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 1 4692 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L48
	.loc 1 4693 5
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 4696 22
	lw	a5,-36(s0)
	addi	a5,a5,52
	li	a2,1
	li	a1,446
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 1 4696 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L49
	.loc 1 4697 22
	addi	a4,s0,-28
	li	a2,28
	lui	a5,%hi(curve448_part_of_n)
	addi	a1,a5,%lo(curve448_part_of_n)
	mv	a0,a4
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 1 4697 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L50
	.loc 1 4699 22
	lw	a5,-36(s0)
	addi	a4,a5,52
	.loc 1 4699 51
	lw	a5,-36(s0)
	addi	a5,a5,52
	.loc 1 4699 22
	addi	a3,s0,-28
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 1 4699 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L51
	.loc 1 4702 16
	lw	a5,-36(s0)
	li	a4,447
	sw	a4,64(a5)
	j	.L28
.L41:
	.loc 1 4679 70
	nop
	j	.L28
.L42:
	.loc 1 4682 59
	nop
	j	.L28
.L43:
	.loc 1 4683 64
	nop
	j	.L28
.L44:
	.loc 1 4684 71
	nop
	j	.L28
.L45:
	.loc 1 4685 64
	nop
	j	.L28
.L46:
	.loc 1 4686 71
	nop
	j	.L28
.L47:
	.loc 1 4691 61
	nop
	j	.L28
.L48:
	.loc 1 4692 61
	nop
	j	.L28
.L49:
	.loc 1 4696 67
	nop
	j	.L28
.L50:
	.loc 1 4697 107
	nop
	j	.L28
.L51:
	.loc 1 4699 73
	nop
.L28:
	.loc 1 4705 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 4706 8
	lw	a5,-20(s0)
	beq	a5,zero,.L39
	.loc 1 4707 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_group_free
.L39:
	.loc 1 4710 12
	lw	a5,-20(s0)
	.loc 1 4711 1
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
.LFE42:
	.size	ecp_use_curve448, .-ecp_use_curve448
	.section	.text.mbedtls_ecp_group_load,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_group_load
	.type	mbedtls_ecp_group_load, @function
mbedtls_ecp_group_load:
.LFB43:
	.loc 1 4718 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 4719 5
	lw	a0,-20(s0)
	call	mbedtls_ecp_group_free
	.loc 1 4721 5
	lw	a0,-20(s0)
	call	mbedtls_ecp_group_init
	.loc 1 4723 13
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 1 4725 5
	lbu	a5,-21(s0)
	li	a4,13
	beq	a5,a4,.L53
	li	a4,13
	bgt	a5,a4,.L54
	li	a4,12
	beq	a5,a4,.L55
	li	a4,12
	bgt	a5,a4,.L54
	li	a4,11
	beq	a5,a4,.L56
	li	a4,11
	bgt	a5,a4,.L54
	li	a4,10
	beq	a5,a4,.L57
	li	a4,10
	bgt	a5,a4,.L54
	li	a4,9
	beq	a5,a4,.L58
	li	a4,9
	bgt	a5,a4,.L54
	li	a4,8
	beq	a5,a4,.L59
	li	a4,8
	bgt	a5,a4,.L54
	li	a4,7
	beq	a5,a4,.L60
	li	a4,7
	bgt	a5,a4,.L54
	li	a4,6
	beq	a5,a4,.L61
	li	a4,6
	bgt	a5,a4,.L54
	li	a4,5
	beq	a5,a4,.L62
	li	a4,5
	bgt	a5,a4,.L54
	li	a4,4
	beq	a5,a4,.L63
	li	a4,4
	bgt	a5,a4,.L54
	li	a4,3
	beq	a5,a4,.L64
	li	a4,3
	bgt	a5,a4,.L54
	li	a4,1
	beq	a5,a4,.L65
	li	a4,2
	beq	a5,a4,.L66
	j	.L54
.L65:
	.loc 1 4728 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p192)
	addi	a4,a4,%lo(ecp_mod_p192)
	sw	a4,72(a5)
	.loc 1 4729 20
	lui	a5,%hi(secp192r1_T)
	addi	a5,a5,%lo(secp192r1_T)
	sw	a5,20(sp)
	li	a5,24
	sw	a5,16(sp)
	lui	a5,%hi(secp192r1_n)
	addi	a5,a5,%lo(secp192r1_n)
	sw	a5,12(sp)
	li	a5,24
	sw	a5,8(sp)
	lui	a5,%hi(secp192r1_gy)
	addi	a5,a5,%lo(secp192r1_gy)
	sw	a5,4(sp)
	li	a5,24
	sw	a5,0(sp)
	lui	a5,%hi(secp192r1_gx)
	addi	a7,a5,%lo(secp192r1_gx)
	li	a6,24
	lui	a5,%hi(secp192r1_b)
	addi	a5,a5,%lo(secp192r1_b)
	li	a4,0
	li	a3,0
	li	a2,24
	lui	a1,%hi(secp192r1_p)
	addi	a1,a1,%lo(secp192r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L66:
	.loc 1 4734 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p224)
	addi	a4,a4,%lo(ecp_mod_p224)
	sw	a4,72(a5)
	.loc 1 4735 20
	lui	a5,%hi(secp224r1_T)
	addi	a5,a5,%lo(secp224r1_T)
	sw	a5,20(sp)
	li	a5,28
	sw	a5,16(sp)
	lui	a5,%hi(secp224r1_n)
	addi	a5,a5,%lo(secp224r1_n)
	sw	a5,12(sp)
	li	a5,28
	sw	a5,8(sp)
	lui	a5,%hi(secp224r1_gy)
	addi	a5,a5,%lo(secp224r1_gy)
	sw	a5,4(sp)
	li	a5,28
	sw	a5,0(sp)
	lui	a5,%hi(secp224r1_gx)
	addi	a7,a5,%lo(secp224r1_gx)
	li	a6,28
	lui	a5,%hi(secp224r1_b)
	addi	a5,a5,%lo(secp224r1_b)
	li	a4,0
	li	a3,0
	li	a2,32
	lui	a1,%hi(secp224r1_p)
	addi	a1,a1,%lo(secp224r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L64:
	.loc 1 4740 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p256)
	addi	a4,a4,%lo(ecp_mod_p256)
	sw	a4,72(a5)
	.loc 1 4741 20
	lui	a5,%hi(secp256r1_T)
	addi	a5,a5,%lo(secp256r1_T)
	sw	a5,20(sp)
	li	a5,32
	sw	a5,16(sp)
	lui	a5,%hi(secp256r1_n)
	addi	a5,a5,%lo(secp256r1_n)
	sw	a5,12(sp)
	li	a5,32
	sw	a5,8(sp)
	lui	a5,%hi(secp256r1_gy)
	addi	a5,a5,%lo(secp256r1_gy)
	sw	a5,4(sp)
	li	a5,32
	sw	a5,0(sp)
	lui	a5,%hi(secp256r1_gx)
	addi	a7,a5,%lo(secp256r1_gx)
	li	a6,32
	lui	a5,%hi(secp256r1_b)
	addi	a5,a5,%lo(secp256r1_b)
	li	a4,0
	li	a3,0
	li	a2,32
	lui	a1,%hi(secp256r1_p)
	addi	a1,a1,%lo(secp256r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L63:
	.loc 1 4746 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p384)
	addi	a4,a4,%lo(ecp_mod_p384)
	sw	a4,72(a5)
	.loc 1 4747 20
	lui	a5,%hi(secp384r1_T)
	addi	a5,a5,%lo(secp384r1_T)
	sw	a5,20(sp)
	li	a5,48
	sw	a5,16(sp)
	lui	a5,%hi(secp384r1_n)
	addi	a5,a5,%lo(secp384r1_n)
	sw	a5,12(sp)
	li	a5,48
	sw	a5,8(sp)
	lui	a5,%hi(secp384r1_gy)
	addi	a5,a5,%lo(secp384r1_gy)
	sw	a5,4(sp)
	li	a5,48
	sw	a5,0(sp)
	lui	a5,%hi(secp384r1_gx)
	addi	a7,a5,%lo(secp384r1_gx)
	li	a6,48
	lui	a5,%hi(secp384r1_b)
	addi	a5,a5,%lo(secp384r1_b)
	li	a4,0
	li	a3,0
	li	a2,48
	lui	a1,%hi(secp384r1_p)
	addi	a1,a1,%lo(secp384r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L62:
	.loc 1 4752 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p521)
	addi	a4,a4,%lo(ecp_mod_p521)
	sw	a4,72(a5)
	.loc 1 4753 20
	lui	a5,%hi(secp521r1_T)
	addi	a5,a5,%lo(secp521r1_T)
	sw	a5,20(sp)
	li	a5,68
	sw	a5,16(sp)
	lui	a5,%hi(secp521r1_n)
	addi	a5,a5,%lo(secp521r1_n)
	sw	a5,12(sp)
	li	a5,68
	sw	a5,8(sp)
	lui	a5,%hi(secp521r1_gy)
	addi	a5,a5,%lo(secp521r1_gy)
	sw	a5,4(sp)
	li	a5,68
	sw	a5,0(sp)
	lui	a5,%hi(secp521r1_gx)
	addi	a7,a5,%lo(secp521r1_gx)
	li	a6,68
	lui	a5,%hi(secp521r1_b)
	addi	a5,a5,%lo(secp521r1_b)
	li	a4,0
	li	a3,0
	li	a2,68
	lui	a1,%hi(secp521r1_p)
	addi	a1,a1,%lo(secp521r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L57:
	.loc 1 4758 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p192k1)
	addi	a4,a4,%lo(ecp_mod_p192k1)
	sw	a4,72(a5)
	.loc 1 4759 20
	lui	a5,%hi(secp192k1_T)
	addi	a5,a5,%lo(secp192k1_T)
	sw	a5,20(sp)
	li	a5,24
	sw	a5,16(sp)
	lui	a5,%hi(secp192k1_n)
	addi	a5,a5,%lo(secp192k1_n)
	sw	a5,12(sp)
	li	a5,24
	sw	a5,8(sp)
	lui	a5,%hi(secp192k1_gy)
	addi	a5,a5,%lo(secp192k1_gy)
	sw	a5,4(sp)
	li	a5,24
	sw	a5,0(sp)
	lui	a5,%hi(secp192k1_gx)
	addi	a7,a5,%lo(secp192k1_gx)
	li	a6,4
	lui	a5,%hi(secp192k1_b)
	addi	a5,a5,%lo(secp192k1_b)
	li	a4,4
	lui	a3,%hi(secp192k1_a)
	addi	a3,a3,%lo(secp192k1_a)
	li	a2,24
	lui	a1,%hi(secp192k1_p)
	addi	a1,a1,%lo(secp192k1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L56:
	.loc 1 4764 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p224k1)
	addi	a4,a4,%lo(ecp_mod_p224k1)
	sw	a4,72(a5)
	.loc 1 4765 20
	lui	a5,%hi(secp224k1_T)
	addi	a5,a5,%lo(secp224k1_T)
	sw	a5,20(sp)
	li	a5,32
	sw	a5,16(sp)
	lui	a5,%hi(secp224k1_n)
	addi	a5,a5,%lo(secp224k1_n)
	sw	a5,12(sp)
	li	a5,28
	sw	a5,8(sp)
	lui	a5,%hi(secp224k1_gy)
	addi	a5,a5,%lo(secp224k1_gy)
	sw	a5,4(sp)
	li	a5,28
	sw	a5,0(sp)
	lui	a5,%hi(secp224k1_gx)
	addi	a7,a5,%lo(secp224k1_gx)
	li	a6,4
	lui	a5,%hi(secp224k1_b)
	addi	a5,a5,%lo(secp224k1_b)
	li	a4,4
	lui	a3,%hi(secp224k1_a)
	addi	a3,a3,%lo(secp224k1_a)
	li	a2,28
	lui	a1,%hi(secp224k1_p)
	addi	a1,a1,%lo(secp224k1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L55:
	.loc 1 4770 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p256k1)
	addi	a4,a4,%lo(ecp_mod_p256k1)
	sw	a4,72(a5)
	.loc 1 4771 20
	lui	a5,%hi(secp256k1_T)
	addi	a5,a5,%lo(secp256k1_T)
	sw	a5,20(sp)
	li	a5,32
	sw	a5,16(sp)
	lui	a5,%hi(secp256k1_n)
	addi	a5,a5,%lo(secp256k1_n)
	sw	a5,12(sp)
	li	a5,32
	sw	a5,8(sp)
	lui	a5,%hi(secp256k1_gy)
	addi	a5,a5,%lo(secp256k1_gy)
	sw	a5,4(sp)
	li	a5,32
	sw	a5,0(sp)
	lui	a5,%hi(secp256k1_gx)
	addi	a7,a5,%lo(secp256k1_gx)
	li	a6,4
	lui	a5,%hi(secp256k1_b)
	addi	a5,a5,%lo(secp256k1_b)
	li	a4,4
	lui	a3,%hi(secp256k1_a)
	addi	a3,a3,%lo(secp256k1_a)
	li	a2,32
	lui	a1,%hi(secp256k1_p)
	addi	a1,a1,%lo(secp256k1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L61:
	.loc 1 4776 20
	lui	a5,%hi(brainpoolP256r1_T)
	addi	a5,a5,%lo(brainpoolP256r1_T)
	sw	a5,20(sp)
	li	a5,32
	sw	a5,16(sp)
	lui	a5,%hi(brainpoolP256r1_n)
	addi	a5,a5,%lo(brainpoolP256r1_n)
	sw	a5,12(sp)
	li	a5,32
	sw	a5,8(sp)
	lui	a5,%hi(brainpoolP256r1_gy)
	addi	a5,a5,%lo(brainpoolP256r1_gy)
	sw	a5,4(sp)
	li	a5,32
	sw	a5,0(sp)
	lui	a5,%hi(brainpoolP256r1_gx)
	addi	a7,a5,%lo(brainpoolP256r1_gx)
	li	a6,32
	lui	a5,%hi(brainpoolP256r1_b)
	addi	a5,a5,%lo(brainpoolP256r1_b)
	li	a4,32
	lui	a3,%hi(brainpoolP256r1_a)
	addi	a3,a3,%lo(brainpoolP256r1_a)
	li	a2,32
	lui	a1,%hi(brainpoolP256r1_p)
	addi	a1,a1,%lo(brainpoolP256r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L60:
	.loc 1 4781 20
	lui	a5,%hi(brainpoolP384r1_T)
	addi	a5,a5,%lo(brainpoolP384r1_T)
	sw	a5,20(sp)
	li	a5,48
	sw	a5,16(sp)
	lui	a5,%hi(brainpoolP384r1_n)
	addi	a5,a5,%lo(brainpoolP384r1_n)
	sw	a5,12(sp)
	li	a5,48
	sw	a5,8(sp)
	lui	a5,%hi(brainpoolP384r1_gy)
	addi	a5,a5,%lo(brainpoolP384r1_gy)
	sw	a5,4(sp)
	li	a5,48
	sw	a5,0(sp)
	lui	a5,%hi(brainpoolP384r1_gx)
	addi	a7,a5,%lo(brainpoolP384r1_gx)
	li	a6,48
	lui	a5,%hi(brainpoolP384r1_b)
	addi	a5,a5,%lo(brainpoolP384r1_b)
	li	a4,48
	lui	a3,%hi(brainpoolP384r1_a)
	addi	a3,a3,%lo(brainpoolP384r1_a)
	li	a2,48
	lui	a1,%hi(brainpoolP384r1_p)
	addi	a1,a1,%lo(brainpoolP384r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L59:
	.loc 1 4786 20
	lui	a5,%hi(brainpoolP512r1_T)
	addi	a5,a5,%lo(brainpoolP512r1_T)
	sw	a5,20(sp)
	li	a5,64
	sw	a5,16(sp)
	lui	a5,%hi(brainpoolP512r1_n)
	addi	a5,a5,%lo(brainpoolP512r1_n)
	sw	a5,12(sp)
	li	a5,64
	sw	a5,8(sp)
	lui	a5,%hi(brainpoolP512r1_gy)
	addi	a5,a5,%lo(brainpoolP512r1_gy)
	sw	a5,4(sp)
	li	a5,64
	sw	a5,0(sp)
	lui	a5,%hi(brainpoolP512r1_gx)
	addi	a7,a5,%lo(brainpoolP512r1_gx)
	li	a6,64
	lui	a5,%hi(brainpoolP512r1_b)
	addi	a5,a5,%lo(brainpoolP512r1_b)
	li	a4,64
	lui	a3,%hi(brainpoolP512r1_a)
	addi	a3,a3,%lo(brainpoolP512r1_a)
	li	a2,64
	lui	a1,%hi(brainpoolP512r1_p)
	addi	a1,a1,%lo(brainpoolP512r1_p)
	lw	a0,-20(s0)
	call	ecp_group_load
	mv	a5,a0
	j	.L67
.L58:
	.loc 1 4791 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p255)
	addi	a4,a4,%lo(ecp_mod_p255)
	sw	a4,72(a5)
	.loc 1 4792 20
	lw	a0,-20(s0)
	call	ecp_use_curve25519
	mv	a5,a0
	j	.L67
.L53:
	.loc 1 4797 23
	lw	a5,-20(s0)
	lui	a4,%hi(ecp_mod_p448)
	addi	a4,a4,%lo(ecp_mod_p448)
	sw	a4,72(a5)
	.loc 1 4798 20
	lw	a0,-20(s0)
	call	ecp_use_curve448
	mv	a5,a0
	j	.L67
.L54:
	.loc 1 4802 21
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 4803 20
	li	a5,-20480
	addi	a5,a5,384
.L67:
	.loc 1 4805 1
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
.LFE43:
	.size	mbedtls_ecp_group_load, .-mbedtls_ecp_group_load
	.section	.text.add64,"ax",@progbits
	.align	1
	.type	add64, @function
add64:
.LFB44:
	.loc 1 4833 1
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
	.loc 1 4835 22
	sw	zero,-24(s0)
	.loc 1 4836 12
	sb	zero,-17(s0)
	.loc 1 4836 5
	j	.L69
.L70:
	.loc 1 4837 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4837 14
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 4837 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4837 30
	lw	a4,-24(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 4837 22
	sw	a5,-24(s0)
	.loc 1 4838 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4838 17
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 4838 14
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 4838 29
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4838 36
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 4838 34
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 4838 25
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 4836 52 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 4836 59 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 4836 66 discriminator 3
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
.L69:
	.loc 1 4836 19 discriminator 1
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L70
	.loc 1 4840 5
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 1 4840 12
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 4841 1
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
.LFE44:
	.size	add64, .-add64
	.section	.text.carry64,"ax",@progbits
	.align	1
	.type	carry64, @function
carry64:
.LFB45:
	.loc 1 4845 1
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
	.loc 1 4847 12
	sb	zero,-17(s0)
	.loc 1 4847 5
	j	.L72
.L73:
	.loc 1 4848 9
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4848 17
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 4848 14
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 4849 19
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4849 26
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 4849 24
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 4849 16
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 4847 52 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 4847 59 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
.L72:
	.loc 1 4847 19 discriminator 1
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L73
	.loc 1 4851 1
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
.LFE45:
	.size	carry64, .-carry64
	.section	.text.ecp_mod_p192,"ax",@progbits
	.align	1
	.type	ecp_mod_p192, @function
ecp_mod_p192:
.LFB46:
	.loc 1 4863 1
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
	.loc 1 4864 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 4865 22
	sw	zero,-32(s0)
	.loc 1 4869 22
	li	a1,12
	lw	a0,-36(s0)
	call	mbedtls_mpi_grow
	sw	a0,-24(s0)
	.loc 1 4869 13 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L80
	.loc 1 4871 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 4872 16
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	.loc 1 4872 13
	slli	a5,a5,2
	.loc 1 4872 9
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 4874 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4874 5
	addi	a5,a5,24
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4874 72 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4874 62 discriminator 1
	addi	a5,a5,40
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4874 121 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 4874 154 discriminator 2
	addi	a5,s0,-32
	mv	a1,a5
	lw	a0,-20(s0)
	call	carry64
	.loc 1 4875 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4875 5
	addi	a5,a5,24
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4875 72 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4875 62 discriminator 1
	addi	a5,a5,32
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4875 129 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4875 119 discriminator 2
	addi	a5,a5,40
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4875 178 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 4875 211 discriminator 3
	addi	a5,s0,-32
	mv	a1,a5
	lw	a0,-20(s0)
	call	carry64
	.loc 1 4876 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4876 5
	addi	a5,a5,32
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4876 72 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 4876 62 discriminator 1
	addi	a5,a5,40
	addi	a4,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	add64
	.loc 1 4876 121 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 4876 157 discriminator 2
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 4876 168
	j	.L77
.L78:
	.loc 1 4876 183 discriminator 5
	lw	a5,-20(s0)
	sw	zero,0(a5)
.L77:
	.loc 1 4876 173 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L78
	.loc 1 4878 1
	j	.L76
.L80:
	.loc 1 4869 84
	nop
.L76:
	.loc 1 4879 12
	lw	a5,-24(s0)
	.loc 1 4880 1
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
.LFE46:
	.size	ecp_mod_p192, .-ecp_mod_p192
	.section	.text.add32,"ax",@progbits
	.align	1
	.type	add32, @function
add32:
.LFB47:
	.loc 1 4936 1
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
	.loc 1 4937 5
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 4937 10
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 4938 5
	lw	a5,-28(s0)
	lb	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 4938 16
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 4938 21
	lw	a3,-24(s0)
	sgtu	a4,a3,a4
	andi	a4,a4,0xff
	.loc 1 4938 12
	add	a5,a5,a4
	andi	a5,a5,0xff
	slli	a4,a5,24
	srai	a4,a4,24
	lw	a5,-28(s0)
	sb	a4,0(a5)
	.loc 1 4939 1
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
.LFE47:
	.size	add32, .-add32
	.section	.text.sub32,"ax",@progbits
	.align	1
	.type	sub32, @function
sub32:
.LFB48:
	.loc 1 4942 1
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
	.loc 1 4943 5
	lw	a5,-28(s0)
	lb	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 4943 16
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 4943 21
	lw	a3,-24(s0)
	sgtu	a4,a3,a4
	andi	a4,a4,0xff
	.loc 1 4943 12
	sub	a5,a5,a4
	andi	a5,a5,0xff
	slli	a4,a5,24
	srai	a4,a4,24
	lw	a5,-28(s0)
	sb	a4,0(a5)
	.loc 1 4944 5
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 4944 10
	lw	a5,-24(s0)
	sub	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 4945 1
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
.LFE48:
	.size	sub32, .-sub32
	.section	.text.mbedtls_ecp_fix_negative,"ax",@progbits
	.align	1
	.type	mbedtls_ecp_fix_negative, @function
mbedtls_ecp_fix_negative:
.LFB49:
	.loc 1 4982 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sb	a5,-37(s0)
	.loc 1 4988 12
	sw	zero,-20(s0)
	.loc 1 4988 5
	j	.L84
.L85:
	.loc 1 4989 44
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4989 47
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 4989 10
	lw	a5,-36(s0)
	lw	a3,0(a5)
	.loc 1 4989 13
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 4989 41
	not	a4,a4
	.loc 1 4989 17
	sw	a4,0(a5)
	.loc 1 4988 60 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L84:
	.loc 1 4988 31 discriminator 1
	lw	a5,-44(s0)
	srli	a5,a5,5
	.loc 1 4988 19 discriminator 1
	lw	a4,-20(s0)
	bleu	a4,a5,.L85
	.loc 1 4992 7
	sw	zero,-20(s0)
.L87:
	.loc 1 4994 12
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4994 15
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 4994 9
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 4995 15 discriminator 2
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 4995 20 discriminator 2
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 4995 18 discriminator 2
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 4995 29 discriminator 2
	bne	a5,zero,.L86
	.loc 1 4995 46 discriminator 1
	lw	a5,-44(s0)
	srli	a5,a5,5
	.loc 1 4995 29 discriminator 1
	lw	a4,-20(s0)
	bleu	a4,a5,.L87
.L86:
	.loc 1 4998 10
	lw	a5,-36(s0)
	li	a4,-1
	sh	a4,4(a5)
	.loc 1 5002 47
	lb	a5,-37(s0)
	.loc 1 5002 22
	neg	a5,a5
	sw	a5,-24(s0)
	.loc 1 5008 6
	lw	a5,-36(s0)
	lw	a3,0(a5)
	.loc 1 5008 15
	lw	a5,-44(s0)
	srli	a5,a5,3
	.loc 1 5008 9
	andi	a4,a5,-4
	add	a4,a3,a4
	lw	a3,0(a4)
	.loc 1 5008 6
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 5008 9
	andi	a5,a5,-4
	add	a5,a4,a5
	.loc 1 5008 47
	lw	a4,-24(s0)
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 5009 1
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
.LFE49:
	.size	mbedtls_ecp_fix_negative, .-mbedtls_ecp_fix_negative
	.section	.text.ecp_mod_p224,"ax",@progbits
	.align	1
	.type	ecp_mod_p224, @function
ecp_mod_p224:
.LFB50:
	.loc 1 5016 1
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
	.loc 1 5017 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 5017 36
	sb	zero,-30(s0)
	.loc 1 5017 68
	sw	zero,-20(s0)
	.loc 1 5017 75
	li	a5,224
	sw	a5,-28(s0)
	.loc 1 5017 106
	li	a1,15
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-24(s0)
	.loc 1 5017 97 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L107
	.loc 1 5017 219 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5017 222 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5017 216 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5019 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5019 21
	addi	a5,a5,28
	.loc 1 5019 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5019 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5019 48 discriminator 1
	addi	a5,a5,44
	.loc 1 5019 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5019 61 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5019 64 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5019 68 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5019 77 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5019 88 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5019 91 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5019 85 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5019 100 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5019 107 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5019 115 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L91
	.loc 1 5019 136 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5019 124 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L92
.L91:
	.loc 1 5019 151 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L92:
	.loc 1 5020 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5020 21
	addi	a5,a5,32
	.loc 1 5020 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5020 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5020 48 discriminator 1
	addi	a5,a5,48
	.loc 1 5020 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5020 61 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5020 64 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5020 68 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5020 77 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5020 88 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5020 91 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5020 85 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5020 100 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5020 107 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5020 115 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L93
	.loc 1 5020 136 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5020 124 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L94
.L93:
	.loc 1 5020 151 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L94:
	.loc 1 5021 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5021 21
	addi	a5,a5,36
	.loc 1 5021 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5021 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5021 48 discriminator 1
	addi	a5,a5,52
	.loc 1 5021 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5021 61 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5021 64 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5021 68 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5021 77 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5021 88 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5021 91 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5021 85 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5021 100 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5021 107 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5021 115 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L95
	.loc 1 5021 136 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5021 124 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L96
.L95:
	.loc 1 5021 151 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L96:
	.loc 1 5022 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5022 21
	addi	a5,a5,40
	.loc 1 5022 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5022 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5022 49 discriminator 1
	addi	a5,a5,28
	.loc 1 5022 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5022 73 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5022 76 discriminator 2
	addi	a5,a5,44
	.loc 1 5022 60 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5022 89 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5022 92 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5022 96 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5022 105 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5022 116 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5022 119 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5022 113 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5022 128 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5022 135 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5022 143 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L97
	.loc 1 5022 164 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5022 152 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L98
.L97:
	.loc 1 5022 179 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L98:
	.loc 1 5023 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5023 21
	addi	a5,a5,44
	.loc 1 5023 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5023 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5023 49 discriminator 1
	addi	a5,a5,32
	.loc 1 5023 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5023 73 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5023 76 discriminator 2
	addi	a5,a5,48
	.loc 1 5023 60 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5023 89 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5023 92 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5023 96 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5023 105 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5023 116 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5023 119 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5023 113 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5023 128 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5023 135 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5023 143 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L99
	.loc 1 5023 164 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5023 152 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L100
.L99:
	.loc 1 5023 179 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L100:
	.loc 1 5024 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5024 21
	addi	a5,a5,48
	.loc 1 5024 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5024 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5024 49 discriminator 1
	addi	a5,a5,36
	.loc 1 5024 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5024 73 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5024 76 discriminator 2
	addi	a5,a5,52
	.loc 1 5024 60 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5024 89 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5024 92 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5024 96 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5024 105 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5024 116 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5024 119 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5024 113 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5024 128 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5024 135 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5024 143 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L101
	.loc 1 5024 164 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5024 152 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L102
.L101:
	.loc 1 5024 179 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L102:
	.loc 1 5025 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5025 21
	addi	a5,a5,52
	.loc 1 5025 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5025 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5025 49 discriminator 1
	addi	a5,a5,40
	.loc 1 5025 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5025 62 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5025 65 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5025 69 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5025 78 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5025 98 discriminator 2
	lb	a5,-30(s0)
	mv	a4,a5
	slli	a5,a4,24
	srai	a5,a5,24
	bge	a5,zero,.L103
	li	a4,0
.L103:
	slli	a5,a4,24
	srai	a5,a5,24
	.loc 1 5025 86 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5025 104 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5025 107 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5025 111 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5025 123 discriminator 2
	sw	zero,-36(s0)
	.loc 1 5025 134
	j	.L104
.L105:
	.loc 1 5025 150 discriminator 5
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5025 153 discriminator 5
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5025 157 discriminator 5
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L104:
	.loc 1 5025 139 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5025 142 discriminator 3
	lw	a5,-52(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5025 139 discriminator 3
	lw	a5,-20(s0)
	bltu	a5,a4,.L105
	.loc 1 5025 173 discriminator 6
	lb	a5,-30(s0)
	.loc 1 5025 170 discriminator 6
	bge	a5,zero,.L108
	.loc 1 5025 178 discriminator 7
	lb	a5,-30(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_ecp_fix_negative
	j	.L90
.L107:
	.loc 1 5017 185
	nop
	j	.L90
.L108:
	.loc 1 5027 1
	nop
.L90:
	.loc 1 5028 12
	lw	a5,-24(s0)
	.loc 1 5029 1
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
.LFE50:
	.size	ecp_mod_p224, .-ecp_mod_p224
	.section	.text.ecp_mod_p256,"ax",@progbits
	.align	1
	.type	ecp_mod_p256, @function
ecp_mod_p256:
.LFB51:
	.loc 1 5037 1
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
	.loc 1 5038 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 5038 36
	sb	zero,-30(s0)
	.loc 1 5038 68
	sw	zero,-20(s0)
	.loc 1 5038 75
	li	a5,256
	sw	a5,-28(s0)
	.loc 1 5038 106
	li	a1,17
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-24(s0)
	.loc 1 5038 97 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L130
	.loc 1 5038 219 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5038 222 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5038 216 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5040 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5040 21
	addi	a5,a5,32
	.loc 1 5040 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5040 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5040 48 discriminator 1
	addi	a5,a5,36
	.loc 1 5040 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5041 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5041 21
	addi	a5,a5,44
	.loc 1 5041 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5041 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5041 49 discriminator 1
	addi	a5,a5,48
	.loc 1 5041 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5041 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5041 77 discriminator 2
	addi	a5,a5,52
	.loc 1 5041 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5041 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5041 105 discriminator 3
	addi	a5,a5,56
	.loc 1 5041 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5041 118 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5041 121 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5041 125 discriminator 4
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5041 134 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5041 145 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5041 148 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5041 142 discriminator 4
	sw	a5,-36(s0)
	.loc 1 5041 157 discriminator 4
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5041 164 discriminator 4
	sb	zero,-30(s0)
	.loc 1 5041 172 discriminator 4
	lb	a5,-29(s0)
	bge	a5,zero,.L112
	.loc 1 5041 193 discriminator 5
	lb	a5,-29(s0)
	.loc 1 5041 181 discriminator 5
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L113
.L112:
	.loc 1 5041 208 discriminator 6
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L113:
	.loc 1 5043 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5043 21
	addi	a5,a5,36
	.loc 1 5043 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5043 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5043 48 discriminator 1
	addi	a5,a5,40
	.loc 1 5043 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5044 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5044 21
	addi	a5,a5,48
	.loc 1 5044 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5044 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5044 49 discriminator 1
	addi	a5,a5,52
	.loc 1 5044 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5044 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5044 77 discriminator 2
	addi	a5,a5,56
	.loc 1 5044 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5044 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5044 105 discriminator 3
	addi	a5,a5,60
	.loc 1 5044 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5044 118 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5044 121 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5044 125 discriminator 4
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5044 134 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5044 145 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5044 148 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5044 142 discriminator 4
	sw	a5,-36(s0)
	.loc 1 5044 157 discriminator 4
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5044 164 discriminator 4
	sb	zero,-30(s0)
	.loc 1 5044 172 discriminator 4
	lb	a5,-29(s0)
	bge	a5,zero,.L114
	.loc 1 5044 193 discriminator 5
	lb	a5,-29(s0)
	.loc 1 5044 181 discriminator 5
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L115
.L114:
	.loc 1 5044 208 discriminator 6
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L115:
	.loc 1 5046 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5046 21
	addi	a5,a5,40
	.loc 1 5046 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5046 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5046 49 discriminator 1
	addi	a5,a5,44
	.loc 1 5046 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5047 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5047 21
	addi	a5,a5,52
	.loc 1 5047 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5047 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5047 49 discriminator 1
	addi	a5,a5,56
	.loc 1 5047 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5047 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5047 77 discriminator 2
	addi	a5,a5,60
	.loc 1 5047 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5047 90 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5047 93 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5047 97 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5047 106 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5047 117 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5047 120 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5047 114 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5047 129 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5047 136 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5047 144 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L116
	.loc 1 5047 165 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5047 153 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L117
.L116:
	.loc 1 5047 180 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L117:
	.loc 1 5049 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5049 21
	addi	a5,a5,44
	.loc 1 5049 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5049 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5049 49 discriminator 1
	addi	a5,a5,44
	.loc 1 5049 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5049 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5049 77 discriminator 2
	addi	a5,a5,48
	.loc 1 5049 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5049 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5049 105 discriminator 3
	addi	a5,a5,48
	.loc 1 5049 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5049 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5049 133 discriminator 4
	addi	a5,a5,52
	.loc 1 5049 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5050 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5050 21
	addi	a5,a5,60
	.loc 1 5050 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5050 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5050 49 discriminator 1
	addi	a5,a5,32
	.loc 1 5050 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5050 73 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5050 76 discriminator 2
	addi	a5,a5,36
	.loc 1 5050 60 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5050 88 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5050 91 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5050 95 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5050 104 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5050 115 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5050 118 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5050 112 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5050 127 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5050 134 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5050 142 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L118
	.loc 1 5050 163 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5050 151 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L119
.L118:
	.loc 1 5050 178 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L119:
	.loc 1 5052 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5052 21
	addi	a5,a5,48
	.loc 1 5052 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5052 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5052 49 discriminator 1
	addi	a5,a5,48
	.loc 1 5052 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5052 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5052 77 discriminator 2
	addi	a5,a5,52
	.loc 1 5052 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5052 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5052 105 discriminator 3
	addi	a5,a5,52
	.loc 1 5052 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5052 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5052 133 discriminator 4
	addi	a5,a5,56
	.loc 1 5052 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5053 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5053 21
	addi	a5,a5,36
	.loc 1 5053 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5053 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5053 48 discriminator 1
	addi	a5,a5,40
	.loc 1 5053 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5053 61 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5053 64 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5053 68 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5053 77 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5053 88 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5053 91 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5053 85 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5053 100 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5053 107 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5053 115 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L120
	.loc 1 5053 136 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5053 124 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L121
.L120:
	.loc 1 5053 151 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L121:
	.loc 1 5055 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5055 21
	addi	a5,a5,52
	.loc 1 5055 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5055 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5055 49 discriminator 1
	addi	a5,a5,52
	.loc 1 5055 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5055 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5055 77 discriminator 2
	addi	a5,a5,56
	.loc 1 5055 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5055 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5055 105 discriminator 3
	addi	a5,a5,56
	.loc 1 5055 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5055 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5055 133 discriminator 4
	addi	a5,a5,60
	.loc 1 5055 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5056 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5056 21
	addi	a5,a5,40
	.loc 1 5056 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5056 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5056 49 discriminator 1
	addi	a5,a5,44
	.loc 1 5056 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5056 62 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5056 65 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5056 69 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5056 78 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5056 89 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5056 92 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5056 86 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5056 101 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5056 108 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5056 116 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L122
	.loc 1 5056 137 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5056 125 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L123
.L122:
	.loc 1 5056 152 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L123:
	.loc 1 5058 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5058 21
	addi	a5,a5,56
	.loc 1 5058 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5058 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5058 49 discriminator 1
	addi	a5,a5,56
	.loc 1 5058 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5058 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5058 77 discriminator 2
	addi	a5,a5,60
	.loc 1 5058 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5058 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5058 105 discriminator 3
	addi	a5,a5,60
	.loc 1 5058 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5058 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5058 133 discriminator 4
	addi	a5,a5,56
	.loc 1 5058 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5058 158 discriminator 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5058 161 discriminator 5
	addi	a5,a5,52
	.loc 1 5058 145 discriminator 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5059 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5059 21
	addi	a5,a5,32
	.loc 1 5059 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5059 45 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5059 48 discriminator 1
	addi	a5,a5,36
	.loc 1 5059 32 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5059 60 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5059 63 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5059 67 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5059 76 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5059 87 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5059 90 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5059 84 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5059 99 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5059 106 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5059 114 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L124
	.loc 1 5059 135 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5059 123 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L125
.L124:
	.loc 1 5059 150 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L125:
	.loc 1 5061 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5061 21
	addi	a5,a5,60
	.loc 1 5061 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5061 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5061 49 discriminator 1
	addi	a5,a5,60
	.loc 1 5061 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5061 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5061 77 discriminator 2
	addi	a5,a5,60
	.loc 1 5061 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5061 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5061 105 discriminator 3
	addi	a5,a5,32
	.loc 1 5061 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5062 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5062 21
	addi	a5,a5,40
	.loc 1 5062 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5062 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5062 49 discriminator 1
	addi	a5,a5,44
	.loc 1 5062 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5062 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5062 77 discriminator 2
	addi	a5,a5,48
	.loc 1 5062 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5062 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5062 105 discriminator 3
	addi	a5,a5,52
	.loc 1 5062 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5062 118 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5062 121 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5062 125 discriminator 4
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5062 134 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5062 154 discriminator 4
	lb	a5,-30(s0)
	mv	a4,a5
	slli	a5,a4,24
	srai	a5,a5,24
	bge	a5,zero,.L126
	li	a4,0
.L126:
	slli	a5,a4,24
	srai	a5,a5,24
	.loc 1 5062 142 discriminator 4
	sw	a5,-36(s0)
	.loc 1 5062 160 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5062 163 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5062 167 discriminator 4
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5062 179 discriminator 4
	sw	zero,-36(s0)
	.loc 1 5062 190
	j	.L127
.L128:
	.loc 1 5062 206 discriminator 7
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5062 209 discriminator 7
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5062 213 discriminator 7
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L127:
	.loc 1 5062 195 discriminator 5
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5062 198 discriminator 5
	lw	a5,-52(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5062 195 discriminator 5
	lw	a5,-20(s0)
	bltu	a5,a4,.L128
	.loc 1 5062 229 discriminator 8
	lb	a5,-30(s0)
	.loc 1 5062 226 discriminator 8
	bge	a5,zero,.L131
	.loc 1 5062 234 discriminator 9
	lb	a5,-30(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_ecp_fix_negative
	j	.L111
.L130:
	.loc 1 5038 185
	nop
	j	.L111
.L131:
	.loc 1 5064 1
	nop
.L111:
	.loc 1 5065 12
	lw	a5,-24(s0)
	.loc 1 5066 1
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
.LFE51:
	.size	ecp_mod_p256, .-ecp_mod_p256
	.section	.text.ecp_mod_p384,"ax",@progbits
	.align	1
	.type	ecp_mod_p384, @function
ecp_mod_p384:
.LFB52:
	.loc 1 5074 1
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
	.loc 1 5075 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 5075 36
	sb	zero,-30(s0)
	.loc 1 5075 68
	sw	zero,-20(s0)
	.loc 1 5075 75
	li	a5,384
	sw	a5,-28(s0)
	.loc 1 5075 106
	li	a1,25
	lw	a0,-52(s0)
	call	mbedtls_mpi_grow
	sw	a0,-24(s0)
	.loc 1 5075 97 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L161
	.loc 1 5075 219 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5075 222 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5075 216 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5077 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5077 21
	addi	a5,a5,48
	.loc 1 5077 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5077 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5077 49 discriminator 1
	addi	a5,a5,84
	.loc 1 5077 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5077 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5077 77 discriminator 2
	addi	a5,a5,80
	.loc 1 5077 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5078 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5078 21
	addi	a5,a5,92
	.loc 1 5078 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5078 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5078 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5078 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5078 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5078 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5078 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5078 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5078 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5078 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5078 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L135
	.loc 1 5078 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5078 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L136
.L135:
	.loc 1 5078 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L136:
	.loc 1 5080 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5080 21
	addi	a5,a5,52
	.loc 1 5080 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5080 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5080 49 discriminator 1
	addi	a5,a5,88
	.loc 1 5080 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5080 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5080 77 discriminator 2
	addi	a5,a5,92
	.loc 1 5080 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5081 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5081 21
	addi	a5,a5,48
	.loc 1 5081 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5081 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5081 49 discriminator 1
	addi	a5,a5,80
	.loc 1 5081 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5081 62 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5081 65 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5081 69 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5081 78 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5081 89 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5081 92 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5081 86 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5081 101 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5081 108 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5081 116 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L137
	.loc 1 5081 137 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5081 125 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L138
.L137:
	.loc 1 5081 152 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L138:
	.loc 1 5083 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5083 21
	addi	a5,a5,56
	.loc 1 5083 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5083 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5083 49 discriminator 1
	addi	a5,a5,92
	.loc 1 5083 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5084 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5084 21
	addi	a5,a5,52
	.loc 1 5084 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5084 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5084 49 discriminator 1
	addi	a5,a5,84
	.loc 1 5084 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5084 62 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5084 65 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5084 69 discriminator 2
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5084 78 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5084 89 discriminator 2
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5084 92 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5084 86 discriminator 2
	sw	a5,-36(s0)
	.loc 1 5084 101 discriminator 2
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5084 108 discriminator 2
	sb	zero,-30(s0)
	.loc 1 5084 116 discriminator 2
	lb	a5,-29(s0)
	bge	a5,zero,.L139
	.loc 1 5084 137 discriminator 3
	lb	a5,-29(s0)
	.loc 1 5084 125 discriminator 3
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L140
.L139:
	.loc 1 5084 152 discriminator 4
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L140:
	.loc 1 5086 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5086 21
	addi	a5,a5,60
	.loc 1 5086 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5086 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5086 49 discriminator 1
	addi	a5,a5,48
	.loc 1 5086 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5086 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5086 77 discriminator 2
	addi	a5,a5,80
	.loc 1 5086 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5086 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5086 105 discriminator 3
	addi	a5,a5,84
	.loc 1 5086 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5087 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5087 21
	addi	a5,a5,56
	.loc 1 5087 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5087 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5087 49 discriminator 1
	addi	a5,a5,88
	.loc 1 5087 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5087 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5087 77 discriminator 2
	addi	a5,a5,92
	.loc 1 5087 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5087 90 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5087 93 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5087 97 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5087 106 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5087 117 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5087 120 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5087 114 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5087 129 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5087 136 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5087 144 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L141
	.loc 1 5087 165 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5087 153 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L142
.L141:
	.loc 1 5087 180 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L142:
	.loc 1 5089 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 21
	addi	a5,a5,84
	.loc 1 5089 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5089 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 49 discriminator 1
	addi	a5,a5,84
	.loc 1 5089 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5089 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 77 discriminator 2
	addi	a5,a5,64
	.loc 1 5089 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5089 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 105 discriminator 3
	addi	a5,a5,52
	.loc 1 5089 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5089 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 133 discriminator 4
	addi	a5,a5,48
	.loc 1 5089 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5089 158 discriminator 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 161 discriminator 5
	addi	a5,a5,80
	.loc 1 5089 145 discriminator 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5089 186 discriminator 6
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5089 189 discriminator 6
	addi	a5,a5,88
	.loc 1 5089 173 discriminator 6
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5090 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5090 21
	addi	a5,a5,60
	.loc 1 5090 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5090 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5090 49 discriminator 1
	addi	a5,a5,92
	.loc 1 5090 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5090 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5090 77 discriminator 2
	addi	a5,a5,92
	.loc 1 5090 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5090 90 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5090 93 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5090 97 discriminator 3
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5090 106 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5090 117 discriminator 3
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5090 120 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5090 114 discriminator 3
	sw	a5,-36(s0)
	.loc 1 5090 129 discriminator 3
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5090 136 discriminator 3
	sb	zero,-30(s0)
	.loc 1 5090 144 discriminator 3
	lb	a5,-29(s0)
	bge	a5,zero,.L143
	.loc 1 5090 165 discriminator 4
	lb	a5,-29(s0)
	.loc 1 5090 153 discriminator 4
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L144
.L143:
	.loc 1 5090 180 discriminator 5
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L144:
	.loc 1 5092 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 21
	addi	a5,a5,88
	.loc 1 5092 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5092 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 49 discriminator 1
	addi	a5,a5,88
	.loc 1 5092 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5092 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 77 discriminator 2
	addi	a5,a5,68
	.loc 1 5092 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5092 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 105 discriminator 3
	addi	a5,a5,56
	.loc 1 5092 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5092 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 133 discriminator 4
	addi	a5,a5,52
	.loc 1 5092 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5092 158 discriminator 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 161 discriminator 5
	addi	a5,a5,84
	.loc 1 5092 145 discriminator 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5092 186 discriminator 6
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5092 189 discriminator 6
	addi	a5,a5,92
	.loc 1 5092 173 discriminator 6
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5093 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5093 21
	addi	a5,a5,64
	.loc 1 5093 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5093 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5093 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5093 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5093 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5093 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5093 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5093 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5093 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5093 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5093 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L145
	.loc 1 5093 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5093 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L146
.L145:
	.loc 1 5093 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L146:
	.loc 1 5095 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5095 21
	addi	a5,a5,92
	.loc 1 5095 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5095 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5095 49 discriminator 1
	addi	a5,a5,92
	.loc 1 5095 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5095 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5095 77 discriminator 2
	addi	a5,a5,72
	.loc 1 5095 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5095 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5095 105 discriminator 3
	addi	a5,a5,60
	.loc 1 5095 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5095 130 discriminator 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5095 133 discriminator 4
	addi	a5,a5,56
	.loc 1 5095 117 discriminator 4
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5095 158 discriminator 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5095 161 discriminator 5
	addi	a5,a5,88
	.loc 1 5095 145 discriminator 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5096 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5096 21
	addi	a5,a5,68
	.loc 1 5096 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5096 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5096 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5096 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5096 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5096 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5096 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5096 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5096 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5096 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5096 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L147
	.loc 1 5096 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5096 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L148
.L147:
	.loc 1 5096 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L148:
	.loc 1 5098 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5098 21
	addi	a5,a5,76
	.loc 1 5098 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5098 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5098 49 discriminator 1
	addi	a5,a5,64
	.loc 1 5098 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5098 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5098 77 discriminator 2
	addi	a5,a5,60
	.loc 1 5098 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5098 102 discriminator 3
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5098 105 discriminator 3
	addi	a5,a5,92
	.loc 1 5098 89 discriminator 3
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5099 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5099 21
	addi	a5,a5,72
	.loc 1 5099 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5099 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5099 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5099 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5099 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5099 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5099 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5099 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5099 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5099 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5099 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L149
	.loc 1 5099 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5099 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L150
.L149:
	.loc 1 5099 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L150:
	.loc 1 5101 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5101 21
	addi	a5,a5,80
	.loc 1 5101 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5101 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5101 49 discriminator 1
	addi	a5,a5,68
	.loc 1 5101 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5101 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5101 77 discriminator 2
	addi	a5,a5,64
	.loc 1 5101 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5102 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5102 21
	addi	a5,a5,76
	.loc 1 5102 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5102 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5102 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5102 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5102 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5102 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5102 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5102 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5102 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5102 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5102 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L151
	.loc 1 5102 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5102 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L152
.L151:
	.loc 1 5102 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L152:
	.loc 1 5104 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5104 21
	addi	a5,a5,84
	.loc 1 5104 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5104 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5104 49 discriminator 1
	addi	a5,a5,72
	.loc 1 5104 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5104 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5104 77 discriminator 2
	addi	a5,a5,68
	.loc 1 5104 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5105 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5105 21
	addi	a5,a5,80
	.loc 1 5105 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5105 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5105 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5105 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5105 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5105 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5105 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5105 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5105 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5105 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5105 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L153
	.loc 1 5105 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5105 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L154
.L153:
	.loc 1 5105 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L154:
	.loc 1 5107 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5107 21
	addi	a5,a5,88
	.loc 1 5107 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5107 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5107 49 discriminator 1
	addi	a5,a5,76
	.loc 1 5107 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5107 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5107 77 discriminator 2
	addi	a5,a5,72
	.loc 1 5107 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5108 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5108 21
	addi	a5,a5,84
	.loc 1 5108 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5108 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5108 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5108 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5108 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5108 61 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5108 64 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 5108 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5108 73 discriminator 1
	lbu	a5,-30(s0)
	sb	a5,-29(s0)
	.loc 1 5108 80 discriminator 1
	sb	zero,-30(s0)
	.loc 1 5108 88 discriminator 1
	lb	a5,-29(s0)
	bge	a5,zero,.L155
	.loc 1 5108 109 discriminator 2
	lb	a5,-29(s0)
	.loc 1 5108 97 discriminator 2
	neg	a4,a5
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	j	.L156
.L155:
	.loc 1 5108 124 discriminator 3
	lb	a4,-29(s0)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
.L156:
	.loc 1 5110 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5110 21
	addi	a5,a5,92
	.loc 1 5110 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5110 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5110 49 discriminator 1
	addi	a5,a5,80
	.loc 1 5110 33 discriminator 1
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5110 74 discriminator 2
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5110 77 discriminator 2
	addi	a5,a5,76
	.loc 1 5110 61 discriminator 2
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	add32
	.loc 1 5111 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 5111 21
	addi	a5,a5,88
	.loc 1 5111 5
	lw	a4,0(a5)
	addi	a3,s0,-30
	addi	a5,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	sub32
	.loc 1 5111 34 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5111 37 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5111 41 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5111 50 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5111 70 discriminator 1
	lb	a5,-30(s0)
	mv	a4,a5
	slli	a5,a4,24
	srai	a5,a5,24
	bge	a5,zero,.L157
	li	a4,0
.L157:
	slli	a5,a4,24
	srai	a5,a5,24
	.loc 1 5111 58 discriminator 1
	sw	a5,-36(s0)
	.loc 1 5111 76 discriminator 1
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5111 79 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5111 83 discriminator 1
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 5111 95 discriminator 1
	sw	zero,-36(s0)
	.loc 1 5111 106
	j	.L158
.L159:
	.loc 1 5111 122 discriminator 4
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 5111 125 discriminator 4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5111 129 discriminator 4
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L158:
	.loc 1 5111 111 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 5111 114 discriminator 2
	lw	a5,-52(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5111 111 discriminator 2
	lw	a5,-20(s0)
	bltu	a5,a4,.L159
	.loc 1 5111 145 discriminator 5
	lb	a5,-30(s0)
	.loc 1 5111 142 discriminator 5
	bge	a5,zero,.L162
	.loc 1 5111 150 discriminator 6
	lb	a5,-30(s0)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_ecp_fix_negative
	j	.L134
.L161:
	.loc 1 5075 185
	nop
	j	.L134
.L162:
	.loc 1 5113 1
	nop
.L134:
	.loc 1 5114 12
	lw	a5,-24(s0)
	.loc 1 5115 1
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
	.size	ecp_mod_p384, .-ecp_mod_p384
	.section	.text.ecp_mod_p521,"ax",@progbits
	.align	1
	.type	ecp_mod_p521, @function
ecp_mod_p521:
.LFB53:
	.loc 1 5147 1
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
	.loc 1 5148 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 5156 10
	lw	a5,-116(s0)
	lhu	a4,6(a5)
	.loc 1 5156 8
	li	a5,16
	bgtu	a4,a5,.L164
	.loc 1 5157 16
	li	a5,0
	j	.L171
.L164:
	.loc 1 5161 9
	li	a5,1
	sh	a5,-28(s0)
	.loc 1 5162 12
	lw	a5,-116(s0)
	lhu	a5,6(a5)
	.loc 1 5162 16
	addi	a5,a5,-16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5162 9
	sh	a5,-26(s0)
	.loc 1 5163 10
	lhu	a4,-26(s0)
	.loc 1 5163 8
	li	a5,18
	bleu	a4,a5,.L166
	.loc 1 5164 13
	li	a5,18
	sh	a5,-26(s0)
.L166:
	.loc 1 5166 9
	addi	a5,s0,-104
	sw	a5,-32(s0)
	.loc 1 5167 17
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 1 5167 64
	addi	a4,a5,64
	.loc 1 5167 70
	lhu	a5,-26(s0)
	.loc 1 5167 73
	slli	a3,a5,2
	.loc 1 5167 5
	addi	a5,s0,-104
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 5168 22
	addi	a5,s0,-32
	li	a1,9
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 1 5168 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L172
	.loc 1 5171 6
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 1 5171 9
	addi	a5,a5,64
	lw	a4,0(a5)
	.loc 1 5171 6
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 1 5171 9
	addi	a5,a5,64
	.loc 1 5171 56
	andi	a4,a4,511
	sw	a4,0(a5)
	.loc 1 5172 12
	li	a5,17
	sw	a5,-24(s0)
	.loc 1 5172 5
	j	.L169
.L170:
	.loc 1 5173 10
	lw	a5,-116(s0)
	lw	a4,0(a5)
	.loc 1 5173 13
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5173 17
	sw	zero,0(a5)
	.loc 1 5172 67 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L169:
	.loc 1 5172 61 discriminator 1
	lw	a5,-116(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5172 58 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L170
	.loc 1 5177 22
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-116(s0)
	lw	a0,-116(s0)
	call	mbedtls_mpi_add_abs
	sw	a0,-20(s0)
	.loc 1 5179 1
	j	.L168
.L172:
	.loc 1 5168 92
	nop
.L168:
	.loc 1 5180 12
	lw	a5,-20(s0)
.L171:
	.loc 1 5181 1
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
.LFE53:
	.size	ecp_mod_p521, .-ecp_mod_p521
	.section	.text.ecp_mod_p255,"ax",@progbits
	.align	1
	.type	ecp_mod_p255, @function
ecp_mod_p255:
.LFB54:
	.loc 1 5199 1
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
	.loc 1 5203 38
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 5203 30
	addi	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 5204 26
	lw	a5,-68(s0)
	lhu	a5,6(a5)
	.loc 1 5204 18
	addi	a5,a5,-8
	sw	a5,-24(s0)
	.loc 1 5205 10
	lw	a5,-68(s0)
	lhu	a4,6(a5)
	.loc 1 5205 8
	li	a5,8
	bgtu	a4,a5,.L174
	.loc 1 5206 16
	li	a5,0
	j	.L177
.L174:
	.loc 1 5208 8
	lw	a4,-24(s0)
	li	a5,8
	bleu	a4,a5,.L176
	.loc 1 5209 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L177
.L176:
	.loc 1 5213 47
	lw	a5,-24(s0)
	slli	a4,a5,2
	.loc 1 5213 5
	addi	a5,s0,-56
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 5214 46
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 1 5214 5
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 5217 5
	lw	a5,-68(s0)
	lw	a5,0(a5)
	addi	a2,s0,-56
	li	a4,38
	lw	a3,-24(s0)
	li	a1,9
	mv	a0,a5
	call	mbedtls_mpi_core_mla
	.loc 1 5221 12
	li	a5,0
.L177:
	.loc 1 5222 1
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
.LFE54:
	.size	ecp_mod_p255, .-ecp_mod_p255
	.section	.text.ecp_mod_p448,"ax",@progbits
	.align	1
	.type	ecp_mod_p448, @function
ecp_mod_p448:
.LFB55:
	.loc 1 5249 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	.loc 1 5250 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 5255 10
	lw	a5,-164(s0)
	lhu	a4,6(a5)
	.loc 1 5255 8
	li	a5,14
	bgtu	a4,a5,.L179
	.loc 1 5256 16
	li	a5,0
	j	.L192
.L179:
	.loc 1 5260 9
	li	a5,1
	sh	a5,-28(s0)
	.loc 1 5261 12
	lw	a5,-164(s0)
	lhu	a5,6(a5)
	.loc 1 5261 16
	addi	a5,a5,-14
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5261 9
	sh	a5,-26(s0)
	.loc 1 5262 10
	lhu	a4,-26(s0)
	.loc 1 5262 8
	li	a5,14
	bleu	a4,a5,.L181
	.loc 1 5264 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L192
.L181:
	.loc 1 5266 9
	addi	a5,s0,-100
	sw	a5,-32(s0)
	.loc 1 5267 5
	addi	a5,s0,-100
	li	a2,60
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 5268 17
	lw	a5,-164(s0)
	lw	a5,0(a5)
	.loc 1 5268 21
	addi	a4,a5,56
	.loc 1 5268 62
	lhu	a5,-26(s0)
	.loc 1 5268 65
	slli	a3,a5,2
	.loc 1 5268 5
	addi	a5,s0,-100
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 5271 12
	li	a5,14
	sw	a5,-24(s0)
	.loc 1 5271 5
	j	.L182
.L183:
	.loc 1 5272 10
	lw	a5,-164(s0)
	lw	a4,0(a5)
	.loc 1 5272 13
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5272 17
	sw	zero,0(a5)
	.loc 1 5271 63 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L182:
	.loc 1 5271 57 discriminator 1
	lw	a5,-164(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5271 54 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L183
	.loc 1 5276 22
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-164(s0)
	lw	a0,-164(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 1 5276 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L193
	.loc 1 5279 7
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 1 5280 9
	addi	a5,s0,-156
	sw	a5,-40(s0)
	.loc 1 5281 5
	addi	a4,s0,-100
	addi	a5,s0,-156
	li	a2,56
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 5282 22
	addi	a5,s0,-40
	li	a1,224
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 1 5282 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L194
	.loc 1 5283 22
	addi	a5,s0,-40
	mv	a2,a5
	lw	a1,-164(s0)
	lw	a0,-164(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 1 5283 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L195
	.loc 1 5289 12
	li	a5,7
	sw	a5,-24(s0)
	.loc 1 5289 5
	j	.L188
.L189:
	.loc 1 5290 15
	lw	a4,-24(s0)
	addi	a5,s0,-100
	slli	a4,a4,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 5289 101 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L188:
	.loc 1 5289 97 discriminator 1
	lhu	a5,-26(s0)
	mv	a4,a5
	.loc 1 5289 94 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L189
	.loc 1 5292 22
	addi	a3,s0,-40
	addi	a4,s0,-32
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 1 5292 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L196
	.loc 1 5293 9
	li	a5,15
	sh	a5,-26(s0)
	.loc 1 5294 22
	addi	a5,s0,-32
	li	a1,224
	mv	a0,a5
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 1 5294 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L197
	.loc 1 5295 22
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-164(s0)
	lw	a0,-164(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 1 5297 1
	j	.L185
.L193:
	.loc 1 5276 60
	nop
	j	.L185
.L194:
	.loc 1 5282 59
	nop
	j	.L185
.L195:
	.loc 1 5283 60
	nop
	j	.L185
.L196:
	.loc 1 5292 62
	nop
	j	.L185
.L197:
	.loc 1 5294 59
	nop
.L185:
	.loc 1 5298 12
	lw	a5,-20(s0)
.L192:
	.loc 1 5299 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE55:
	.size	ecp_mod_p448, .-ecp_mod_p448
	.section	.text.ecp_mod_koblitz,"ax",@progbits
	.align	1
	.type	ecp_mod_koblitz, @function
ecp_mod_koblitz:
.LFB56:
	.loc 1 5316 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	.loc 1 5317 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 5322 10
	lw	a5,-100(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5322 8
	lw	a5,-108(s0)
	bleu	a5,a4,.L199
	.loc 1 5323 16
	li	a5,0
	j	.L215
.L199:
	.loc 1 5327 9
	li	a5,1
	sh	a5,-36(s0)
	.loc 1 5328 9
	lw	a5,-104(s0)
	sw	a5,-40(s0)
	.loc 1 5329 9
	li	a5,2
	sh	a5,-34(s0)
	.loc 1 5332 9
	li	a5,1
	sh	a5,-28(s0)
	.loc 1 5333 9
	addi	a5,s0,-84
	sw	a5,-32(s0)
	.loc 1 5336 30
	lw	a5,-100(s0)
	lhu	a4,6(a5)
	.loc 1 5336 34
	lw	a5,-112(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lw	a5,-108(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5336 11
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5336 9
	sh	a5,-26(s0)
	.loc 1 5337 10
	lhu	a5,-26(s0)
	mv	a3,a5
	.loc 1 5337 23
	lw	a4,-108(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	.loc 1 5337 8
	bleu	a3,a5,.L201
	.loc 1 5338 15
	lw	a5,-108(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-112(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5338 13
	sh	a5,-26(s0)
.L201:
	.loc 1 5340 5
	addi	a5,s0,-84
	li	a2,44
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 5341 17
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5341 31
	lw	a3,-108(s0)
	lw	a5,-112(s0)
	sub	a5,a3,a5
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 1 5341 42
	lhu	a5,-26(s0)
	.loc 1 5341 45
	slli	a3,a5,2
	.loc 1 5341 5
	addi	a5,s0,-84
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 5342 8
	lw	a5,-116(s0)
	beq	a5,zero,.L202
	.loc 1 5343 26
	addi	a5,s0,-32
	lw	a1,-116(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 1 5343 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L216
.L202:
	.loc 1 5345 6
	lhu	a4,-26(s0)
	.loc 1 5345 13
	lhu	a5,-34(s0)
	.loc 1 5345 9
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-26(s0)
	.loc 1 5348 8
	lw	a5,-120(s0)
	beq	a5,zero,.L204
	.loc 1 5349 10
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5349 13
	lw	a3,-108(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 5349 10
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5349 13
	lw	a2,-108(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5349 27
	lw	a4,-120(s0)
	and	a4,a3,a4
	sw	a4,0(a5)
.L204:
	.loc 1 5351 12
	lw	a5,-108(s0)
	sw	a5,-24(s0)
	.loc 1 5351 5
	j	.L205
.L206:
	.loc 1 5352 10
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5352 13
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5352 17
	sw	zero,0(a5)
	.loc 1 5351 34 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L205:
	.loc 1 5351 28 discriminator 1
	lw	a5,-100(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5351 25 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L206
	.loc 1 5356 22
	addi	a3,s0,-40
	addi	a4,s0,-32
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 5356 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L217
	.loc 1 5357 22
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-100(s0)
	lw	a0,-100(s0)
	call	mbedtls_mpi_add_abs
	sw	a0,-20(s0)
	.loc 1 5357 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L218
	.loc 1 5362 30
	lw	a5,-100(s0)
	lhu	a4,6(a5)
	.loc 1 5362 34
	lw	a5,-112(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lw	a5,-108(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sub	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5362 11
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5362 9
	sh	a5,-26(s0)
	.loc 1 5363 10
	lhu	a5,-26(s0)
	mv	a3,a5
	.loc 1 5363 23
	lw	a4,-108(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	.loc 1 5363 8
	bleu	a3,a5,.L209
	.loc 1 5364 15
	lw	a5,-108(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-112(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 5364 13
	sh	a5,-26(s0)
.L209:
	.loc 1 5366 5
	addi	a5,s0,-84
	li	a2,44
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 5367 17
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5367 31
	lw	a3,-108(s0)
	lw	a5,-112(s0)
	sub	a5,a3,a5
	slli	a5,a5,2
	add	a4,a4,a5
	.loc 1 5367 42
	lhu	a5,-26(s0)
	.loc 1 5367 45
	slli	a3,a5,2
	.loc 1 5367 5
	addi	a5,s0,-84
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 5368 8
	lw	a5,-116(s0)
	beq	a5,zero,.L210
	.loc 1 5369 26
	addi	a5,s0,-32
	lw	a1,-116(s0)
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 1 5369 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L219
.L210:
	.loc 1 5371 6
	lhu	a4,-26(s0)
	.loc 1 5371 13
	lhu	a5,-34(s0)
	.loc 1 5371 9
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-26(s0)
	.loc 1 5374 8
	lw	a5,-120(s0)
	beq	a5,zero,.L211
	.loc 1 5375 10
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5375 13
	lw	a3,-108(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 5375 10
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5375 13
	lw	a2,-108(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5375 27
	lw	a4,-120(s0)
	and	a4,a3,a4
	sw	a4,0(a5)
.L211:
	.loc 1 5377 12
	lw	a5,-108(s0)
	sw	a5,-24(s0)
	.loc 1 5377 5
	j	.L212
.L213:
	.loc 1 5378 10
	lw	a5,-100(s0)
	lw	a4,0(a5)
	.loc 1 5378 13
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 5378 17
	sw	zero,0(a5)
	.loc 1 5377 34 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L212:
	.loc 1 5377 28 discriminator 1
	lw	a5,-100(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 5377 25 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L213
	.loc 1 5382 22
	addi	a3,s0,-40
	addi	a4,s0,-32
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 1 5382 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L220
	.loc 1 5383 22
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-100(s0)
	lw	a0,-100(s0)
	call	mbedtls_mpi_add_abs
	sw	a0,-20(s0)
	.loc 1 5385 1
	j	.L203
.L216:
	.loc 1 5343 65
	nop
	j	.L203
.L217:
	.loc 1 5356 62
	nop
	j	.L203
.L218:
	.loc 1 5357 60
	nop
	j	.L203
.L219:
	.loc 1 5369 65
	nop
	j	.L203
.L220:
	.loc 1 5382 62
	nop
.L203:
	.loc 1 5386 12
	lw	a5,-20(s0)
.L215:
	.loc 1 5387 1
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
.LFE56:
	.size	ecp_mod_koblitz, .-ecp_mod_koblitz
	.section	.text.ecp_mod_p192k1,"ax",@progbits
	.align	1
	.type	ecp_mod_p192k1, @function
ecp_mod_p192k1:
.LFB57:
	.loc 1 5398 1
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
	.loc 1 5404 12
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,6
	lui	a1,%hi(Rp.2)
	addi	a1,a1,%lo(Rp.2)
	lw	a0,-20(s0)
	call	ecp_mod_koblitz
	mv	a5,a0
	.loc 1 5406 1
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
.LFE57:
	.size	ecp_mod_p192k1, .-ecp_mod_p192k1
	.section	.text.ecp_mod_p224k1,"ax",@progbits
	.align	1
	.type	ecp_mod_p224k1, @function
ecp_mod_p224k1:
.LFB58:
	.loc 1 5415 1
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
	.loc 1 5424 12
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,7
	lui	a1,%hi(Rp.1)
	addi	a1,a1,%lo(Rp.1)
	lw	a0,-20(s0)
	call	ecp_mod_koblitz
	mv	a5,a0
	.loc 1 5427 1
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
.LFE58:
	.size	ecp_mod_p224k1, .-ecp_mod_p224k1
	.section	.text.ecp_mod_p256k1,"ax",@progbits
	.align	1
	.type	ecp_mod_p256k1, @function
ecp_mod_p256k1:
.LFB59:
	.loc 1 5437 1
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
	.loc 1 5442 12
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,8
	lui	a1,%hi(Rp.0)
	addi	a1,a1,%lo(Rp.0)
	lw	a0,-20(s0)
	call	ecp_mod_koblitz
	mv	a5,a0
	.loc 1 5444 1
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
.LFE59:
	.size	ecp_mod_p256k1, .-ecp_mod_p256k1
	.section	.srodata.Rp.2,"a"
	.align	2
	.type	Rp.2, @object
	.size	Rp.2, 8
Rp.2:
	.word	4553
	.word	1
	.section	.srodata.Rp.1,"a"
	.align	2
	.type	Rp.1, @object
	.size	Rp.1, 8
Rp.1:
	.word	6803
	.word	1
	.section	.srodata.Rp.0,"a"
	.align	2
	.type	Rp.0, @object
	.size	Rp.0, 8
Rp.0:
	.word	977
	.word	1
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_core.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35ce
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF654
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0xf
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x16
	.4byte	0xa6
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0x16
	.4byte	0xb4
	.uleb128 0x1d
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa9
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4
	.byte	0xd0
	.4byte	0x10f
	.uleb128 0xd
	.string	"p"
	.byte	0x4
	.byte	0xd5
	.byte	0x17
	.4byte	0x10f
	.byte	0
	.uleb128 0xd
	.string	"s"
	.byte	0x4
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x4
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	0xd0
	.uleb128 0x6
	.4byte	0x10f
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x4
	.byte	0xf0
	.byte	0x1
	.4byte	0xe1
	.uleb128 0x6
	.4byte	0x119
	.uleb128 0x1e
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.byte	0x66
	.byte	0xe
	.4byte	0x18d
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x5
	.byte	0x75
	.byte	0x3
	.4byte	0x12a
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x18
	.byte	0x5
	.byte	0x9e
	.4byte	0x1c7
	.uleb128 0xd
	.string	"X"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x119
	.byte	0
	.uleb128 0xd
	.string	"Y"
	.byte	0x5
	.byte	0xa0
	.byte	0x11
	.4byte	0x119
	.byte	0x8
	.uleb128 0xd
	.string	"Z"
	.byte	0x5
	.byte	0xa1
	.byte	0x11
	.4byte	0x119
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x5
	.byte	0xa3
	.byte	0x1
	.4byte	0x199
	.uleb128 0x6
	.4byte	0x1c7
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x60
	.byte	0x5
	.byte	0xe9
	.4byte	0x295
	.uleb128 0xd
	.string	"id"
	.byte	0x5
	.byte	0xea
	.byte	0x1a
	.4byte	0x18d
	.byte	0
	.uleb128 0xd
	.string	"P"
	.byte	0x5
	.byte	0xeb
	.byte	0x11
	.4byte	0x119
	.byte	0x4
	.uleb128 0xd
	.string	"A"
	.byte	0x5
	.byte	0xec
	.byte	0x11
	.4byte	0x119
	.byte	0xc
	.uleb128 0xd
	.string	"B"
	.byte	0x5
	.byte	0xf1
	.byte	0x11
	.4byte	0x119
	.byte	0x14
	.uleb128 0xd
	.string	"G"
	.byte	0x5
	.byte	0xf3
	.byte	0x17
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0xd
	.string	"N"
	.byte	0x5
	.byte	0xf4
	.byte	0x11
	.4byte	0x119
	.byte	0x34
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0xd
	.string	"h"
	.byte	0x5
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0xfc
	.byte	0xa
	.4byte	0x2a9
	.byte	0x48
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0xfe
	.byte	0xa
	.4byte	0x2c7
	.byte	0x4c
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0xff
	.byte	0xa
	.4byte	0x2c7
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF41
	.2byte	0x100
	.byte	0xb
	.4byte	0xa6
	.byte	0x54
	.uleb128 0x1f
	.string	"T"
	.byte	0x5
	.2byte	0x101
	.byte	0x18
	.4byte	0x2c2
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF42
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x18
	.4byte	0x68
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2a4
	.byte	0
	.uleb128 0xc
	.4byte	0x119
	.uleb128 0xc
	.4byte	0x295
	.uleb128 0x18
	.4byte	0x68
	.4byte	0x2c2
	.uleb128 0x2
	.4byte	0x2c2
	.uleb128 0x2
	.4byte	0xa6
	.byte	0
	.uleb128 0xc
	.4byte	0x1c7
	.uleb128 0xc
	.4byte	0x2ae
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x104
	.byte	0x1
	.4byte	0x1d8
	.uleb128 0xc
	.4byte	0xdc
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x2ee
	.uleb128 0x8
	.4byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x2de
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x31
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_one
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x314
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x304
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x3d
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_p
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x42
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_b
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x47
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_gx
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x4c
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_gy
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x51
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_n
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x57
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_0_X
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x5c
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_0_Y
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x61
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_1_X
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x66
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_1_Y
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x6b
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_2_X
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x70
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_2_Y
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x75
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_3_X
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x7a
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_3_Y
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x7f
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_4_X
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x84
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_4_Y
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x89
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_5_X
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x8e
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_5_Y
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x93
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_6_X
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x98
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_6_Y
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x9d
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_7_X
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0xa2
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_7_Y
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xa7
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_8_X
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xac
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_8_Y
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xb1
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_9_X
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xb6
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_9_Y
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xbb
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_10_X
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xc0
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_10_Y
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xc5
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_11_X
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xca
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_11_Y
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xcf
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_12_X
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xd4
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_12_Y
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xd9
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_13_X
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0xde
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_13_Y
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xe3
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_14_X
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xe8
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_14_Y
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xed
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_15_X
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xf2
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T_15_Y
	.uleb128 0x7
	.4byte	0x1d3
	.4byte	0x59e
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x58e
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xf7
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192r1_T
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x5c4
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x5b4
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x112
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_p
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x5eb
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x5db
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x118
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_b
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x11e
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_gx
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x124
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_gy
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x12a
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_n
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x131
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF88
	.2byte	0x137
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x13d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x143
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF91
	.2byte	0x149
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF92
	.2byte	0x14f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF93
	.2byte	0x155
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x15b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF95
	.2byte	0x161
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF96
	.2byte	0x167
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x16d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x173
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x179
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x17f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF101
	.2byte	0x185
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF102
	.2byte	0x18b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF103
	.2byte	0x191
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF104
	.2byte	0x197
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF105
	.2byte	0x19d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF106
	.2byte	0x1a3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF107
	.2byte	0x1a9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF108
	.2byte	0x1af
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF109
	.2byte	0x1b5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x1bb
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF111
	.2byte	0x1c1
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF112
	.2byte	0x1c7
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF113
	.2byte	0x1cd
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x1d3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF115
	.2byte	0x1d9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF116
	.2byte	0x1df
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x1e5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF118
	.2byte	0x1eb
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF119
	.2byte	0x1f1
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224r1_T
	.uleb128 0x1
	.4byte	.LASF120
	.2byte	0x20c
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_p
	.uleb128 0x1
	.4byte	.LASF121
	.2byte	0x212
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_b
	.uleb128 0x1
	.4byte	.LASF122
	.2byte	0x218
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_gx
	.uleb128 0x1
	.4byte	.LASF123
	.2byte	0x21e
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_gy
	.uleb128 0x1
	.4byte	.LASF124
	.2byte	0x224
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_n
	.uleb128 0x1
	.4byte	.LASF125
	.2byte	0x22b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF126
	.2byte	0x231
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF127
	.2byte	0x237
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF128
	.2byte	0x23d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF129
	.2byte	0x243
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF130
	.2byte	0x249
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF131
	.2byte	0x24f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF132
	.2byte	0x255
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF133
	.2byte	0x25b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF134
	.2byte	0x261
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF135
	.2byte	0x267
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF136
	.2byte	0x26d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF137
	.2byte	0x273
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF138
	.2byte	0x279
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x27f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x285
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF141
	.2byte	0x28b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF142
	.2byte	0x291
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF143
	.2byte	0x297
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF144
	.2byte	0x29d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x2a3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF146
	.2byte	0x2a9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF147
	.2byte	0x2af
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF148
	.2byte	0x2b5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x2bb
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF150
	.2byte	0x2c1
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF151
	.2byte	0x2c7
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x2cd
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF153
	.2byte	0x2d3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF154
	.2byte	0x2d9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF155
	.2byte	0x2df
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF156
	.2byte	0x2e5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF157
	.2byte	0x2eb
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256r1_T
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0xb46
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0xb36
	.uleb128 0x1
	.4byte	.LASF158
	.2byte	0x307
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_p
	.uleb128 0x1
	.4byte	.LASF159
	.2byte	0x30f
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_b
	.uleb128 0x1
	.4byte	.LASF160
	.2byte	0x317
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_gx
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x31f
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_gy
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x327
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_n
	.uleb128 0x1
	.4byte	.LASF163
	.2byte	0x330
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF164
	.2byte	0x338
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0x340
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF166
	.2byte	0x348
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0x350
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF168
	.2byte	0x358
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF169
	.2byte	0x360
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x368
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF171
	.2byte	0x370
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF172
	.2byte	0x378
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF173
	.2byte	0x380
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF174
	.2byte	0x388
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF175
	.2byte	0x390
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF176
	.2byte	0x398
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF177
	.2byte	0x3a0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF178
	.2byte	0x3a8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF179
	.2byte	0x3b0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF180
	.2byte	0x3b8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF181
	.2byte	0x3c0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF182
	.2byte	0x3c8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF183
	.2byte	0x3d0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF184
	.2byte	0x3d8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF185
	.2byte	0x3e0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF186
	.2byte	0x3e8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF187
	.2byte	0x3f0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF188
	.2byte	0x3f8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF189
	.2byte	0x400
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF190
	.2byte	0x408
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF191
	.2byte	0x410
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF192
	.2byte	0x418
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF193
	.2byte	0x420
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF194
	.2byte	0x428
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF195
	.2byte	0x430
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_16_X
	.uleb128 0x1
	.4byte	.LASF196
	.2byte	0x438
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_16_Y
	.uleb128 0x1
	.4byte	.LASF197
	.2byte	0x440
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_17_X
	.uleb128 0x1
	.4byte	.LASF198
	.2byte	0x448
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_17_Y
	.uleb128 0x1
	.4byte	.LASF199
	.2byte	0x450
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_18_X
	.uleb128 0x1
	.4byte	.LASF200
	.2byte	0x458
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_18_Y
	.uleb128 0x1
	.4byte	.LASF201
	.2byte	0x460
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_19_X
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x468
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_19_Y
	.uleb128 0x1
	.4byte	.LASF203
	.2byte	0x470
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_20_X
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x478
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_20_Y
	.uleb128 0x1
	.4byte	.LASF205
	.2byte	0x480
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_21_X
	.uleb128 0x1
	.4byte	.LASF206
	.2byte	0x488
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_21_Y
	.uleb128 0x1
	.4byte	.LASF207
	.2byte	0x490
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_22_X
	.uleb128 0x1
	.4byte	.LASF208
	.2byte	0x498
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_22_Y
	.uleb128 0x1
	.4byte	.LASF209
	.2byte	0x4a0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_23_X
	.uleb128 0x1
	.4byte	.LASF210
	.2byte	0x4a8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_23_Y
	.uleb128 0x1
	.4byte	.LASF211
	.2byte	0x4b0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_24_X
	.uleb128 0x1
	.4byte	.LASF212
	.2byte	0x4b8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_24_Y
	.uleb128 0x1
	.4byte	.LASF213
	.2byte	0x4c0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_25_X
	.uleb128 0x1
	.4byte	.LASF214
	.2byte	0x4c8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_25_Y
	.uleb128 0x1
	.4byte	.LASF215
	.2byte	0x4d0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_26_X
	.uleb128 0x1
	.4byte	.LASF216
	.2byte	0x4d8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_26_Y
	.uleb128 0x1
	.4byte	.LASF217
	.2byte	0x4e0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_27_X
	.uleb128 0x1
	.4byte	.LASF218
	.2byte	0x4e8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_27_Y
	.uleb128 0x1
	.4byte	.LASF219
	.2byte	0x4f0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_28_X
	.uleb128 0x1
	.4byte	.LASF220
	.2byte	0x4f8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_28_Y
	.uleb128 0x1
	.4byte	.LASF221
	.2byte	0x500
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_29_X
	.uleb128 0x1
	.4byte	.LASF222
	.2byte	0x508
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_29_Y
	.uleb128 0x1
	.4byte	.LASF223
	.2byte	0x510
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_30_X
	.uleb128 0x1
	.4byte	.LASF224
	.2byte	0x518
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_30_Y
	.uleb128 0x1
	.4byte	.LASF225
	.2byte	0x520
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_31_X
	.uleb128 0x1
	.4byte	.LASF226
	.2byte	0x528
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T_31_Y
	.uleb128 0x7
	.4byte	0x1d3
	.4byte	0x1035
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	0x1025
	.uleb128 0x1
	.4byte	.LASF227
	.2byte	0x530
	.byte	0x20
	.4byte	0x1035
	.uleb128 0x5
	.byte	0x3
	.4byte	secp384r1_T
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x105c
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x104c
	.uleb128 0x1
	.4byte	.LASF228
	.2byte	0x55c
	.byte	0x1f
	.4byte	0x105c
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_p
	.uleb128 0x1
	.4byte	.LASF229
	.2byte	0x567
	.byte	0x1f
	.4byte	0x105c
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_b
	.uleb128 0x1
	.4byte	.LASF230
	.2byte	0x572
	.byte	0x1f
	.4byte	0x105c
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_gx
	.uleb128 0x1
	.4byte	.LASF231
	.2byte	0x57d
	.byte	0x1f
	.4byte	0x105c
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_gy
	.uleb128 0x1
	.4byte	.LASF232
	.2byte	0x588
	.byte	0x1f
	.4byte	0x105c
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_n
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x10cb
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x10bb
	.uleb128 0x1
	.4byte	.LASF233
	.2byte	0x594
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF234
	.2byte	0x59f
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF235
	.2byte	0x5aa
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF236
	.2byte	0x5b5
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF237
	.2byte	0x5c0
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF238
	.2byte	0x5cb
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF239
	.2byte	0x5d6
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF240
	.2byte	0x5e1
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF241
	.2byte	0x5ec
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF242
	.2byte	0x5f7
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF243
	.2byte	0x602
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF244
	.2byte	0x60d
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF245
	.2byte	0x618
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF246
	.2byte	0x623
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF247
	.2byte	0x62e
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF248
	.2byte	0x639
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF249
	.2byte	0x644
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF250
	.2byte	0x64f
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF251
	.2byte	0x65a
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF252
	.2byte	0x665
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF253
	.2byte	0x670
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF254
	.2byte	0x67b
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF255
	.2byte	0x686
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x691
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF257
	.2byte	0x69c
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF258
	.2byte	0x6a7
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF259
	.2byte	0x6b2
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF260
	.2byte	0x6bd
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF261
	.2byte	0x6c8
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF262
	.2byte	0x6d3
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF263
	.2byte	0x6de
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF264
	.2byte	0x6e9
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF265
	.2byte	0x6f4
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_16_X
	.uleb128 0x1
	.4byte	.LASF266
	.2byte	0x6ff
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_16_Y
	.uleb128 0x1
	.4byte	.LASF267
	.2byte	0x70a
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_17_X
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x715
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_17_Y
	.uleb128 0x1
	.4byte	.LASF269
	.2byte	0x720
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_18_X
	.uleb128 0x1
	.4byte	.LASF270
	.2byte	0x72b
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_18_Y
	.uleb128 0x1
	.4byte	.LASF271
	.2byte	0x736
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_19_X
	.uleb128 0x1
	.4byte	.LASF272
	.2byte	0x741
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_19_Y
	.uleb128 0x1
	.4byte	.LASF273
	.2byte	0x74c
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_20_X
	.uleb128 0x1
	.4byte	.LASF274
	.2byte	0x757
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_20_Y
	.uleb128 0x1
	.4byte	.LASF275
	.2byte	0x762
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_21_X
	.uleb128 0x1
	.4byte	.LASF276
	.2byte	0x76d
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_21_Y
	.uleb128 0x1
	.4byte	.LASF277
	.2byte	0x778
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_22_X
	.uleb128 0x1
	.4byte	.LASF278
	.2byte	0x783
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_22_Y
	.uleb128 0x1
	.4byte	.LASF279
	.2byte	0x78e
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_23_X
	.uleb128 0x1
	.4byte	.LASF280
	.2byte	0x799
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_23_Y
	.uleb128 0x1
	.4byte	.LASF281
	.2byte	0x7a4
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_24_X
	.uleb128 0x1
	.4byte	.LASF282
	.2byte	0x7af
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_24_Y
	.uleb128 0x1
	.4byte	.LASF283
	.2byte	0x7ba
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_25_X
	.uleb128 0x1
	.4byte	.LASF284
	.2byte	0x7c5
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_25_Y
	.uleb128 0x1
	.4byte	.LASF285
	.2byte	0x7d0
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_26_X
	.uleb128 0x1
	.4byte	.LASF286
	.2byte	0x7db
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_26_Y
	.uleb128 0x1
	.4byte	.LASF287
	.2byte	0x7e6
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_27_X
	.uleb128 0x1
	.4byte	.LASF288
	.2byte	0x7f1
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_27_Y
	.uleb128 0x1
	.4byte	.LASF289
	.2byte	0x7fc
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_28_X
	.uleb128 0x1
	.4byte	.LASF290
	.2byte	0x807
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_28_Y
	.uleb128 0x1
	.4byte	.LASF291
	.2byte	0x812
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_29_X
	.uleb128 0x1
	.4byte	.LASF292
	.2byte	0x81d
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_29_Y
	.uleb128 0x1
	.4byte	.LASF293
	.2byte	0x828
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_30_X
	.uleb128 0x1
	.4byte	.LASF294
	.2byte	0x833
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_30_Y
	.uleb128 0x1
	.4byte	.LASF295
	.2byte	0x83e
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_31_X
	.uleb128 0x1
	.4byte	.LASF296
	.2byte	0x849
	.byte	0x1f
	.4byte	0x10cb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T_31_Y
	.uleb128 0x1
	.4byte	.LASF297
	.2byte	0x854
	.byte	0x20
	.4byte	0x1035
	.uleb128 0x5
	.byte	0x3
	.4byte	secp521r1_T
	.uleb128 0x1
	.4byte	.LASF298
	.2byte	0x87c
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_p
	.uleb128 0x1
	.4byte	.LASF299
	.2byte	0x881
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_a
	.uleb128 0x1
	.4byte	.LASF300
	.2byte	0x884
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_b
	.uleb128 0x1
	.4byte	.LASF301
	.2byte	0x887
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_gx
	.uleb128 0x1
	.4byte	.LASF302
	.2byte	0x88c
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_gy
	.uleb128 0x1
	.4byte	.LASF303
	.2byte	0x891
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_n
	.uleb128 0x1
	.4byte	.LASF304
	.2byte	0x898
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_0_X
	.uleb128 0x1
	.4byte	.LASF305
	.2byte	0x89d
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF306
	.2byte	0x8a2
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_1_X
	.uleb128 0x1
	.4byte	.LASF307
	.2byte	0x8a7
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF308
	.2byte	0x8ac
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_2_X
	.uleb128 0x1
	.4byte	.LASF309
	.2byte	0x8b1
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF310
	.2byte	0x8b6
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_3_X
	.uleb128 0x1
	.4byte	.LASF311
	.2byte	0x8bb
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF312
	.2byte	0x8c0
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_4_X
	.uleb128 0x1
	.4byte	.LASF313
	.2byte	0x8c5
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF314
	.2byte	0x8ca
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_5_X
	.uleb128 0x1
	.4byte	.LASF315
	.2byte	0x8cf
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF316
	.2byte	0x8d4
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_6_X
	.uleb128 0x1
	.4byte	.LASF317
	.2byte	0x8d9
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF318
	.2byte	0x8de
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_7_X
	.uleb128 0x1
	.4byte	.LASF319
	.2byte	0x8e3
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF320
	.2byte	0x8e8
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_8_X
	.uleb128 0x1
	.4byte	.LASF321
	.2byte	0x8ed
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF322
	.2byte	0x8f2
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_9_X
	.uleb128 0x1
	.4byte	.LASF323
	.2byte	0x8f7
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF324
	.2byte	0x8fc
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_10_X
	.uleb128 0x1
	.4byte	.LASF325
	.2byte	0x901
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF326
	.2byte	0x906
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_11_X
	.uleb128 0x1
	.4byte	.LASF327
	.2byte	0x90b
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF328
	.2byte	0x910
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_12_X
	.uleb128 0x1
	.4byte	.LASF329
	.2byte	0x915
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF330
	.2byte	0x91a
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_13_X
	.uleb128 0x1
	.4byte	.LASF331
	.2byte	0x91f
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF332
	.2byte	0x924
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_14_X
	.uleb128 0x1
	.4byte	.LASF333
	.2byte	0x929
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF334
	.2byte	0x92e
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_15_X
	.uleb128 0x1
	.4byte	.LASF335
	.2byte	0x933
	.byte	0x1f
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF336
	.2byte	0x938
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	secp192k1_T
	.uleb128 0x1
	.4byte	.LASF337
	.2byte	0x951
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_p
	.uleb128 0x1
	.4byte	.LASF338
	.2byte	0x957
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_a
	.uleb128 0x1
	.4byte	.LASF339
	.2byte	0x95a
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_b
	.uleb128 0x1
	.4byte	.LASF340
	.2byte	0x95d
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_gx
	.uleb128 0x1
	.4byte	.LASF341
	.2byte	0x963
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_gy
	.uleb128 0x1
	.4byte	.LASF342
	.2byte	0x969
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_n
	.uleb128 0x1
	.4byte	.LASF343
	.2byte	0x971
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_0_X
	.uleb128 0x1
	.4byte	.LASF344
	.2byte	0x977
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF345
	.2byte	0x97d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_1_X
	.uleb128 0x1
	.4byte	.LASF346
	.2byte	0x983
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF347
	.2byte	0x989
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_2_X
	.uleb128 0x1
	.4byte	.LASF348
	.2byte	0x98f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF349
	.2byte	0x995
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_3_X
	.uleb128 0x1
	.4byte	.LASF350
	.2byte	0x99b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF351
	.2byte	0x9a1
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_4_X
	.uleb128 0x1
	.4byte	.LASF352
	.2byte	0x9a7
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF353
	.2byte	0x9ad
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_5_X
	.uleb128 0x1
	.4byte	.LASF354
	.2byte	0x9b3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF355
	.2byte	0x9b9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_6_X
	.uleb128 0x1
	.4byte	.LASF356
	.2byte	0x9bf
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF357
	.2byte	0x9c5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_7_X
	.uleb128 0x1
	.4byte	.LASF358
	.2byte	0x9cb
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF359
	.2byte	0x9d1
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_8_X
	.uleb128 0x1
	.4byte	.LASF360
	.2byte	0x9d7
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF361
	.2byte	0x9dd
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_9_X
	.uleb128 0x1
	.4byte	.LASF362
	.2byte	0x9e3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF363
	.2byte	0x9e9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_10_X
	.uleb128 0x1
	.4byte	.LASF364
	.2byte	0x9ef
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF365
	.2byte	0x9f5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_11_X
	.uleb128 0x1
	.4byte	.LASF366
	.2byte	0x9fb
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF367
	.2byte	0xa01
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_12_X
	.uleb128 0x1
	.4byte	.LASF368
	.2byte	0xa07
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF369
	.2byte	0xa0d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_13_X
	.uleb128 0x1
	.4byte	.LASF370
	.2byte	0xa13
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF371
	.2byte	0xa19
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_14_X
	.uleb128 0x1
	.4byte	.LASF372
	.2byte	0xa1f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF373
	.2byte	0xa25
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_15_X
	.uleb128 0x1
	.4byte	.LASF374
	.2byte	0xa2b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF375
	.2byte	0xa31
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	secp224k1_T
	.uleb128 0x1
	.4byte	.LASF376
	.2byte	0xa49
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_p
	.uleb128 0x1
	.4byte	.LASF377
	.2byte	0xa4f
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_a
	.uleb128 0x1
	.4byte	.LASF378
	.2byte	0xa52
	.byte	0x1f
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_b
	.uleb128 0x1
	.4byte	.LASF379
	.2byte	0xa55
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_gx
	.uleb128 0x1
	.4byte	.LASF380
	.2byte	0xa5b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_gy
	.uleb128 0x1
	.4byte	.LASF381
	.2byte	0xa61
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_n
	.uleb128 0x1
	.4byte	.LASF382
	.2byte	0xa69
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_0_X
	.uleb128 0x1
	.4byte	.LASF383
	.2byte	0xa6f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF384
	.2byte	0xa75
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_1_X
	.uleb128 0x1
	.4byte	.LASF385
	.2byte	0xa7b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF386
	.2byte	0xa81
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_2_X
	.uleb128 0x1
	.4byte	.LASF387
	.2byte	0xa87
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF388
	.2byte	0xa8d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_3_X
	.uleb128 0x1
	.4byte	.LASF389
	.2byte	0xa93
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF390
	.2byte	0xa99
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_4_X
	.uleb128 0x1
	.4byte	.LASF391
	.2byte	0xa9f
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF392
	.2byte	0xaa5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_5_X
	.uleb128 0x1
	.4byte	.LASF393
	.2byte	0xaab
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF394
	.2byte	0xab1
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_6_X
	.uleb128 0x1
	.4byte	.LASF395
	.2byte	0xab7
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF396
	.2byte	0xabd
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_7_X
	.uleb128 0x1
	.4byte	.LASF397
	.2byte	0xac3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF398
	.2byte	0xac9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_8_X
	.uleb128 0x1
	.4byte	.LASF399
	.2byte	0xacf
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF400
	.2byte	0xad5
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_9_X
	.uleb128 0x1
	.4byte	.LASF401
	.2byte	0xadb
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF402
	.2byte	0xae1
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_10_X
	.uleb128 0x1
	.4byte	.LASF403
	.2byte	0xae7
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF404
	.2byte	0xaed
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_11_X
	.uleb128 0x1
	.4byte	.LASF405
	.2byte	0xaf3
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF406
	.2byte	0xaf9
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_12_X
	.uleb128 0x1
	.4byte	.LASF407
	.2byte	0xaff
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF408
	.2byte	0xb05
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_13_X
	.uleb128 0x1
	.4byte	.LASF409
	.2byte	0xb0b
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF410
	.2byte	0xb11
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_14_X
	.uleb128 0x1
	.4byte	.LASF411
	.2byte	0xb17
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF412
	.2byte	0xb1d
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_15_X
	.uleb128 0x1
	.4byte	.LASF413
	.2byte	0xb23
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF414
	.2byte	0xb29
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	secp256k1_T
	.uleb128 0x1
	.4byte	.LASF415
	.2byte	0xb44
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_p
	.uleb128 0x1
	.4byte	.LASF416
	.2byte	0xb4a
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_a
	.uleb128 0x1
	.4byte	.LASF417
	.2byte	0xb50
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_b
	.uleb128 0x1
	.4byte	.LASF418
	.2byte	0xb56
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_gx
	.uleb128 0x1
	.4byte	.LASF419
	.2byte	0xb5c
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_gy
	.uleb128 0x1
	.4byte	.LASF420
	.2byte	0xb62
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_n
	.uleb128 0x1
	.4byte	.LASF421
	.2byte	0xb6a
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF422
	.2byte	0xb70
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF423
	.2byte	0xb76
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF424
	.2byte	0xb7c
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF425
	.2byte	0xb82
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF426
	.2byte	0xb88
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF427
	.2byte	0xb8e
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF428
	.2byte	0xb94
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF429
	.2byte	0xb9a
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF430
	.2byte	0xba0
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF431
	.2byte	0xba6
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF432
	.2byte	0xbac
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF433
	.2byte	0xbb2
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF434
	.2byte	0xbb8
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF435
	.2byte	0xbbe
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF436
	.2byte	0xbc4
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF437
	.2byte	0xbca
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF438
	.2byte	0xbd0
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF439
	.2byte	0xbd6
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF440
	.2byte	0xbdc
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF441
	.2byte	0xbe2
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF442
	.2byte	0xbe8
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF443
	.2byte	0xbee
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF444
	.2byte	0xbf4
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF445
	.2byte	0xbfa
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF446
	.2byte	0xc00
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF447
	.2byte	0xc06
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF448
	.2byte	0xc0c
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF449
	.2byte	0xc12
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF450
	.2byte	0xc18
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF451
	.2byte	0xc1e
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF452
	.2byte	0xc24
	.byte	0x1f
	.4byte	0x5c4
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF453
	.2byte	0xc2a
	.byte	0x20
	.4byte	0x59e
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP256r1_T
	.uleb128 0x1
	.4byte	.LASF454
	.2byte	0xc46
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_p
	.uleb128 0x1
	.4byte	.LASF455
	.2byte	0xc4e
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_a
	.uleb128 0x1
	.4byte	.LASF456
	.2byte	0xc56
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_b
	.uleb128 0x1
	.4byte	.LASF457
	.2byte	0xc5e
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_gx
	.uleb128 0x1
	.4byte	.LASF458
	.2byte	0xc66
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_gy
	.uleb128 0x1
	.4byte	.LASF459
	.2byte	0xc6e
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_n
	.uleb128 0x1
	.4byte	.LASF460
	.2byte	0xc78
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF461
	.2byte	0xc80
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF462
	.2byte	0xc88
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF463
	.2byte	0xc90
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF464
	.2byte	0xc98
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF465
	.2byte	0xca0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF466
	.2byte	0xca8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF467
	.2byte	0xcb0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF468
	.2byte	0xcb8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF469
	.2byte	0xcc0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF470
	.2byte	0xcc8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF471
	.2byte	0xcd0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF472
	.2byte	0xcd8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF473
	.2byte	0xce0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF474
	.2byte	0xce8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF475
	.2byte	0xcf0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF476
	.2byte	0xcf8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF477
	.2byte	0xd00
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF478
	.2byte	0xd08
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF479
	.2byte	0xd10
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF480
	.2byte	0xd18
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF481
	.2byte	0xd20
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF482
	.2byte	0xd28
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF483
	.2byte	0xd30
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF484
	.2byte	0xd38
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF485
	.2byte	0xd40
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF486
	.2byte	0xd48
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF487
	.2byte	0xd50
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF488
	.2byte	0xd58
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF489
	.2byte	0xd60
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF490
	.2byte	0xd68
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF491
	.2byte	0xd70
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF492
	.2byte	0xd78
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_16_X
	.uleb128 0x1
	.4byte	.LASF493
	.2byte	0xd80
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_16_Y
	.uleb128 0x1
	.4byte	.LASF494
	.2byte	0xd88
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_17_X
	.uleb128 0x1
	.4byte	.LASF495
	.2byte	0xd90
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_17_Y
	.uleb128 0x1
	.4byte	.LASF496
	.2byte	0xd98
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_18_X
	.uleb128 0x1
	.4byte	.LASF497
	.2byte	0xda0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_18_Y
	.uleb128 0x1
	.4byte	.LASF498
	.2byte	0xda8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_19_X
	.uleb128 0x1
	.4byte	.LASF499
	.2byte	0xdb0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_19_Y
	.uleb128 0x1
	.4byte	.LASF500
	.2byte	0xdb8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_20_X
	.uleb128 0x1
	.4byte	.LASF501
	.2byte	0xdc0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_20_Y
	.uleb128 0x1
	.4byte	.LASF502
	.2byte	0xdc8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_21_X
	.uleb128 0x1
	.4byte	.LASF503
	.2byte	0xdd0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_21_Y
	.uleb128 0x1
	.4byte	.LASF504
	.2byte	0xdd8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_22_X
	.uleb128 0x1
	.4byte	.LASF505
	.2byte	0xde0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_22_Y
	.uleb128 0x1
	.4byte	.LASF506
	.2byte	0xde8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_23_X
	.uleb128 0x1
	.4byte	.LASF507
	.2byte	0xdf0
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_23_Y
	.uleb128 0x1
	.4byte	.LASF508
	.2byte	0xdf8
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_24_X
	.uleb128 0x1
	.4byte	.LASF509
	.2byte	0xe00
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_24_Y
	.uleb128 0x1
	.4byte	.LASF510
	.2byte	0xe08
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_25_X
	.uleb128 0x1
	.4byte	.LASF511
	.2byte	0xe10
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_25_Y
	.uleb128 0x1
	.4byte	.LASF512
	.2byte	0xe18
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_26_X
	.uleb128 0x1
	.4byte	.LASF513
	.2byte	0xe20
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_26_Y
	.uleb128 0x1
	.4byte	.LASF514
	.2byte	0xe28
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_27_X
	.uleb128 0x1
	.4byte	.LASF515
	.2byte	0xe30
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_27_Y
	.uleb128 0x1
	.4byte	.LASF516
	.2byte	0xe38
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_28_X
	.uleb128 0x1
	.4byte	.LASF517
	.2byte	0xe40
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_28_Y
	.uleb128 0x1
	.4byte	.LASF518
	.2byte	0xe48
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_29_X
	.uleb128 0x1
	.4byte	.LASF519
	.2byte	0xe50
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_29_Y
	.uleb128 0x1
	.4byte	.LASF520
	.2byte	0xe58
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_30_X
	.uleb128 0x1
	.4byte	.LASF521
	.2byte	0xe60
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_30_Y
	.uleb128 0x1
	.4byte	.LASF522
	.2byte	0xe68
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_31_X
	.uleb128 0x1
	.4byte	.LASF523
	.2byte	0xe70
	.byte	0x1f
	.4byte	0xb46
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T_31_Y
	.uleb128 0x1
	.4byte	.LASF524
	.2byte	0xe78
	.byte	0x20
	.4byte	0x1035
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP384r1_T
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x2568
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x2558
	.uleb128 0x1
	.4byte	.LASF525
	.2byte	0xea4
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_p
	.uleb128 0x1
	.4byte	.LASF526
	.2byte	0xeae
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_a
	.uleb128 0x1
	.4byte	.LASF527
	.2byte	0xeb8
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_b
	.uleb128 0x1
	.4byte	.LASF528
	.2byte	0xec2
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_gx
	.uleb128 0x1
	.4byte	.LASF529
	.2byte	0xecc
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_gy
	.uleb128 0x1
	.4byte	.LASF530
	.2byte	0xed6
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_n
	.uleb128 0x1
	.4byte	.LASF531
	.2byte	0xee2
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_0_X
	.uleb128 0x1
	.4byte	.LASF532
	.2byte	0xeec
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_0_Y
	.uleb128 0x1
	.4byte	.LASF533
	.2byte	0xef6
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_1_X
	.uleb128 0x1
	.4byte	.LASF534
	.2byte	0xf00
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_1_Y
	.uleb128 0x1
	.4byte	.LASF535
	.2byte	0xf0a
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_2_X
	.uleb128 0x1
	.4byte	.LASF536
	.2byte	0xf14
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_2_Y
	.uleb128 0x1
	.4byte	.LASF537
	.2byte	0xf1e
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_3_X
	.uleb128 0x1
	.4byte	.LASF538
	.2byte	0xf28
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_3_Y
	.uleb128 0x1
	.4byte	.LASF539
	.2byte	0xf32
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_4_X
	.uleb128 0x1
	.4byte	.LASF540
	.2byte	0xf3c
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_4_Y
	.uleb128 0x1
	.4byte	.LASF541
	.2byte	0xf46
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_5_X
	.uleb128 0x1
	.4byte	.LASF542
	.2byte	0xf50
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_5_Y
	.uleb128 0x1
	.4byte	.LASF543
	.2byte	0xf5a
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_6_X
	.uleb128 0x1
	.4byte	.LASF544
	.2byte	0xf64
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_6_Y
	.uleb128 0x1
	.4byte	.LASF545
	.2byte	0xf6e
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_7_X
	.uleb128 0x1
	.4byte	.LASF546
	.2byte	0xf78
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_7_Y
	.uleb128 0x1
	.4byte	.LASF547
	.2byte	0xf82
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_8_X
	.uleb128 0x1
	.4byte	.LASF548
	.2byte	0xf8c
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_8_Y
	.uleb128 0x1
	.4byte	.LASF549
	.2byte	0xf96
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_9_X
	.uleb128 0x1
	.4byte	.LASF550
	.2byte	0xfa0
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_9_Y
	.uleb128 0x1
	.4byte	.LASF551
	.2byte	0xfaa
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_10_X
	.uleb128 0x1
	.4byte	.LASF552
	.2byte	0xfb4
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_10_Y
	.uleb128 0x1
	.4byte	.LASF553
	.2byte	0xfbe
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_11_X
	.uleb128 0x1
	.4byte	.LASF554
	.2byte	0xfc8
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_11_Y
	.uleb128 0x1
	.4byte	.LASF555
	.2byte	0xfd2
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_12_X
	.uleb128 0x1
	.4byte	.LASF556
	.2byte	0xfdc
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_12_Y
	.uleb128 0x1
	.4byte	.LASF557
	.2byte	0xfe6
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_13_X
	.uleb128 0x1
	.4byte	.LASF558
	.2byte	0xff0
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_13_Y
	.uleb128 0x1
	.4byte	.LASF559
	.2byte	0xffa
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_14_X
	.uleb128 0x1
	.4byte	.LASF560
	.2byte	0x1004
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_14_Y
	.uleb128 0x1
	.4byte	.LASF561
	.2byte	0x100e
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_15_X
	.uleb128 0x1
	.4byte	.LASF562
	.2byte	0x1018
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_15_Y
	.uleb128 0x1
	.4byte	.LASF563
	.2byte	0x1022
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_16_X
	.uleb128 0x1
	.4byte	.LASF564
	.2byte	0x102c
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_16_Y
	.uleb128 0x1
	.4byte	.LASF565
	.2byte	0x1036
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_17_X
	.uleb128 0x1
	.4byte	.LASF566
	.2byte	0x1040
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_17_Y
	.uleb128 0x1
	.4byte	.LASF567
	.2byte	0x104a
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_18_X
	.uleb128 0x1
	.4byte	.LASF568
	.2byte	0x1054
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_18_Y
	.uleb128 0x1
	.4byte	.LASF569
	.2byte	0x105e
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_19_X
	.uleb128 0x1
	.4byte	.LASF570
	.2byte	0x1068
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_19_Y
	.uleb128 0x1
	.4byte	.LASF571
	.2byte	0x1072
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_20_X
	.uleb128 0x1
	.4byte	.LASF572
	.2byte	0x107c
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_20_Y
	.uleb128 0x1
	.4byte	.LASF573
	.2byte	0x1086
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_21_X
	.uleb128 0x1
	.4byte	.LASF574
	.2byte	0x1090
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_21_Y
	.uleb128 0x1
	.4byte	.LASF575
	.2byte	0x109a
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_22_X
	.uleb128 0x1
	.4byte	.LASF576
	.2byte	0x10a4
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_22_Y
	.uleb128 0x1
	.4byte	.LASF577
	.2byte	0x10ae
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_23_X
	.uleb128 0x1
	.4byte	.LASF578
	.2byte	0x10b8
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_23_Y
	.uleb128 0x1
	.4byte	.LASF579
	.2byte	0x10c2
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_24_X
	.uleb128 0x1
	.4byte	.LASF580
	.2byte	0x10cc
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_24_Y
	.uleb128 0x1
	.4byte	.LASF581
	.2byte	0x10d6
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_25_X
	.uleb128 0x1
	.4byte	.LASF582
	.2byte	0x10e0
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_25_Y
	.uleb128 0x1
	.4byte	.LASF583
	.2byte	0x10ea
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_26_X
	.uleb128 0x1
	.4byte	.LASF584
	.2byte	0x10f4
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_26_Y
	.uleb128 0x1
	.4byte	.LASF585
	.2byte	0x10fe
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_27_X
	.uleb128 0x1
	.4byte	.LASF586
	.2byte	0x1108
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_27_Y
	.uleb128 0x1
	.4byte	.LASF587
	.2byte	0x1112
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_28_X
	.uleb128 0x1
	.4byte	.LASF588
	.2byte	0x111c
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_28_Y
	.uleb128 0x1
	.4byte	.LASF589
	.2byte	0x1126
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_29_X
	.uleb128 0x1
	.4byte	.LASF590
	.2byte	0x1130
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_29_Y
	.uleb128 0x1
	.4byte	.LASF591
	.2byte	0x113a
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_30_X
	.uleb128 0x1
	.4byte	.LASF592
	.2byte	0x1144
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_30_Y
	.uleb128 0x1
	.4byte	.LASF593
	.2byte	0x114e
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_31_X
	.uleb128 0x1
	.4byte	.LASF594
	.2byte	0x1158
	.byte	0x1f
	.4byte	0x2568
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T_31_Y
	.uleb128 0x1
	.4byte	.LASF595
	.2byte	0x1162
	.byte	0x20
	.4byte	0x1035
	.uleb128 0x5
	.byte	0x3
	.4byte	brainpoolP512r1_T
	.uleb128 0x1
	.4byte	.LASF596
	.2byte	0x1205
	.byte	0x1f
	.4byte	0xcb
	.uleb128 0x5
	.byte	0x3
	.4byte	curve25519_a24
	.uleb128 0x7
	.4byte	0x39
	.4byte	0x2a8d
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x2a7d
	.uleb128 0x1
	.4byte	.LASF597
	.2byte	0x1206
	.byte	0x1c
	.4byte	0x2a8d
	.uleb128 0x5
	.byte	0x3
	.4byte	curve25519_part_of_n
	.uleb128 0x1
	.4byte	.LASF598
	.2byte	0x1234
	.byte	0x1f
	.4byte	0xcb
	.uleb128 0x5
	.byte	0x3
	.4byte	curve448_a24
	.uleb128 0x7
	.4byte	0x39
	.4byte	0x2ac6
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0x2ab6
	.uleb128 0x1
	.4byte	.LASF599
	.2byte	0x1235
	.byte	0x1c
	.4byte	0x2ac6
	.uleb128 0x5
	.byte	0x3
	.4byte	curve448_part_of_n
	.uleb128 0xe
	.4byte	.LASF600
	.byte	0x4
	.2byte	0x30f
	.byte	0x5
	.4byte	0x68
	.4byte	0x2afe
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2afe
	.uleb128 0x2
	.4byte	0x2afe
	.byte	0
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xe
	.4byte	.LASF601
	.byte	0x4
	.2byte	0x2d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x2b24
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2afe
	.uleb128 0x2
	.4byte	0x2afe
	.byte	0
	.uleb128 0xe
	.4byte	.LASF602
	.byte	0x6
	.2byte	0x1b7
	.byte	0x12
	.4byte	0xd0
	.4byte	0x2b4f
	.uleb128 0x2
	.4byte	0x10f
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x2d9
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0xd0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF603
	.byte	0x21
	.4byte	0xa6
	.4byte	0x2b6d
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF604
	.byte	0x4
	.2byte	0x2b8
	.byte	0x5
	.4byte	0x68
	.4byte	0x2b8e
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2afe
	.uleb128 0x2
	.4byte	0x2afe
	.byte	0
	.uleb128 0xe
	.4byte	.LASF605
	.byte	0x4
	.2byte	0x275
	.byte	0x5
	.4byte	0x68
	.4byte	0x2baa
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x19
	.4byte	.LASF606
	.byte	0x1f
	.4byte	0xa6
	.4byte	0x2bc8
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF607
	.byte	0x4
	.2byte	0x112
	.byte	0x5
	.4byte	0x68
	.4byte	0x2be4
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF609
	.byte	0x5
	.2byte	0x268
	.4byte	0x2bf6
	.uleb128 0x2
	.4byte	0x2bf6
	.byte	0
	.uleb128 0xc
	.4byte	0x2cc
	.uleb128 0xe
	.4byte	.LASF608
	.byte	0x4
	.2byte	0x2e3
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c1c
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2afe
	.uleb128 0x2
	.4byte	0x2afe
	.byte	0
	.uleb128 0x21
	.4byte	.LASF610
	.byte	0x4
	.byte	0xfa
	.byte	0x6
	.4byte	0x2c2e
	.uleb128 0x2
	.4byte	0x2a4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF611
	.byte	0x5
	.2byte	0x27f
	.4byte	0x2c40
	.uleb128 0x2
	.4byte	0x2bf6
	.byte	0
	.uleb128 0x15
	.4byte	.LASF612
	.byte	0x4
	.2byte	0x103
	.4byte	0x2c52
	.uleb128 0x2
	.4byte	0x2a4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF613
	.byte	0x4
	.2byte	0x19e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c73
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF614
	.byte	0x4
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c94
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2c94
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	0x39
	.uleb128 0xe
	.4byte	.LASF615
	.byte	0x4
	.2byte	0x300
	.byte	0x5
	.4byte	0x68
	.4byte	0x2cba
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x2afe
	.uleb128 0x2
	.4byte	0xbf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF616
	.byte	0x4
	.2byte	0x269
	.byte	0x5
	.4byte	0x68
	.4byte	0x2cd6
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF617
	.byte	0x4
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0x2cf2
	.uleb128 0x2
	.4byte	0x2a4
	.uleb128 0x2
	.4byte	0xbf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF618
	.byte	0x4
	.2byte	0x1ba
	.byte	0x8
	.4byte	0x76
	.4byte	0x2d09
	.uleb128 0x2
	.4byte	0x2afe
	.byte	0
	.uleb128 0xb
	.4byte	.LASF619
	.2byte	0x153c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d42
	.uleb128 0x5
	.string	"N"
	.2byte	0x153c
	.byte	0x28
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"Rp"
	.2byte	0x153e
	.byte	0x23
	.4byte	0x2d52
	.uleb128 0x5
	.byte	0x3
	.4byte	Rp.0
	.byte	0
	.uleb128 0x7
	.4byte	0xdc
	.4byte	0x2d52
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x2d42
	.uleb128 0xb
	.4byte	.LASF620
	.2byte	0x1526
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d90
	.uleb128 0x5
	.string	"N"
	.2byte	0x1526
	.byte	0x28
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"Rp"
	.2byte	0x1528
	.byte	0x23
	.4byte	0x2d52
	.uleb128 0x5
	.byte	0x3
	.4byte	Rp.1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF621
	.2byte	0x1515
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc9
	.uleb128 0x5
	.string	"N"
	.2byte	0x1515
	.byte	0x28
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"Rp"
	.2byte	0x1517
	.byte	0x23
	.4byte	0x2d52
	.uleb128 0x5
	.byte	0x3
	.4byte	Rp.2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF622
	.2byte	0x14c2
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e91
	.uleb128 0x5
	.string	"N"
	.2byte	0x14c2
	.byte	0x30
	.4byte	0x2a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x5
	.string	"Rp"
	.2byte	0x14c2
	.byte	0x4b
	.4byte	0x2d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x9
	.4byte	.LASF623
	.2byte	0x14c2
	.byte	0x56
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x9
	.4byte	.LASF624
	.2byte	0x14c3
	.byte	0x2a
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x9
	.4byte	.LASF625
	.2byte	0x14c3
	.byte	0x39
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x9
	.4byte	.LASF626
	.2byte	0x14c3
	.byte	0x51
	.4byte	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.string	"ret"
	.2byte	0x14c5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"i"
	.2byte	0x14c6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"M"
	.2byte	0x14c7
	.byte	0x11
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"R"
	.2byte	0x14c7
	.byte	0x14
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"Mp"
	.2byte	0x14c8
	.byte	0x16
	.4byte	0x2e91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x1509
	.4byte	.L203
	.byte	0
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x2ea1
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF627
	.2byte	0x1480
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f29
	.uleb128 0x5
	.string	"N"
	.2byte	0x1480
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1482
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"i"
	.2byte	0x1483
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"M"
	.2byte	0x1484
	.byte	0x11
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"Q"
	.2byte	0x1484
	.byte	0x14
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"Mp"
	.2byte	0x1485
	.byte	0x16
	.4byte	0x2f29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.string	"Qp"
	.2byte	0x1485
	.byte	0x44
	.4byte	0x2f39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x14b1
	.4byte	.L185
	.byte	0
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x2f39
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x2f49
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF629
	.2byte	0x144e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f9e
	.uleb128 0x5
	.string	"N"
	.2byte	0x144e
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"Mp"
	.2byte	0x1450
	.byte	0x16
	.4byte	0x2f9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF630
	.2byte	0x1453
	.byte	0x1e
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF631
	.2byte	0x1454
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x2fae
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF632
	.2byte	0x141a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301a
	.uleb128 0x5
	.string	"N"
	.2byte	0x141a
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3
	.string	"ret"
	.2byte	0x141c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"i"
	.2byte	0x141d
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"M"
	.2byte	0x141e
	.byte	0x11
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"Mp"
	.2byte	0x141f
	.byte	0x16
	.4byte	0x301a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x143b
	.4byte	.L168
	.byte	0
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x302a
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.4byte	.LASF633
	.2byte	0x13d1
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30b2
	.uleb128 0x5
	.string	"N"
	.2byte	0x13d1
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"ret"
	.2byte	0x13d3
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.2byte	0x13d3
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x3
	.string	"cc"
	.2byte	0x13d3
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x3
	.string	"cur"
	.2byte	0x13d3
	.byte	0x38
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"i"
	.2byte	0x13d3
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF634
	.2byte	0x13d3
	.byte	0x4b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x13f9
	.4byte	.L134
	.byte	0
	.uleb128 0xb
	.4byte	.LASF635
	.2byte	0x13ac
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x313a
	.uleb128 0x5
	.string	"N"
	.2byte	0x13ac
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"ret"
	.2byte	0x13ae
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.2byte	0x13ae
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x3
	.string	"cc"
	.2byte	0x13ae
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x3
	.string	"cur"
	.2byte	0x13ae
	.byte	0x38
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"i"
	.2byte	0x13ae
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF634
	.2byte	0x13ae
	.byte	0x4b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x13c8
	.4byte	.L111
	.byte	0
	.uleb128 0xb
	.4byte	.LASF636
	.2byte	0x1397
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31c2
	.uleb128 0x5
	.string	"N"
	.2byte	0x1397
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1399
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.2byte	0x1399
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x3
	.string	"cc"
	.2byte	0x1399
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x3
	.string	"cur"
	.2byte	0x1399
	.byte	0x38
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"i"
	.2byte	0x1399
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF634
	.2byte	0x1399
	.byte	0x4b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x13a3
	.4byte	.L90
	.byte	0
	.uleb128 0x12
	.4byte	.LASF637
	.2byte	0x1375
	.byte	0xd
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x321e
	.uleb128 0x5
	.string	"N"
	.2byte	0x1375
	.byte	0x33
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"c"
	.2byte	0x1375
	.byte	0x42
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x9
	.4byte	.LASF634
	.2byte	0x1375
	.byte	0x4c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"i"
	.2byte	0x1377
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"msw"
	.2byte	0x138a
	.byte	0x16
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF638
	.2byte	0x134d
	.byte	0x14
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3262
	.uleb128 0x5
	.string	"dst"
	.2byte	0x134d
	.byte	0x24
	.4byte	0x3262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"src"
	.2byte	0x134d
	.byte	0x32
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF639
	.2byte	0x134d
	.byte	0x44
	.4byte	0x3267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	0x9a
	.uleb128 0xc
	.4byte	0x2b
	.uleb128 0x12
	.4byte	.LASF640
	.2byte	0x1347
	.byte	0x14
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32b0
	.uleb128 0x5
	.string	"dst"
	.2byte	0x1347
	.byte	0x24
	.4byte	0x3262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"src"
	.2byte	0x1347
	.byte	0x32
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF639
	.2byte	0x1347
	.byte	0x44
	.4byte	0x3267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF641
	.2byte	0x12fe
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331b
	.uleb128 0x5
	.string	"N"
	.2byte	0x12fe
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1300
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.2byte	0x1301
	.byte	0x16
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"p"
	.2byte	0x1302
	.byte	0x17
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"end"
	.2byte	0x1302
	.byte	0x1b
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x130e
	.4byte	.L76
	.byte	0
	.uleb128 0x12
	.4byte	.LASF642
	.2byte	0x12ec
	.byte	0x14
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x335d
	.uleb128 0x5
	.string	"dst"
	.2byte	0x12ec
	.byte	0x2e
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF639
	.2byte	0x12ec
	.byte	0x45
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"i"
	.2byte	0x12ee
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x12
	.4byte	.LASF643
	.2byte	0x12e0
	.byte	0x14
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33bb
	.uleb128 0x5
	.string	"dst"
	.2byte	0x12e0
	.byte	0x2c
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"src"
	.2byte	0x12e0
	.byte	0x43
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF639
	.2byte	0x12e0
	.byte	0x5a
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"i"
	.2byte	0x12e2
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.string	"c"
	.2byte	0x12e3
	.byte	0x16
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x126d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f4
	.uleb128 0x5
	.string	"grp"
	.2byte	0x126d
	.byte	0x2f
	.4byte	0x2bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"id"
	.2byte	0x126d
	.byte	0x49
	.4byte	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF644
	.2byte	0x123f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3446
	.uleb128 0x5
	.string	"grp"
	.2byte	0x123f
	.byte	0x30
	.4byte	0x2bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"Ns"
	.2byte	0x1241
	.byte	0x11
	.4byte	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1242
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x1260
	.4byte	.L28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF645
	.2byte	0x120e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x348a
	.uleb128 0x5
	.string	"grp"
	.2byte	0x120e
	.byte	0x32
	.4byte	0x2bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1210
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF628
	.2byte	0x1229
	.4byte	.L8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF646
	.2byte	0x11a2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x356b
	.uleb128 0x5
	.string	"grp"
	.2byte	0x11a2
	.byte	0x2e
	.4byte	0x2bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"p"
	.2byte	0x11a3
	.byte	0x33
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF647
	.2byte	0x11a3
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"a"
	.2byte	0x11a4
	.byte	0x33
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF648
	.2byte	0x11a4
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.2byte	0x11a5
	.byte	0x33
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF649
	.2byte	0x11a5
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"gx"
	.2byte	0x11a6
	.byte	0x33
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF650
	.2byte	0x11a6
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.string	"gy"
	.2byte	0x11a7
	.byte	0x33
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF651
	.2byte	0x11a7
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.string	"n"
	.2byte	0x11a8
	.byte	0x33
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF652
	.2byte	0x11a8
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x5
	.string	"T"
	.2byte	0x11a9
	.byte	0x34
	.4byte	0x356b
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0xc
	.4byte	0x1d3
	.uleb128 0x12
	.4byte	.LASF653
	.2byte	0x1198
	.byte	0x14
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3594
	.uleb128 0x5
	.string	"X"
	.2byte	0x1198
	.byte	0x2e
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x118e
	.byte	0x14
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"X"
	.2byte	0x118e
	.byte	0x2e
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"p"
	.2byte	0x118e
	.byte	0x49
	.4byte	0x2d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.2byte	0x118e
	.byte	0x53
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0xb
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
	.sleb128 5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF334:
	.string	"secp192k1_T_15_X"
.LASF335:
	.string	"secp192k1_T_15_Y"
.LASF639:
	.string	"carry"
.LASF614:
	.string	"mbedtls_mpi_read_binary"
.LASF12:
	.string	"size_t"
.LASF607:
	.string	"mbedtls_mpi_grow"
.LASF540:
	.string	"brainpoolP512r1_T_4_Y"
.LASF610:
	.string	"mbedtls_mpi_init"
.LASF596:
	.string	"curve25519_a24"
.LASF53:
	.string	"secp192r1_T_2_X"
.LASF54:
	.string	"secp192r1_T_2_Y"
.LASF257:
	.string	"secp521r1_T_12_X"
.LASF258:
	.string	"secp521r1_T_12_Y"
.LASF91:
	.string	"secp224r1_T_2_X"
.LASF63:
	.string	"secp192r1_T_7_X"
.LASF64:
	.string	"secp192r1_T_7_Y"
.LASF241:
	.string	"secp521r1_T_4_X"
.LASF242:
	.string	"secp521r1_T_4_Y"
.LASF267:
	.string	"secp521r1_T_17_X"
.LASF268:
	.string	"secp521r1_T_17_Y"
.LASF13:
	.string	"int32_t"
.LASF102:
	.string	"secp224r1_T_7_Y"
.LASF457:
	.string	"brainpoolP384r1_gx"
.LASF251:
	.string	"secp521r1_T_9_X"
.LASF252:
	.string	"secp521r1_T_9_Y"
.LASF371:
	.string	"secp224k1_T_14_X"
.LASF372:
	.string	"secp224k1_T_14_Y"
.LASF484:
	.string	"brainpoolP384r1_T_12_X"
.LASF485:
	.string	"brainpoolP384r1_T_12_Y"
.LASF345:
	.string	"secp224k1_T_1_X"
.LASF346:
	.string	"secp224k1_T_1_Y"
.LASF468:
	.string	"brainpoolP384r1_T_4_X"
.LASF469:
	.string	"brainpoolP384r1_T_4_Y"
.LASF37:
	.string	"nbits"
.LASF429:
	.string	"brainpoolP256r1_T_4_X"
.LASF211:
	.string	"secp384r1_T_24_X"
.LASF212:
	.string	"secp384r1_T_24_Y"
.LASF383:
	.string	"secp256k1_T_0_Y"
.LASF355:
	.string	"secp224k1_T_6_X"
.LASF356:
	.string	"secp224k1_T_6_Y"
.LASF35:
	.string	"mbedtls_ecp_group"
.LASF479:
	.string	"brainpoolP384r1_T_9_Y"
.LASF439:
	.string	"brainpoolP256r1_T_9_X"
.LASF221:
	.string	"secp384r1_T_29_X"
.LASF222:
	.string	"secp384r1_T_29_Y"
.LASF573:
	.string	"brainpoolP512r1_T_21_X"
.LASF574:
	.string	"brainpoolP512r1_T_21_Y"
.LASF583:
	.string	"brainpoolP512r1_T_26_X"
.LASF584:
	.string	"brainpoolP512r1_T_26_Y"
.LASF393:
	.string	"secp256k1_T_5_Y"
.LASF297:
	.string	"secp521r1_T"
.LASF619:
	.string	"ecp_mod_p256k1"
.LASF229:
	.string	"secp521r1_b"
.LASF149:
	.string	"secp256r1_T_12_X"
.LASF150:
	.string	"secp256r1_T_12_Y"
.LASF474:
	.string	"brainpoolP384r1_T_7_X"
.LASF475:
	.string	"brainpoolP384r1_T_7_Y"
.LASF232:
	.string	"secp521r1_n"
.LASF228:
	.string	"secp521r1_p"
.LASF524:
	.string	"brainpoolP384r1_T"
.LASF455:
	.string	"brainpoolP384r1_a"
.LASF456:
	.string	"brainpoolP384r1_b"
.LASF88:
	.string	"secp224r1_T_0_Y"
.LASF430:
	.string	"brainpoolP256r1_T_4_Y"
.LASF459:
	.string	"brainpoolP384r1_n"
.LASF454:
	.string	"brainpoolP384r1_p"
.LASF593:
	.string	"brainpoolP512r1_T_31_X"
.LASF490:
	.string	"brainpoolP384r1_T_15_X"
.LASF538:
	.string	"brainpoolP512r1_T_3_Y"
.LASF594:
	.string	"brainpoolP512r1_T_31_Y"
.LASF160:
	.string	"secp384r1_gx"
.LASF161:
	.string	"secp384r1_gy"
.LASF651:
	.string	"gylen"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF169:
	.string	"secp384r1_T_3_X"
.LASF170:
	.string	"secp384r1_T_3_Y"
.LASF273:
	.string	"secp521r1_T_20_X"
.LASF274:
	.string	"secp521r1_T_20_Y"
.LASF131:
	.string	"secp256r1_T_3_X"
.LASF132:
	.string	"secp256r1_T_3_Y"
.LASF179:
	.string	"secp384r1_T_8_X"
.LASF180:
	.string	"secp384r1_T_8_Y"
.LASF33:
	.string	"mbedtls_ecp_group_id"
.LASF283:
	.string	"secp521r1_T_25_X"
.LASF284:
	.string	"secp521r1_T_25_Y"
.LASF141:
	.string	"secp256r1_T_8_X"
.LASF142:
	.string	"secp256r1_T_8_Y"
.LASF402:
	.string	"secp256k1_T_10_X"
.LASF403:
	.string	"secp256k1_T_10_Y"
.LASF187:
	.string	"secp384r1_T_12_X"
.LASF188:
	.string	"secp384r1_T_12_Y"
.LASF75:
	.string	"secp192r1_T_13_X"
.LASF76:
	.string	"secp192r1_T_13_Y"
.LASF6:
	.string	"long int"
.LASF500:
	.string	"brainpoolP384r1_T_20_X"
.LASF336:
	.string	"secp192k1_T"
.LASF386:
	.string	"secp256k1_T_2_X"
.LASF387:
	.string	"secp256k1_T_2_Y"
.LASF539:
	.string	"brainpoolP512r1_T_4_X"
.LASF197:
	.string	"secp384r1_T_17_X"
.LASF198:
	.string	"secp384r1_T_17_Y"
.LASF299:
	.string	"secp192k1_a"
.LASF300:
	.string	"secp192k1_b"
.LASF510:
	.string	"brainpoolP384r1_T_25_X"
.LASF511:
	.string	"brainpoolP384r1_T_25_Y"
.LASF396:
	.string	"secp256k1_T_7_X"
.LASF397:
	.string	"secp256k1_T_7_Y"
.LASF304:
	.string	"secp192k1_T_0_X"
.LASF305:
	.string	"secp192k1_T_0_Y"
.LASF549:
	.string	"brainpoolP512r1_T_9_X"
.LASF550:
	.string	"brainpoolP512r1_T_9_Y"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF298:
	.string	"secp192k1_p"
.LASF314:
	.string	"secp192k1_T_5_X"
.LASF315:
	.string	"secp192k1_T_5_Y"
.LASF559:
	.string	"brainpoolP512r1_T_14_X"
.LASF560:
	.string	"brainpoolP512r1_T_14_Y"
.LASF625:
	.string	"shift"
.LASF428:
	.string	"brainpoolP256r1_T_3_Y"
.LASF570:
	.string	"brainpoolP512r1_T_19_Y"
.LASF598:
	.string	"curve448_a24"
.LASF410:
	.string	"secp256k1_T_14_X"
.LASF84:
	.string	"secp224r1_gx"
.LASF85:
	.string	"secp224r1_gy"
.LASF111:
	.string	"secp224r1_T_12_X"
.LASF112:
	.string	"secp224r1_T_12_Y"
.LASF609:
	.string	"mbedtls_ecp_group_init"
.LASF648:
	.string	"alen"
.LASF528:
	.string	"brainpoolP512r1_gx"
.LASF447:
	.string	"brainpoolP256r1_T_13_X"
.LASF448:
	.string	"brainpoolP256r1_T_13_Y"
.LASF326:
	.string	"secp192k1_T_11_X"
.LASF327:
	.string	"secp192k1_T_11_Y"
.LASF269:
	.string	"secp521r1_T_18_X"
.LASF438:
	.string	"brainpoolP256r1_T_8_Y"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF55:
	.string	"secp192r1_T_3_X"
.LASF56:
	.string	"secp192r1_T_3_Y"
.LASF233:
	.string	"secp521r1_T_0_X"
.LASF234:
	.string	"secp521r1_T_0_Y"
.LASF534:
	.string	"brainpoolP512r1_T_1_Y"
.LASF16:
	.string	"mbedtls_mpi_sint"
.LASF3:
	.string	"unsigned char"
.LASF259:
	.string	"secp521r1_T_13_X"
.LASF260:
	.string	"secp521r1_T_13_Y"
.LASF93:
	.string	"secp224r1_T_3_X"
.LASF65:
	.string	"secp192r1_T_8_X"
.LASF66:
	.string	"secp192r1_T_8_Y"
.LASF243:
	.string	"secp521r1_T_5_X"
.LASF244:
	.string	"secp521r1_T_5_Y"
.LASF27:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF612:
	.string	"mbedtls_mpi_free"
.LASF17:
	.string	"mbedtls_mpi_uint"
.LASF270:
	.string	"secp521r1_T_18_Y"
.LASF103:
	.string	"secp224r1_T_8_X"
.LASF104:
	.string	"secp224r1_T_8_Y"
.LASF363:
	.string	"secp224k1_T_10_X"
.LASF364:
	.string	"secp224k1_T_10_Y"
.LASF460:
	.string	"brainpoolP384r1_T_0_X"
.LASF461:
	.string	"brainpoolP384r1_T_0_Y"
.LASF373:
	.string	"secp224k1_T_15_X"
.LASF374:
	.string	"secp224k1_T_15_Y"
.LASF421:
	.string	"brainpoolP256r1_T_0_X"
.LASF203:
	.string	"secp384r1_T_20_X"
.LASF204:
	.string	"secp384r1_T_20_Y"
.LASF487:
	.string	"brainpoolP384r1_T_13_Y"
.LASF347:
	.string	"secp224k1_T_2_X"
.LASF348:
	.string	"secp224k1_T_2_Y"
.LASF544:
	.string	"brainpoolP512r1_T_6_Y"
.LASF406:
	.string	"secp256k1_T_12_X"
.LASF470:
	.string	"brainpoolP384r1_T_5_X"
.LASF471:
	.string	"brainpoolP384r1_T_5_Y"
.LASF431:
	.string	"brainpoolP256r1_T_5_X"
.LASF213:
	.string	"secp384r1_T_25_X"
.LASF214:
	.string	"secp384r1_T_25_Y"
.LASF497:
	.string	"brainpoolP384r1_T_18_Y"
.LASF357:
	.string	"secp224k1_T_7_X"
.LASF358:
	.string	"secp224k1_T_7_Y"
.LASF15:
	.string	"char"
.LASF39:
	.string	"t_pre"
.LASF603:
	.string	"memset"
.LASF633:
	.string	"ecp_mod_p384"
.LASF294:
	.string	"secp521r1_T_30_Y"
.LASF419:
	.string	"brainpoolP256r1_gy"
.LASF576:
	.string	"brainpoolP512r1_T_22_Y"
.LASF585:
	.string	"brainpoolP512r1_T_27_X"
.LASF586:
	.string	"brainpoolP512r1_T_27_Y"
.LASF239:
	.string	"secp521r1_T_3_X"
.LASF630:
	.string	"NT_p"
.LASF151:
	.string	"secp256r1_T_13_X"
.LASF152:
	.string	"secp256r1_T_13_Y"
.LASF622:
	.string	"ecp_mod_koblitz"
.LASF486:
	.string	"brainpoolP384r1_T_13_X"
.LASF645:
	.string	"ecp_use_curve25519"
.LASF542:
	.string	"brainpoolP512r1_T_5_Y"
.LASF94:
	.string	"secp224r1_T_3_Y"
.LASF184:
	.string	"secp384r1_T_10_Y"
.LASF171:
	.string	"secp384r1_T_4_X"
.LASF172:
	.string	"secp384r1_T_4_Y"
.LASF157:
	.string	"secp256r1_T"
.LASF275:
	.string	"secp521r1_T_21_X"
.LASF276:
	.string	"secp521r1_T_21_Y"
.LASF279:
	.string	"secp521r1_T_23_X"
.LASF133:
	.string	"secp256r1_T_4_X"
.LASF134:
	.string	"secp256r1_T_4_Y"
.LASF608:
	.string	"mbedtls_mpi_sub_mpi"
.LASF496:
	.string	"brainpoolP384r1_T_18_X"
.LASF121:
	.string	"secp256r1_b"
.LASF182:
	.string	"secp384r1_T_9_Y"
.LASF285:
	.string	"secp521r1_T_26_X"
.LASF286:
	.string	"secp521r1_T_26_Y"
.LASF616:
	.string	"mbedtls_mpi_shift_l"
.LASF143:
	.string	"secp256r1_T_9_X"
.LASF144:
	.string	"secp256r1_T_9_Y"
.LASF124:
	.string	"secp256r1_n"
.LASF405:
	.string	"secp256k1_T_11_Y"
.LASF120:
	.string	"secp256r1_p"
.LASF611:
	.string	"mbedtls_ecp_group_free"
.LASF501:
	.string	"brainpoolP384r1_T_20_Y"
.LASF597:
	.string	"curve25519_part_of_n"
.LASF531:
	.string	"brainpoolP512r1_T_0_X"
.LASF189:
	.string	"secp384r1_T_13_X"
.LASF190:
	.string	"secp384r1_T_13_Y"
.LASF77:
	.string	"secp192r1_T_14_X"
.LASF78:
	.string	"secp192r1_T_14_Y"
.LASF502:
	.string	"brainpoolP384r1_T_21_X"
.LASF503:
	.string	"brainpoolP384r1_T_21_Y"
.LASF404:
	.string	"secp256k1_T_11_X"
.LASF388:
	.string	"secp256k1_T_3_X"
.LASF389:
	.string	"secp256k1_T_3_Y"
.LASF541:
	.string	"brainpoolP512r1_T_5_X"
.LASF199:
	.string	"secp384r1_T_18_X"
.LASF200:
	.string	"secp384r1_T_18_Y"
.LASF512:
	.string	"brainpoolP384r1_T_26_X"
.LASF513:
	.string	"brainpoolP384r1_T_26_Y"
.LASF398:
	.string	"secp256k1_T_8_X"
.LASF399:
	.string	"secp256k1_T_8_Y"
.LASF650:
	.string	"gxlen"
.LASF623:
	.string	"p_limbs"
.LASF306:
	.string	"secp192k1_T_1_X"
.LASF307:
	.string	"secp192k1_T_1_Y"
.LASF551:
	.string	"brainpoolP512r1_T_10_X"
.LASF552:
	.string	"brainpoolP512r1_T_10_Y"
.LASF424:
	.string	"brainpoolP256r1_T_1_Y"
.LASF303:
	.string	"secp192k1_n"
.LASF316:
	.string	"secp192k1_T_6_X"
.LASF317:
	.string	"secp192k1_T_6_Y"
.LASF561:
	.string	"brainpoolP512r1_T_15_X"
.LASF562:
	.string	"brainpoolP512r1_T_15_Y"
.LASF591:
	.string	"brainpoolP512r1_T_30_X"
.LASF592:
	.string	"brainpoolP512r1_T_30_Y"
.LASF42:
	.string	"T_size"
.LASF113:
	.string	"secp224r1_T_13_X"
.LASF114:
	.string	"secp224r1_T_13_Y"
.LASF434:
	.string	"brainpoolP256r1_T_6_Y"
.LASF449:
	.string	"brainpoolP256r1_T_14_X"
.LASF450:
	.string	"brainpoolP256r1_T_14_Y"
.LASF328:
	.string	"secp192k1_T_12_X"
.LASF329:
	.string	"secp192k1_T_12_Y"
.LASF617:
	.string	"mbedtls_mpi_lset"
.LASF7:
	.string	"long unsigned int"
.LASF618:
	.string	"mbedtls_mpi_bitlen"
.LASF57:
	.string	"secp192r1_T_4_X"
.LASF58:
	.string	"secp192r1_T_4_Y"
.LASF235:
	.string	"secp521r1_T_1_X"
.LASF236:
	.string	"secp521r1_T_1_Y"
.LASF261:
	.string	"secp521r1_T_14_X"
.LASF262:
	.string	"secp521r1_T_14_Y"
.LASF95:
	.string	"secp224r1_T_4_X"
.LASF67:
	.string	"secp192r1_T_9_X"
.LASF68:
	.string	"secp192r1_T_9_Y"
.LASF245:
	.string	"secp521r1_T_6_X"
.LASF246:
	.string	"secp521r1_T_6_Y"
.LASF271:
	.string	"secp521r1_T_19_X"
.LASF272:
	.string	"secp521r1_T_19_Y"
.LASF105:
	.string	"secp224r1_T_9_X"
.LASF106:
	.string	"secp224r1_T_9_Y"
.LASF365:
	.string	"secp224k1_T_11_X"
.LASF366:
	.string	"secp224k1_T_11_Y"
.LASF340:
	.string	"secp224k1_gx"
.LASF341:
	.string	"secp224k1_gy"
.LASF462:
	.string	"brainpoolP384r1_T_1_X"
.LASF463:
	.string	"brainpoolP384r1_T_1_Y"
.LASF423:
	.string	"brainpoolP256r1_T_1_X"
.LASF205:
	.string	"secp384r1_T_21_X"
.LASF206:
	.string	"secp384r1_T_21_Y"
.LASF489:
	.string	"brainpoolP384r1_T_14_Y"
.LASF349:
	.string	"secp224k1_T_3_X"
.LASF350:
	.string	"secp224k1_T_3_Y"
.LASF28:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF472:
	.string	"brainpoolP384r1_T_6_X"
.LASF473:
	.string	"brainpoolP384r1_T_6_Y"
.LASF621:
	.string	"ecp_mod_p192k1"
.LASF433:
	.string	"brainpoolP256r1_T_6_X"
.LASF215:
	.string	"secp384r1_T_26_X"
.LASF216:
	.string	"secp384r1_T_26_Y"
.LASF499:
	.string	"brainpoolP384r1_T_19_Y"
.LASF359:
	.string	"secp224k1_T_8_X"
.LASF360:
	.string	"secp224k1_T_8_Y"
.LASF458:
	.string	"brainpoolP384r1_gy"
.LASF506:
	.string	"brainpoolP384r1_T_23_X"
.LASF613:
	.string	"mbedtls_mpi_set_bit"
.LASF615:
	.string	"mbedtls_mpi_sub_int"
.LASF119:
	.string	"secp224r1_T"
.LASF413:
	.string	"secp256k1_T_15_Y"
.LASF577:
	.string	"brainpoolP512r1_T_23_X"
.LASF578:
	.string	"brainpoolP512r1_T_23_Y"
.LASF632:
	.string	"ecp_mod_p521"
.LASF83:
	.string	"secp224r1_b"
.LASF86:
	.string	"secp224r1_n"
.LASF588:
	.string	"brainpoolP512r1_T_28_Y"
.LASF82:
	.string	"secp224r1_p"
.LASF600:
	.string	"mbedtls_mpi_mul_mpi"
.LASF656:
	.string	"ecp_mpi_load"
.LASF153:
	.string	"secp256r1_T_14_X"
.LASF154:
	.string	"secp256r1_T_14_Y"
.LASF8:
	.string	"long long int"
.LASF43:
	.string	"mpi_one"
.LASF642:
	.string	"carry64"
.LASF605:
	.string	"mbedtls_mpi_shift_r"
.LASF90:
	.string	"secp224r1_T_1_Y"
.LASF163:
	.string	"secp384r1_T_0_X"
.LASF164:
	.string	"secp384r1_T_0_Y"
.LASF492:
	.string	"brainpoolP384r1_T_16_X"
.LASF602:
	.string	"mbedtls_mpi_core_mla"
.LASF125:
	.string	"secp256r1_T_0_X"
.LASF126:
	.string	"secp256r1_T_0_Y"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF626:
	.string	"mask"
.LASF587:
	.string	"brainpoolP512r1_T_28_X"
.LASF173:
	.string	"secp384r1_T_5_X"
.LASF174:
	.string	"secp384r1_T_5_Y"
.LASF277:
	.string	"secp521r1_T_22_X"
.LASF278:
	.string	"secp521r1_T_22_Y"
.LASF135:
	.string	"secp256r1_T_5_X"
.LASF136:
	.string	"secp256r1_T_5_Y"
.LASF554:
	.string	"brainpoolP512r1_T_11_Y"
.LASF287:
	.string	"secp521r1_T_27_X"
.LASF288:
	.string	"secp521r1_T_27_Y"
.LASF69:
	.string	"secp192r1_T_10_X"
.LASF70:
	.string	"secp192r1_T_10_Y"
.LASF407:
	.string	"secp256k1_T_12_Y"
.LASF533:
	.string	"brainpoolP512r1_T_1_X"
.LASF191:
	.string	"secp384r1_T_14_X"
.LASF192:
	.string	"secp384r1_T_14_Y"
.LASF79:
	.string	"secp192r1_T_15_X"
.LASF80:
	.string	"secp192r1_T_15_Y"
.LASF595:
	.string	"brainpoolP512r1_T"
.LASF504:
	.string	"brainpoolP384r1_T_22_X"
.LASF505:
	.string	"brainpoolP384r1_T_22_Y"
.LASF390:
	.string	"secp256k1_T_4_X"
.LASF391:
	.string	"secp256k1_T_4_Y"
.LASF543:
	.string	"brainpoolP512r1_T_6_X"
.LASF201:
	.string	"secp384r1_T_19_X"
.LASF202:
	.string	"secp384r1_T_19_Y"
.LASF527:
	.string	"brainpoolP512r1_b"
.LASF10:
	.string	"unsigned int"
.LASF514:
	.string	"brainpoolP384r1_T_27_X"
.LASF515:
	.string	"brainpoolP384r1_T_27_Y"
.LASF624:
	.string	"adjust"
.LASF400:
	.string	"secp256k1_T_9_X"
.LASF401:
	.string	"secp256k1_T_9_Y"
.LASF308:
	.string	"secp192k1_T_2_X"
.LASF309:
	.string	"secp192k1_T_2_Y"
.LASF553:
	.string	"brainpoolP512r1_T_11_X"
.LASF525:
	.string	"brainpoolP512r1_p"
.LASF453:
	.string	"brainpoolP256r1_T"
.LASF32:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF318:
	.string	"secp192k1_T_7_X"
.LASF319:
	.string	"secp192k1_T_7_Y"
.LASF563:
	.string	"brainpoolP512r1_T_16_X"
.LASF564:
	.string	"brainpoolP512r1_T_16_Y"
.LASF416:
	.string	"brainpoolP256r1_a"
.LASF417:
	.string	"brainpoolP256r1_b"
.LASF529:
	.string	"brainpoolP512r1_gy"
.LASF420:
	.string	"brainpoolP256r1_n"
.LASF415:
	.string	"brainpoolP256r1_p"
.LASF526:
	.string	"brainpoolP512r1_a"
.LASF634:
	.string	"bits"
.LASF441:
	.string	"brainpoolP256r1_T_10_X"
.LASF442:
	.string	"brainpoolP256r1_T_10_Y"
.LASF115:
	.string	"secp224r1_T_14_X"
.LASF116:
	.string	"secp224r1_T_14_Y"
.LASF451:
	.string	"brainpoolP256r1_T_15_X"
.LASF452:
	.string	"brainpoolP256r1_T_15_Y"
.LASF330:
	.string	"secp192k1_T_13_X"
.LASF331:
	.string	"secp192k1_T_13_Y"
.LASF530:
	.string	"brainpoolP512r1_n"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF440:
	.string	"brainpoolP256r1_T_9_Y"
.LASF49:
	.string	"secp192r1_T_0_X"
.LASF50:
	.string	"secp192r1_T_0_Y"
.LASF638:
	.string	"sub32"
.LASF253:
	.string	"secp521r1_T_10_X"
.LASF254:
	.string	"secp521r1_T_10_Y"
.LASF87:
	.string	"secp224r1_T_0_X"
.LASF59:
	.string	"secp192r1_T_5_X"
.LASF60:
	.string	"secp192r1_T_5_Y"
.LASF237:
	.string	"secp521r1_T_2_X"
.LASF238:
	.string	"secp521r1_T_2_Y"
.LASF536:
	.string	"brainpoolP512r1_T_2_Y"
.LASF263:
	.string	"secp521r1_T_15_X"
.LASF264:
	.string	"secp521r1_T_15_Y"
.LASF97:
	.string	"secp224r1_T_5_X"
.LASF98:
	.string	"secp224r1_T_5_Y"
.LASF293:
	.string	"secp521r1_T_30_X"
.LASF247:
	.string	"secp521r1_T_7_X"
.LASF248:
	.string	"secp521r1_T_7_Y"
.LASF655:
	.string	"mbedtls_ecp_group_load"
.LASF654:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF367:
	.string	"secp224k1_T_12_X"
.LASF368:
	.string	"secp224k1_T_12_Y"
.LASF480:
	.string	"brainpoolP384r1_T_10_X"
.LASF481:
	.string	"brainpoolP384r1_T_10_Y"
.LASF11:
	.string	"long double"
.LASF464:
	.string	"brainpoolP384r1_T_2_X"
.LASF465:
	.string	"brainpoolP384r1_T_2_Y"
.LASF425:
	.string	"brainpoolP256r1_T_2_X"
.LASF207:
	.string	"secp384r1_T_22_X"
.LASF208:
	.string	"secp384r1_T_22_Y"
.LASF491:
	.string	"brainpoolP384r1_T_15_Y"
.LASF351:
	.string	"secp224k1_T_4_X"
.LASF352:
	.string	"secp224k1_T_4_Y"
.LASF520:
	.string	"brainpoolP384r1_T_30_X"
.LASF521:
	.string	"brainpoolP384r1_T_30_Y"
.LASF408:
	.string	"secp256k1_T_13_X"
.LASF435:
	.string	"brainpoolP256r1_T_7_X"
.LASF217:
	.string	"secp384r1_T_27_X"
.LASF218:
	.string	"secp384r1_T_27_Y"
.LASF361:
	.string	"secp224k1_T_9_X"
.LASF362:
	.string	"secp224k1_T_9_Y"
.LASF46:
	.string	"secp192r1_gx"
.LASF47:
	.string	"secp192r1_gy"
.LASF494:
	.string	"brainpoolP384r1_T_17_X"
.LASF580:
	.string	"brainpoolP512r1_T_24_Y"
.LASF296:
	.string	"secp521r1_T_31_Y"
.LASF589:
	.string	"brainpoolP512r1_T_29_X"
.LASF590:
	.string	"brainpoolP512r1_T_29_Y"
.LASF81:
	.string	"secp192r1_T"
.LASF145:
	.string	"secp256r1_T_10_X"
.LASF146:
	.string	"secp256r1_T_10_Y"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"secp192r1_b"
.LASF155:
	.string	"secp256r1_T_15_X"
.LASF156:
	.string	"secp256r1_T_15_Y"
.LASF649:
	.string	"blen"
.LASF48:
	.string	"secp192r1_n"
.LASF44:
	.string	"secp192r1_p"
.LASF653:
	.string	"ecp_mpi_set1"
.LASF34:
	.string	"mbedtls_ecp_point"
.LASF631:
	.string	"NT_n"
.LASF488:
	.string	"brainpoolP384r1_T_14_X"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF18:
	.string	"mbedtls_mpi"
.LASF601:
	.string	"mbedtls_mpi_add_mpi"
.LASF165:
	.string	"secp384r1_T_1_X"
.LASF166:
	.string	"secp384r1_T_1_Y"
.LASF127:
	.string	"secp256r1_T_1_X"
.LASF128:
	.string	"secp256r1_T_1_Y"
.LASF96:
	.string	"secp224r1_T_4_Y"
.LASF175:
	.string	"secp384r1_T_6_X"
.LASF176:
	.string	"secp384r1_T_6_Y"
.LASF181:
	.string	"secp384r1_T_9_X"
.LASF280:
	.string	"secp521r1_T_23_Y"
.LASF137:
	.string	"secp256r1_T_6_X"
.LASF138:
	.string	"secp256r1_T_6_Y"
.LASF599:
	.string	"curve448_part_of_n"
.LASF498:
	.string	"brainpoolP384r1_T_19_X"
.LASF289:
	.string	"secp521r1_T_28_X"
.LASF290:
	.string	"secp521r1_T_28_Y"
.LASF183:
	.string	"secp384r1_T_10_X"
.LASF36:
	.string	"pbits"
.LASF71:
	.string	"secp192r1_T_11_X"
.LASF72:
	.string	"secp192r1_T_11_Y"
.LASF409:
	.string	"secp256k1_T_13_Y"
.LASF382:
	.string	"secp256k1_T_0_X"
.LASF301:
	.string	"secp192k1_gx"
.LASF302:
	.string	"secp192k1_gy"
.LASF535:
	.string	"brainpoolP512r1_T_2_X"
.LASF193:
	.string	"secp384r1_T_15_X"
.LASF194:
	.string	"secp384r1_T_15_Y"
.LASF223:
	.string	"secp384r1_T_30_X"
.LASF224:
	.string	"secp384r1_T_30_Y"
.LASF507:
	.string	"brainpoolP384r1_T_23_Y"
.LASF392:
	.string	"secp256k1_T_5_X"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF545:
	.string	"brainpoolP512r1_T_7_X"
.LASF546:
	.string	"brainpoolP512r1_T_7_Y"
.LASF652:
	.string	"nlen"
.LASF516:
	.string	"brainpoolP384r1_T_28_X"
.LASF517:
	.string	"brainpoolP384r1_T_28_Y"
.LASF310:
	.string	"secp192k1_T_3_X"
.LASF311:
	.string	"secp192k1_T_3_Y"
.LASF555:
	.string	"brainpoolP512r1_T_12_X"
.LASF556:
	.string	"brainpoolP512r1_T_12_Y"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF647:
	.string	"plen"
.LASF426:
	.string	"brainpoolP256r1_T_2_Y"
.LASF320:
	.string	"secp192k1_T_8_X"
.LASF321:
	.string	"secp192k1_T_8_Y"
.LASF565:
	.string	"brainpoolP512r1_T_17_X"
.LASF566:
	.string	"brainpoolP512r1_T_17_Y"
.LASF569:
	.string	"brainpoolP512r1_T_19_X"
.LASF644:
	.string	"ecp_use_curve448"
.LASF107:
	.string	"secp224r1_T_10_X"
.LASF108:
	.string	"secp224r1_T_10_Y"
.LASF412:
	.string	"secp256k1_T_15_X"
.LASF620:
	.string	"ecp_mod_p224k1"
.LASF443:
	.string	"brainpoolP256r1_T_11_X"
.LASF444:
	.string	"brainpoolP256r1_T_11_Y"
.LASF414:
	.string	"secp256k1_T"
.LASF117:
	.string	"secp224r1_T_15_X"
.LASF118:
	.string	"secp224r1_T_15_Y"
.LASF40:
	.string	"t_post"
.LASF436:
	.string	"brainpoolP256r1_T_7_Y"
.LASF377:
	.string	"secp256k1_a"
.LASF378:
	.string	"secp256k1_b"
.LASF332:
	.string	"secp192k1_T_14_X"
.LASF333:
	.string	"secp192k1_T_14_Y"
.LASF381:
	.string	"secp256k1_n"
.LASF376:
	.string	"secp256k1_p"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF51:
	.string	"secp192r1_T_1_X"
.LASF52:
	.string	"secp192r1_T_1_Y"
.LASF532:
	.string	"brainpoolP512r1_T_0_Y"
.LASF255:
	.string	"secp521r1_T_11_X"
.LASF256:
	.string	"secp521r1_T_11_Y"
.LASF89:
	.string	"secp224r1_T_1_X"
.LASF61:
	.string	"secp192r1_T_6_X"
.LASF62:
	.string	"secp192r1_T_6_Y"
.LASF38:
	.string	"modp"
.LASF240:
	.string	"secp521r1_T_3_Y"
.LASF265:
	.string	"secp521r1_T_16_X"
.LASF266:
	.string	"secp521r1_T_16_Y"
.LASF99:
	.string	"secp224r1_T_6_X"
.LASF100:
	.string	"secp224r1_T_6_Y"
.LASF295:
	.string	"secp521r1_T_31_X"
.LASF249:
	.string	"secp521r1_T_8_X"
.LASF250:
	.string	"secp521r1_T_8_Y"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF604:
	.string	"mbedtls_mpi_add_abs"
.LASF369:
	.string	"secp224k1_T_13_X"
.LASF370:
	.string	"secp224k1_T_13_Y"
.LASF482:
	.string	"brainpoolP384r1_T_11_X"
.LASF483:
	.string	"brainpoolP384r1_T_11_Y"
.LASF343:
	.string	"secp224k1_T_0_X"
.LASF344:
	.string	"secp224k1_T_0_Y"
.LASF466:
	.string	"brainpoolP384r1_T_3_X"
.LASF467:
	.string	"brainpoolP384r1_T_3_Y"
.LASF427:
	.string	"brainpoolP256r1_T_3_X"
.LASF209:
	.string	"secp384r1_T_23_X"
.LASF210:
	.string	"secp384r1_T_23_Y"
.LASF493:
	.string	"brainpoolP384r1_T_16_Y"
.LASF353:
	.string	"secp224k1_T_5_X"
.LASF354:
	.string	"secp224k1_T_5_Y"
.LASF522:
	.string	"brainpoolP384r1_T_31_X"
.LASF523:
	.string	"brainpoolP384r1_T_31_Y"
.LASF476:
	.string	"brainpoolP384r1_T_8_X"
.LASF477:
	.string	"brainpoolP384r1_T_8_Y"
.LASF227:
	.string	"secp384r1_T"
.LASF437:
	.string	"brainpoolP256r1_T_8_X"
.LASF219:
	.string	"secp384r1_T_28_X"
.LASF220:
	.string	"secp384r1_T_28_Y"
.LASF159:
	.string	"secp384r1_b"
.LASF508:
	.string	"brainpoolP384r1_T_24_X"
.LASF571:
	.string	"brainpoolP512r1_T_20_X"
.LASF572:
	.string	"brainpoolP512r1_T_20_Y"
.LASF636:
	.string	"ecp_mod_p224"
.LASF162:
	.string	"secp384r1_n"
.LASF158:
	.string	"secp384r1_p"
.LASF581:
	.string	"brainpoolP512r1_T_25_X"
.LASF582:
	.string	"brainpoolP512r1_T_25_Y"
.LASF606:
	.string	"memcpy"
.LASF122:
	.string	"secp256r1_gx"
.LASF123:
	.string	"secp256r1_gy"
.LASF147:
	.string	"secp256r1_T_11_X"
.LASF148:
	.string	"secp256r1_T_11_Y"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF646:
	.string	"ecp_group_load"
.LASF641:
	.string	"ecp_mod_p192"
.LASF14:
	.string	"uint32_t"
.LASF640:
	.string	"add32"
.LASF478:
	.string	"brainpoolP384r1_T_9_X"
.LASF579:
	.string	"brainpoolP512r1_T_24_X"
.LASF337:
	.string	"secp224k1_p"
.LASF92:
	.string	"secp224r1_T_2_Y"
.LASF575:
	.string	"brainpoolP512r1_T_22_X"
.LASF230:
	.string	"secp521r1_gx"
.LASF231:
	.string	"secp521r1_gy"
.LASF167:
	.string	"secp384r1_T_2_X"
.LASF168:
	.string	"secp384r1_T_2_Y"
.LASF342:
	.string	"secp224k1_n"
.LASF129:
	.string	"secp256r1_T_2_X"
.LASF130:
	.string	"secp256r1_T_2_Y"
.LASF495:
	.string	"brainpoolP384r1_T_17_Y"
.LASF5:
	.string	"short unsigned int"
.LASF375:
	.string	"secp224k1_T"
.LASF177:
	.string	"secp384r1_T_7_X"
.LASF178:
	.string	"secp384r1_T_7_Y"
.LASF281:
	.string	"secp521r1_T_24_X"
.LASF282:
	.string	"secp521r1_T_24_Y"
.LASF139:
	.string	"secp256r1_T_7_X"
.LASF140:
	.string	"secp256r1_T_7_Y"
.LASF41:
	.string	"t_data"
.LASF338:
	.string	"secp224k1_a"
.LASF339:
	.string	"secp224k1_b"
.LASF291:
	.string	"secp521r1_T_29_X"
.LASF292:
	.string	"secp521r1_T_29_Y"
.LASF101:
	.string	"secp224r1_T_7_X"
.LASF185:
	.string	"secp384r1_T_11_X"
.LASF186:
	.string	"secp384r1_T_11_Y"
.LASF73:
	.string	"secp192r1_T_12_X"
.LASF74:
	.string	"secp192r1_T_12_Y"
.LASF411:
	.string	"secp256k1_T_14_Y"
.LASF384:
	.string	"secp256k1_T_1_X"
.LASF385:
	.string	"secp256k1_T_1_Y"
.LASF537:
	.string	"brainpoolP512r1_T_3_X"
.LASF195:
	.string	"secp384r1_T_16_X"
.LASF196:
	.string	"secp384r1_T_16_Y"
.LASF225:
	.string	"secp384r1_T_31_X"
.LASF226:
	.string	"secp384r1_T_31_Y"
.LASF509:
	.string	"brainpoolP384r1_T_24_Y"
.LASF627:
	.string	"ecp_mod_p448"
.LASF394:
	.string	"secp256k1_T_6_X"
.LASF395:
	.string	"secp256k1_T_6_Y"
.LASF547:
	.string	"brainpoolP512r1_T_8_X"
.LASF548:
	.string	"brainpoolP512r1_T_8_Y"
.LASF422:
	.string	"brainpoolP256r1_T_0_Y"
.LASF518:
	.string	"brainpoolP384r1_T_29_X"
.LASF519:
	.string	"brainpoolP384r1_T_29_Y"
.LASF312:
	.string	"secp192k1_T_4_X"
.LASF313:
	.string	"secp192k1_T_4_Y"
.LASF557:
	.string	"brainpoolP512r1_T_13_X"
.LASF558:
	.string	"brainpoolP512r1_T_13_Y"
.LASF629:
	.string	"ecp_mod_p255"
.LASF635:
	.string	"ecp_mod_p256"
.LASF379:
	.string	"secp256k1_gx"
.LASF380:
	.string	"secp256k1_gy"
.LASF322:
	.string	"secp192k1_T_9_X"
.LASF323:
	.string	"secp192k1_T_9_Y"
.LASF567:
	.string	"brainpoolP512r1_T_18_X"
.LASF568:
	.string	"brainpoolP512r1_T_18_Y"
.LASF418:
	.string	"brainpoolP256r1_gx"
.LASF628:
	.string	"cleanup"
.LASF643:
	.string	"add64"
.LASF432:
	.string	"brainpoolP256r1_T_5_Y"
.LASF109:
	.string	"secp224r1_T_11_X"
.LASF110:
	.string	"secp224r1_T_11_Y"
.LASF445:
	.string	"brainpoolP256r1_T_12_X"
.LASF446:
	.string	"brainpoolP256r1_T_12_Y"
.LASF324:
	.string	"secp192k1_T_10_X"
.LASF325:
	.string	"secp192k1_T_10_Y"
.LASF637:
	.string	"mbedtls_ecp_fix_negative"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecp_curves.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
