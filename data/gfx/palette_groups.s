	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

	.include "asm/macros/gfx.inc"
	.include "asm/macros/asm.inc"

	@ Use enum to ifdef differences to EU without having to diff all the palette groups
	enum_start
	enum pal_0
	enum pal_1
	enum pal_2
	enum pal_3
	enum pal_4
	enum pal_5
	enum pal_6
	enum pal_7
	enum pal_8
	enum pal_9
	enum pal_10
	enum pal_11
	enum pal_12
	enum pal_13
	enum pal_14
	enum pal_15
	enum pal_16
	enum pal_17
	enum pal_18
	enum pal_19
	enum pal_20
	enum pal_21
	enum pal_22
	enum pal_23
	enum pal_24
	enum pal_25
	enum pal_26
	enum pal_27
	enum pal_28
	enum pal_29
	enum pal_30
	enum pal_31
	enum pal_32
	enum pal_33
	enum pal_34
	enum pal_35
	enum pal_36
	enum pal_37
	enum pal_38
	enum pal_39
	enum pal_40
	enum pal_41
	enum pal_42
	enum pal_43
	enum pal_44
	enum pal_45
	enum pal_46
	enum pal_47
	enum pal_48
	enum pal_49
	enum pal_50
	enum pal_51
	enum pal_52
	enum pal_53
	enum pal_54
	enum pal_55
	enum pal_56
	enum pal_57
	enum pal_58
	enum pal_59
	enum pal_60
	enum pal_61
	enum pal_62
	enum pal_63
	enum pal_64
	enum pal_65
	enum pal_66
	enum pal_67
	enum pal_68
	enum pal_69
	enum pal_70
	enum pal_71
	enum pal_72
	enum pal_73
	enum pal_74
	enum pal_75
	enum pal_76
	enum pal_77
	enum pal_78
	enum pal_79
	enum pal_80
	enum pal_81
	enum pal_82
	enum pal_83
	enum pal_84
	enum pal_85
	enum pal_86
	enum pal_87
	enum pal_88
	enum pal_89
	enum pal_90
	enum pal_91
	enum pal_92
	enum pal_93
	enum pal_94
	enum pal_95
	enum pal_96
	enum pal_97
	enum pal_98
	enum pal_99
	enum pal_100
	enum pal_101
	enum pal_102
	enum pal_103
	enum pal_104
	enum pal_105
	enum pal_106
	enum pal_107
	enum pal_108
	enum pal_109
	enum pal_110
	enum pal_111
	enum pal_112
	enum pal_113
	enum pal_114
	enum pal_115
	enum pal_116
	enum pal_117
	enum pal_118
	enum pal_119
	enum pal_120
	enum pal_121
	enum pal_122
	enum pal_123
	enum pal_124
	enum pal_125
	enum pal_126
	enum pal_127
	enum pal_128
	enum pal_129
	enum pal_130
	enum pal_131
	enum pal_132
	enum pal_133
	enum pal_134
	enum pal_135
	enum pal_136
	enum pal_137
	enum pal_138
	enum pal_139
	enum pal_140
	enum pal_141
	enum pal_142
	enum pal_143
	enum pal_144
	enum pal_145
	enum pal_146
	enum pal_147
	enum pal_148
	enum pal_149
	enum pal_150
	enum pal_151
	enum pal_152
	enum pal_153
	enum pal_154
	enum pal_155
	enum pal_156
	enum pal_157
	enum pal_158
	enum pal_159
	enum pal_160
	enum pal_161
	enum pal_162
	enum pal_163
	enum pal_164
	enum pal_165
	enum pal_166
	enum pal_167
	enum pal_168
	enum pal_169
	enum pal_170
	enum pal_171
	enum pal_172
	enum pal_173
	enum pal_174
	enum pal_175
	enum pal_176
	enum pal_177
	enum pal_178
	enum pal_179
	enum pal_180
	enum pal_181
	enum pal_182
	enum pal_183
	enum pal_184
	enum pal_185
	enum pal_186
	enum pal_187
	enum pal_188
	enum pal_189
	enum pal_190
	enum pal_191
	enum pal_192
	enum pal_193
	enum pal_194
	enum pal_195
	enum pal_196
	enum pal_197
	enum pal_198
	enum pal_199
	enum pal_200
	enum pal_201
	enum pal_202
	enum pal_203
	enum pal_204
	enum pal_205
	enum pal_206
	enum pal_207
	enum pal_208
	enum pal_209
	enum pal_210
	enum pal_211
	enum pal_212
	enum pal_213
	enum pal_214
	enum pal_215
	enum pal_216
	enum pal_217
	enum pal_218
	enum pal_219
	enum pal_220
	enum pal_221
	enum pal_222
	enum pal_223
	enum pal_224
	enum pal_225
	enum pal_226
	enum pal_227
	enum pal_228
	enum pal_229
	enum pal_230
	enum pal_231
	enum pal_232
	enum pal_233
	enum pal_234
	enum pal_235
	enum pal_236
	enum pal_237
	enum pal_238
	enum pal_239
	enum pal_240
	enum pal_241
	enum pal_242
	enum pal_243
	enum pal_244
	enum pal_245
	enum pal_246
	enum pal_247
	enum pal_248
	enum pal_249
	enum pal_250
	enum pal_251
	enum pal_252
	enum pal_253
	enum pal_254
	enum pal_255
	enum pal_256
	enum pal_257
	enum pal_258
	enum pal_259
	enum pal_260
	enum pal_261
	enum pal_262
	enum pal_263
	enum pal_264
	enum pal_265
	enum pal_266
	enum pal_267
	enum pal_268
	enum pal_269
	enum pal_270
	enum pal_271
	enum pal_272
	enum pal_273
	enum pal_274
	enum pal_275
	enum pal_276
	enum pal_277
	enum pal_278
	enum pal_279
	enum pal_280
	enum pal_281
	enum pal_282
	enum pal_283
	enum pal_284
	enum pal_285
	enum pal_286
	enum pal_287
	enum pal_288
	enum pal_289
	enum pal_290
	enum pal_291
	enum pal_292
	enum pal_293
	enum pal_294
	enum pal_295
	enum pal_296
	enum pal_297
	enum pal_298
	enum pal_299
	enum pal_300
	enum pal_301
	enum pal_302
	enum pal_303
	enum pal_304
	enum pal_305
	enum pal_306
	enum pal_307
	enum pal_308
	enum pal_309
	enum pal_310
	enum pal_311
	enum pal_312
	enum pal_313
	enum pal_314
	enum pal_315
	enum pal_316
	enum pal_317
	enum pal_318
	enum pal_319
	enum pal_320
	enum pal_321
	enum pal_322
	enum pal_323
	enum pal_324
	enum pal_325
	enum pal_326
	enum pal_327
	enum pal_328
	enum pal_329
	enum pal_330
	enum pal_331
	enum pal_332
	enum pal_333
	enum pal_334
	enum pal_335
	enum pal_336
	enum pal_337
	enum pal_338
	enum pal_339
	enum pal_340
	enum pal_341
	enum pal_342
	enum pal_343
	enum pal_344
	enum pal_345
	enum pal_346
	enum pal_347
	enum pal_348
	enum pal_349
	enum pal_350
	enum pal_351
	enum pal_352
	enum pal_353
	enum pal_354
	enum pal_355
	enum pal_356
	enum pal_357
	enum pal_358
	enum pal_359
	enum pal_360
	enum pal_361
	enum pal_362
	enum pal_363
	enum pal_364
	enum pal_365
	enum pal_366
	enum pal_367
	enum pal_368
	enum pal_369
	enum pal_370
	enum pal_371
	enum pal_372
	enum pal_373
	enum pal_374
	enum pal_375
	enum pal_376
	enum pal_377
	enum pal_378
	enum pal_379
	enum pal_380
	enum pal_381
	enum pal_382
	enum pal_383
	enum pal_384
	enum pal_385
	enum pal_386
	enum pal_387
	enum pal_388
	enum pal_389
	enum pal_390
	enum pal_391
	enum pal_392
	enum pal_393
	enum pal_394
	enum pal_395
	enum pal_396
	enum pal_397
	enum pal_398
	enum pal_399
	enum pal_400
	enum pal_401
	enum pal_402
	enum pal_403
	enum pal_404
	enum pal_405
	enum pal_406
	enum pal_407
	enum pal_408
	enum pal_409
	enum pal_410
	enum pal_411
	enum pal_412
	enum pal_413
	enum pal_414
	enum pal_415
	enum pal_416
	enum pal_417
	enum pal_418
	enum pal_419
	enum pal_420
	enum pal_421
	enum pal_422
	enum pal_423
	enum pal_424
	enum pal_425
	enum pal_426
	enum pal_427
	enum pal_428
	enum pal_429
	enum pal_430
	enum pal_431
	enum pal_432
	enum pal_433
	enum pal_434
	enum pal_435
	enum pal_436
	enum pal_437
	enum pal_438
	enum pal_439
	enum pal_440
	enum pal_441
	enum pal_442
	enum pal_443
	enum pal_444
	enum pal_445
	enum pal_446
	enum pal_447
	enum pal_448
	enum pal_449
	enum pal_450
	enum pal_451
	enum pal_452
	enum pal_453
	enum pal_454
	enum pal_455
	enum pal_456
	enum pal_457
	enum pal_458
	enum pal_459
	enum pal_460
	enum pal_461
	enum pal_462
	enum pal_463
	enum pal_464
	enum pal_465
	enum pal_466
	enum pal_467
	enum pal_468
	enum pal_469
	enum pal_470
	enum pal_471
	enum pal_472
	enum pal_473
	enum pal_474
	enum pal_475
	enum pal_476
	enum pal_477
	enum pal_478
	enum pal_479
	enum pal_480
	enum pal_481
	enum pal_482
	enum pal_483
	enum pal_484
	enum pal_485
	enum pal_486
	enum pal_487
	enum pal_488
	enum pal_489
	enum pal_490
	enum pal_491
	enum pal_492
	enum pal_493
	enum pal_494
	enum pal_495
	enum pal_496
	enum pal_497
	enum pal_498
	enum pal_499
	enum pal_500
	enum pal_501
	enum pal_502
	enum pal_503
	enum pal_504
	enum pal_505
	enum pal_506
	enum pal_507
	enum pal_508
	enum pal_509
	enum pal_510
	enum pal_511
	enum pal_512
	enum pal_513
	enum pal_514
	enum pal_515
	enum pal_516
	enum pal_517
	enum pal_518
	enum pal_519
	enum pal_520
	enum pal_521
	enum pal_522
	enum pal_523
	enum pal_524
	enum pal_525
	enum pal_526
	enum pal_527
	enum pal_528
	enum pal_529
	enum pal_530
	enum pal_531
	enum pal_532
	enum pal_533
	enum pal_534
	enum pal_535
	enum pal_536
	enum pal_537
	enum pal_538
	enum pal_539
	enum pal_540
	enum pal_541
	enum pal_542
	enum pal_543
	enum pal_544
	enum pal_545
	enum pal_546
	enum pal_547
	enum pal_548
	enum pal_549
	enum pal_550
	enum pal_551
	enum pal_552
	enum pal_553
	enum pal_554
	enum pal_555
	enum pal_556
	enum pal_557
	enum pal_558
	enum pal_559
	enum pal_560
	enum pal_561
	enum pal_562
	enum pal_563
	enum pal_564
	enum pal_565
	enum pal_566
	enum pal_567
	enum pal_568
	enum pal_569
	enum pal_570
	enum pal_571
	enum pal_572
	enum pal_573
	enum pal_574
	enum pal_575
	enum pal_576
	enum pal_577
	enum pal_578
	enum pal_579
	enum pal_580
	enum pal_581
	enum pal_582
	enum pal_583
	enum pal_584
	enum pal_585
	enum pal_586
	enum pal_587
	enum pal_588
	enum pal_589
	enum pal_590
	enum pal_591
	enum pal_592
	enum pal_593
	enum pal_594
	enum pal_595
	enum pal_596
	enum pal_597
	enum pal_598
	enum pal_599
	enum pal_600
	enum pal_601
	enum pal_602
	enum pal_603
	enum pal_604
	enum pal_605
	enum pal_606
	enum pal_607
	enum pal_608
	enum pal_609
	enum pal_610
	enum pal_611
	enum pal_612
	enum pal_613
	enum pal_614
	enum pal_615
	enum pal_616
	enum pal_617
	enum pal_618
	enum pal_619
	enum pal_620
	enum pal_621
	enum pal_622
	enum pal_623
	enum pal_624
	enum pal_625
	enum pal_626
	enum pal_627
	enum pal_628
	enum pal_629
	enum pal_630
	enum pal_631
	enum pal_632
	enum pal_633
	enum pal_634
	enum pal_635
	enum pal_636
	enum pal_637
	enum pal_638
	enum pal_639
	enum pal_640
	enum pal_641
	enum pal_642
	enum pal_643
	enum pal_644
	enum pal_645
	enum pal_646
	enum pal_647
	enum pal_648
	enum pal_649
	enum pal_650
	enum pal_651
	enum pal_652
	enum pal_653
	enum pal_654
	enum pal_655
	enum pal_656
	enum pal_657
	enum pal_658
	enum pal_659
	enum pal_660
	enum pal_661
	enum pal_662
	enum pal_663
	enum pal_664
	enum pal_665
	enum pal_666
	enum pal_667
	enum pal_668
	enum pal_669
	enum pal_670
	enum pal_671
	enum pal_672
	enum pal_673
	enum pal_674
	enum pal_675
	enum pal_676
	enum pal_677
	enum pal_678
	enum pal_679
	enum pal_680
	enum pal_681
	enum pal_682
	enum pal_683
	enum pal_684
	enum pal_685
	enum pal_686
	enum pal_687
	enum pal_688
	enum pal_689
	enum pal_690
	enum pal_691
	enum pal_692
	enum pal_693
	enum pal_694
	enum pal_695
	enum pal_696
	enum pal_697
	enum pal_698
	enum pal_699
	enum pal_700
	enum pal_701
	enum pal_702
	enum pal_703
	enum pal_704
	enum pal_705
	enum pal_706
	enum pal_707
	enum pal_708
	enum pal_709
	enum pal_710
	enum pal_711
	enum pal_712
	enum pal_713
	enum pal_714
	enum pal_715
	enum pal_716
	enum pal_717
	enum pal_718
	enum pal_719
	enum pal_720
	enum pal_721
	enum pal_722
	enum pal_723
	enum pal_724
	enum pal_725
	enum pal_726
	enum pal_727
	enum pal_728
	enum pal_729
	enum pal_730
	enum pal_731
	enum pal_732
	enum pal_733
	enum pal_734
	enum pal_735
	enum pal_736
	enum pal_737
	enum pal_738
	enum pal_739
	enum pal_740
	enum pal_741
	enum pal_742
	enum pal_743
	enum pal_744
	enum pal_745
	enum pal_746
	enum pal_747
	enum pal_748
	enum pal_749
	enum pal_750
	enum pal_751
	enum pal_752
	enum pal_753
	enum pal_754
	enum pal_755
	enum pal_756
	enum pal_757
	enum pal_758
	enum pal_759
	enum pal_760
	enum pal_761
	enum pal_762
	enum pal_763
	enum pal_764
	enum pal_765
	enum pal_766
	enum pal_767
	enum pal_768
	enum pal_769
	enum pal_770
	enum pal_771
	enum pal_772
	enum pal_773
	enum pal_774
	enum pal_775
	enum pal_776
	enum pal_777
	enum pal_778
	enum pal_779
	enum pal_780
	enum pal_781
	enum pal_782
	enum pal_783
	enum pal_784
	enum pal_785
	enum pal_786
	enum pal_787
	enum pal_788
	enum pal_789
	enum pal_790
	enum pal_791
	enum pal_792
	enum pal_793
	enum pal_794
	enum pal_795
	enum pal_796
	enum pal_797
	enum pal_798
	enum pal_799
	enum pal_800
	enum pal_801
	enum pal_802
	enum pal_803
	enum pal_804
	enum pal_805
	enum pal_806
	enum pal_807
	enum pal_808
	enum pal_809
	enum pal_810
	enum pal_811
	enum pal_812
	enum pal_813
	enum pal_814
	enum pal_815
	enum pal_816
	enum pal_817
	enum pal_818
	enum pal_819
	enum pal_820
	enum pal_821
	enum pal_822
	enum pal_823
	enum pal_824
	enum pal_825
	enum pal_826
	enum pal_827
	enum pal_828
	enum pal_829
	enum pal_830
	enum pal_831
	enum pal_832
	enum pal_833
	enum pal_834
	enum pal_835
	enum pal_836
	enum pal_837
	enum pal_838
	enum pal_839
	enum pal_840
	enum pal_841
	enum pal_842
	enum pal_843
	enum pal_844
	enum pal_845
	enum pal_846
	enum pal_847
	enum pal_848
	enum pal_849
	enum pal_850
	enum pal_851
	enum pal_852
	enum pal_853
	enum pal_854
	enum pal_855
	enum pal_856
	enum pal_857
	enum pal_858
	enum pal_859
	enum pal_860
	enum pal_861
	enum pal_862
	enum pal_863
	enum pal_864
	enum pal_865
	enum pal_866
	enum pal_867
	enum pal_868
	enum pal_869
	enum pal_870
	enum pal_871
	enum pal_872
	enum pal_873
	enum pal_874
	enum pal_875
	enum pal_876
	enum pal_877
	enum pal_878
	enum pal_879
	enum pal_880
	enum pal_881
	enum pal_882
	enum pal_883
	enum pal_884
	enum pal_885
	enum pal_886
	enum pal_887
	enum pal_888
	enum pal_889
	enum pal_890
	enum pal_891
	enum pal_892
	enum pal_893
	enum pal_894
	enum pal_895
	enum pal_896
	enum pal_897
	enum pal_898
	enum pal_899
	enum pal_900
	enum pal_901
	enum pal_902
	enum pal_903
	enum pal_904
	enum pal_905
	enum pal_906
	enum pal_907
	enum pal_908
	enum pal_909
	enum pal_910
	enum pal_911
	enum pal_912
	enum pal_913
	enum pal_914
	enum pal_915
	enum pal_916
	enum pal_917
	enum pal_918
	enum pal_919
	enum pal_920
	enum pal_921
	enum pal_922
	enum pal_923
	enum pal_924
	enum pal_925
	enum pal_926
	enum pal_927
	enum pal_928
	enum pal_929
	enum pal_930
	enum pal_931
	enum pal_932
	enum pal_933
	enum pal_934
	enum pal_935
	enum pal_936
	enum pal_937
	enum pal_938
	enum pal_939
	enum pal_940
	enum pal_941
	enum pal_942
	enum pal_943
	enum pal_944
	enum pal_945
	enum pal_946
	enum pal_947
	enum pal_948
	enum pal_949
	enum pal_950
	enum pal_951
	enum pal_952
	enum pal_953
	enum pal_954
	enum pal_955
	enum pal_956
	enum pal_957
	enum pal_958
	enum pal_959
	enum pal_960
	enum pal_961
	enum pal_962
	enum pal_963
	enum pal_964
	enum pal_965
	enum pal_966
	enum pal_967
	enum pal_968
	enum pal_969
	enum pal_970
	enum pal_971
	enum pal_972
	enum pal_973
	enum pal_974
	enum pal_975
	enum pal_976
	enum pal_977
	enum pal_978
	enum pal_979
	enum pal_980
	enum pal_981
	enum pal_982
	enum pal_983
	enum pal_984
	enum pal_985
	enum pal_986
	enum pal_987
	enum pal_988
	enum pal_989
	enum pal_990
	enum pal_991
	enum pal_992
	enum pal_993
	enum pal_994
	enum pal_995
	enum pal_996
	enum pal_997
	enum pal_998
	enum pal_999
	enum pal_1000
	enum pal_1001
	enum pal_1002
	enum pal_1003
	enum pal_1004
	enum pal_1005
	enum pal_1006
	enum pal_1007
	enum pal_1008
	enum pal_1009
	enum pal_1010
	enum pal_1011
	enum pal_1012
	enum pal_1013
	enum pal_1014
	enum pal_1015
	enum pal_1016
	enum pal_1017
	enum pal_1018
	enum pal_1019
	enum pal_1020
	enum pal_1021
	enum pal_1022
	enum pal_1023
	enum pal_1024
	enum pal_1025
	enum pal_1026
	enum pal_1027
	enum pal_1028
	enum pal_1029
	enum pal_1030
	enum pal_1031
	enum pal_1032
	enum pal_1033
	enum pal_1034
	enum pal_1035
	enum pal_1036
	enum pal_1037
	enum pal_1038
	enum pal_1039
	enum pal_1040
	enum pal_1041
	enum pal_1042
	enum pal_1043
	enum pal_1044
	enum pal_1045
	enum pal_1046
	enum pal_1047
	enum pal_1048
	enum pal_1049
	enum pal_1050
	enum pal_1051
	enum pal_1052
	enum pal_1053
	enum pal_1054
	enum pal_1055
	enum pal_1056
	enum pal_1057
	enum pal_1058
	enum pal_1059
	enum pal_1060
	enum pal_1061
	enum pal_1062
	enum pal_1063
	enum pal_1064
	enum pal_1065
	enum pal_1066
	enum pal_1067
	enum pal_1068
	enum pal_1069
	enum pal_1070
	enum pal_1071
	enum pal_1072
	enum pal_1073
	enum pal_1074
	enum pal_1075
	enum pal_1076
	enum pal_1077
	enum pal_1078
	enum pal_1079
	enum pal_1080
	enum pal_1081
	enum pal_1082
	enum pal_1083
	enum pal_1084
	enum pal_1085
	enum pal_1086
	enum pal_1087
	enum pal_1088
	enum pal_1089
	enum pal_1090
	enum pal_1091
	enum pal_1092
	enum pal_1093
	enum pal_1094
	enum pal_1095
	enum pal_1096
	enum pal_1097
	enum pal_1098
	enum pal_1099
	enum pal_1100
	enum pal_1101
	enum pal_1102
	enum pal_1103
	enum pal_1104
	enum pal_1105
	enum pal_1106
	enum pal_1107
	enum pal_1108
	enum pal_1109
	enum pal_1110
	enum pal_1111
	enum pal_1112
	enum pal_1113
	enum pal_1114
	enum pal_1115
	enum pal_1116
	enum pal_1117
	enum pal_1118
	enum pal_1119
	enum pal_1120
	enum pal_1121
	enum pal_1122
	enum pal_1123
	enum pal_1124
	enum pal_1125
	enum pal_1126
	enum pal_1127
	enum pal_1128
	enum pal_1129
	enum pal_1130
	enum pal_1131
	enum pal_1132
	enum pal_1133
	enum pal_1134
	enum pal_1135
	enum pal_1136
	enum pal_1137
	enum pal_1138
	enum pal_1139
	enum pal_1140
	enum pal_1141
	enum pal_1142
	enum pal_1143
	enum pal_1144
	enum pal_1145
	enum pal_1146
	enum pal_1147
	enum pal_1148
	enum pal_1149
	enum pal_1150
	enum pal_1151
	enum pal_1152
	enum pal_1153
	enum pal_1154
	enum pal_1155
	enum pal_1156
	enum pal_1157
	enum pal_1158
	enum pal_1159
	enum pal_1160
	enum pal_1161
	enum pal_1162
	enum pal_1163
	enum pal_1164
	enum pal_1165
	enum pal_1166
	enum pal_1167
	enum pal_1168
	enum pal_1169
	enum pal_1170
	enum pal_1171
	enum pal_1172
	enum pal_1173
	enum pal_1174
	enum pal_1175
	enum pal_1176
	enum pal_1177
	enum pal_1178
	enum pal_1179
	enum pal_1180
	enum pal_1181
	enum pal_1182
	enum pal_1183
	enum pal_1184
	enum pal_1185
	enum pal_1186
	enum pal_1187
	enum pal_1188
	enum pal_1189
	enum pal_1190
	enum pal_1191
	enum pal_1192
	enum pal_1193
	enum pal_1194
	enum pal_1195
	enum pal_1196
	enum pal_1197
	enum pal_1198
	enum pal_1199
	enum pal_1200
	enum pal_1201
	enum pal_1202
	enum pal_1203
	enum pal_1204
	enum pal_1205
	enum pal_1206
	enum pal_1207
	enum pal_1208
	enum pal_1209
	enum pal_1210
	enum pal_1211
	enum pal_1212
	enum pal_1213
	enum pal_1214
	enum pal_1215
	enum pal_1216
	enum pal_1217
	enum pal_1218
	enum pal_1219
	enum pal_1220
	enum pal_1221
	enum pal_1222
	enum pal_1223
	enum pal_1224
	enum pal_1225
	enum pal_1226
	enum pal_1227
	enum pal_1228
	enum pal_1229
	enum pal_1230
	enum pal_1231
	enum pal_1232
	enum pal_1233
	enum pal_1234
	enum pal_1235
	enum pal_1236
	enum pal_1237
	enum pal_1238
	enum pal_1239
	enum pal_1240
	enum pal_1241
	enum pal_1242
	enum pal_1243
	enum pal_1244
	enum pal_1245
	enum pal_1246
	enum pal_1247
	enum pal_1248
	enum pal_1249
	enum pal_1250
	enum pal_1251
	enum pal_1252
	enum pal_1253
	enum pal_1254
	enum pal_1255
	enum pal_1256
	enum pal_1257
	enum pal_1258
	enum pal_1259
	enum pal_1260
	enum pal_1261
	enum pal_1262
	enum pal_1263
	enum pal_1264
	enum pal_1265
	enum pal_1266
	enum pal_1267
	enum pal_1268
	enum pal_1269
	enum pal_1270
	enum pal_1271
	enum pal_1272
	enum pal_1273
	enum pal_1274
	enum pal_1275
	enum pal_1276
	enum pal_1277
	enum pal_1278
	enum pal_1279
	enum pal_1280
	enum pal_1281
	enum pal_1282
	enum pal_1283
	enum pal_1284
	enum pal_1285
	enum pal_1286
	enum pal_1287
	enum pal_1288
	enum pal_1289
	enum pal_1290
	enum pal_1291
	enum pal_1292
	enum pal_1293
	enum pal_1294
	enum pal_1295
	enum pal_1296
	enum pal_1297
	enum pal_1298
	enum pal_1299
	enum pal_1300
	enum pal_1301
	enum pal_1302
	enum pal_1303
	enum pal_1304
	enum pal_1305
	enum pal_1306
	enum pal_1307
	enum pal_1308
	enum pal_1309
	enum pal_1310
	enum pal_1311
	enum pal_1312
	enum pal_1313
	enum pal_1314
	enum pal_1315
	enum pal_1316
	enum pal_1317
	enum pal_1318
	enum pal_1319
	enum pal_1320
	enum pal_1321
	enum pal_1322
	enum pal_1323
	enum pal_1324
	enum pal_1325
	enum pal_1326
	enum pal_1327
	enum pal_1328
	enum pal_1329
	enum pal_1330
	enum pal_1331
	enum pal_1332
	enum pal_1333
	enum pal_1334
	enum pal_1335
	enum pal_1336
	enum pal_1337
	enum pal_1338
	enum pal_1339
	enum pal_1340
	enum pal_1341
	enum pal_1342
	enum pal_1343
	enum pal_1344
	enum pal_1345
	enum pal_1346
	enum pal_1347
	enum pal_1348
	enum pal_1349
	enum pal_1350
	enum pal_1351
	enum pal_1352
	enum pal_1353
	enum pal_1354
	enum pal_1355
	enum pal_1356
	enum pal_1357
	enum pal_1358
	enum pal_1359
	enum pal_1360
	enum pal_1361
	enum pal_1362
	enum pal_1363
	enum pal_1364
	enum pal_1365
	enum pal_1366
	enum pal_1367
	enum pal_1368
	enum pal_1369
	enum pal_1370
	enum pal_1371
	enum pal_1372
	enum pal_1373
	enum pal_1374
	enum pal_1375
	enum pal_1376
	enum pal_1377
	enum pal_1378
	enum pal_1379
	enum pal_1380
	enum pal_1381
	enum pal_1382
	enum pal_1383
	enum pal_1384
	enum pal_1385
	enum pal_1386
	enum pal_1387
	enum pal_1388
	enum pal_1389
	enum pal_1390
	enum pal_1391
	enum pal_1392
	enum pal_1393
	enum pal_1394
	enum pal_1395
	enum pal_1396
	enum pal_1397
	enum pal_1398
	enum pal_1399
	enum pal_1400
	enum pal_1401
	enum pal_1402
	enum pal_1403
	enum pal_1404
	enum pal_1405
	enum pal_1406
	enum pal_1407
	enum pal_1408
	enum pal_1409
	enum pal_1410
	enum pal_1411
	enum pal_1412
	enum pal_1413
	enum pal_1414
	enum pal_1415
	enum pal_1416
	enum pal_1417
	enum pal_1418
	enum pal_1419
	enum pal_1420
	enum pal_1421
	enum pal_1422
	enum pal_1423
	enum pal_1424
	enum pal_1425
	enum pal_1426
	enum pal_1427
	enum pal_1428
	enum pal_1429
	enum pal_1430
	enum pal_1431
	enum pal_1432
	enum pal_1433
	enum pal_1434
	enum pal_1435
	enum pal_1436
	enum pal_1437
	enum pal_1438
	enum pal_1439
	enum pal_1440
	enum pal_1441
	enum pal_1442
	enum pal_1443
	enum pal_1444
	enum pal_1445
	enum pal_1446
	enum pal_1447
	enum pal_1448
	enum pal_1449
	enum pal_1450
	enum pal_1451
	enum pal_1452
	enum pal_1453
	enum pal_1454
	enum pal_1455
	enum pal_1456
	enum pal_1457
	enum pal_1458
	enum pal_1459
	enum pal_1460
	enum pal_1461
	enum pal_1462
	enum pal_1463
	enum pal_1464
	enum pal_1465
	enum pal_1466
	enum pal_1467
	enum pal_1468
	enum pal_1469
	enum pal_1470
	enum pal_1471
	enum pal_1472
	enum pal_1473
	enum pal_1474
	enum pal_1475
	enum pal_1476
	enum pal_1477
	enum pal_1478
	enum pal_1479
	enum pal_1480
	enum pal_1481
	enum pal_1482
	enum pal_1483
	enum pal_1484
	enum pal_1485
	enum pal_1486
	enum pal_1487
	enum pal_1488
	enum pal_1489
	enum pal_1490
	enum pal_1491
	enum pal_1492
	enum pal_1493
	enum pal_1494
	enum pal_1495
	enum pal_1496
	enum pal_1497
	enum pal_1498
	enum pal_1499
	enum pal_1500
	enum pal_1501
	enum pal_1502
	enum pal_1503
	enum pal_1504
	enum pal_1505
	enum pal_1506
	enum pal_1507
	enum pal_1508
	enum pal_1509
	enum pal_1510
	enum pal_1511
	enum pal_1512
	enum pal_1513
	enum pal_1514
	enum pal_1515
	enum pal_1516
	enum pal_1517
	enum pal_1518
	enum pal_1519
	enum pal_1520
	enum pal_1521
	enum pal_1522
	enum pal_1523
	enum pal_1524
	enum pal_1525
	enum pal_1526
	enum pal_1527
	enum pal_1528
	enum pal_1529
	enum pal_1530
	enum pal_1531
	enum pal_1532
	enum pal_1533
	enum pal_1534
	enum pal_1535
	enum pal_1536
	enum pal_1537
	enum pal_1538
	enum pal_1539
	enum pal_1540
	enum pal_1541
	enum pal_1542
	enum pal_1543
	enum pal_1544
	enum pal_1545
	enum pal_1546
	enum pal_1547
	enum pal_1548
	enum pal_1549
	enum pal_1550
	enum pal_1551
	enum pal_1552
	enum pal_1553
	enum pal_1554
	enum pal_1555
	enum pal_1556
	enum pal_1557
	enum pal_1558
	enum pal_1559
	enum pal_1560
	enum pal_1561
	enum pal_1562
	enum pal_1563
	enum pal_1564
	enum pal_1565
	enum pal_1566
	enum pal_1567
	enum pal_1568
	enum pal_1569
	enum pal_1570
	enum pal_1571
	enum pal_1572
	enum pal_1573
	enum pal_1574
	enum pal_1575
	enum pal_1576
	enum pal_1577
	enum pal_1578
	enum pal_1579
	enum pal_1580
	enum pal_1581
	enum pal_1582
	enum pal_1583
	enum pal_1584
	enum pal_1585
	enum pal_1586
	enum pal_1587
	enum pal_1588
	enum pal_1589
	enum pal_1590
	enum pal_1591
	enum pal_1592
	enum pal_1593
	enum pal_1594
	enum pal_1595
	enum pal_1596
	enum pal_1597
	enum pal_1598
	enum pal_1599
	enum pal_1600
	enum pal_1601
	enum pal_1602
	enum pal_1603
	enum pal_1604
	enum pal_1605
	enum pal_1606
	enum pal_1607
	enum pal_1608
	enum pal_1609
	enum pal_1610
	enum pal_1611
	enum pal_1612
	enum pal_1613
	enum pal_1614
	enum pal_1615
	enum pal_1616
	enum pal_1617
	enum pal_1618
	enum pal_1619
	enum pal_1620
	enum pal_1621
	enum pal_1622
	enum pal_1623
	enum pal_1624
	enum pal_1625
	enum pal_1626
	enum pal_1627
	enum pal_1628
	enum pal_1629
	enum pal_1630
	enum pal_1631
	enum pal_1632
	enum pal_1633
	enum pal_1634
	enum pal_1635
	enum pal_1636
	enum pal_1637
	enum pal_1638
	enum pal_1639
	enum pal_1640
	enum pal_1641
	enum pal_1642
	enum pal_1643
	enum pal_1644
	enum pal_1645
	enum pal_1646
	enum pal_1647
	enum pal_1648
	enum pal_1649
	enum pal_1650
	enum pal_1651
	enum pal_1652
	enum pal_1653
	enum pal_1654
	enum pal_1655
	enum pal_1656
	enum pal_1657
	enum pal_1658
	enum pal_1659
	enum pal_1660
	enum pal_1661
	enum pal_1662
	enum pal_1663
	enum pal_1664
	enum pal_1665
	enum pal_1666
	enum pal_1667
	enum pal_1668
	enum pal_1669
	enum pal_1670
	enum pal_1671
	enum pal_1672
	enum pal_1673
	enum pal_1674
	enum pal_1675
	enum pal_1676
	enum pal_1677
	enum pal_1678
	enum pal_1679
	enum pal_1680
	enum pal_1681
	enum pal_1682
	enum pal_1683
	enum pal_1684
	enum pal_1685
	enum pal_1686
	enum pal_1687
	enum pal_1688
	enum pal_1689
	enum pal_1690
	enum pal_1691
	enum pal_1692
	enum pal_1693
	enum pal_1694
	enum pal_1695
	enum pal_1696
	enum pal_1697
	enum pal_1698
	enum pal_1699
	enum pal_1700
	enum pal_1701
	enum pal_1702
	enum pal_1703
	enum pal_1704
	enum pal_1705
	enum pal_1706
	enum pal_1707
	enum pal_1708
	enum pal_1709
	enum pal_1710
	enum pal_1711
	enum pal_1712
	enum pal_1713
	enum pal_1714
	enum pal_1715
	enum pal_1716
	enum pal_1717
	enum pal_1718
	enum pal_1719
	enum pal_1720
	enum pal_1721
	enum pal_1722
	enum pal_1723
	enum pal_1724
	enum pal_1725
	enum pal_1726
	enum pal_1727
	enum pal_1728
	enum pal_1729
	enum pal_1730
	enum pal_1731
	enum pal_1732
	enum pal_1733
	enum pal_1734
	enum pal_1735
	enum pal_1736
	enum pal_1737
	enum pal_1738
	enum pal_1739
	enum pal_1740
	enum pal_1741
	enum pal_1742
	enum pal_1743
	enum pal_1744
	enum pal_1745
	enum pal_1746
	enum pal_1747
	enum pal_1748
	enum pal_1749
	enum pal_1750
	enum pal_1751
	enum pal_1752
	enum pal_1753
	enum pal_1754
	enum pal_1755
	enum pal_1756
	enum pal_1757
	enum pal_1758
	enum pal_1759
	enum pal_1760
	enum pal_1761
	enum pal_1762
	enum pal_1763
	enum pal_1764
	enum pal_1765
	enum pal_1766
	enum pal_1767
	enum pal_1768
	enum pal_1769
	enum pal_1770
	enum pal_1771
	enum pal_1772
	enum pal_1773
	enum pal_1774
	enum pal_1775
	enum pal_1776
	enum pal_1777
	enum pal_1778
	enum pal_1779
	enum pal_1780
	enum pal_1781
	enum pal_1782
	enum pal_1783
	enum pal_1784
	enum pal_1785
	enum pal_1786
	enum pal_1787
	enum pal_1788
	enum pal_1789
	enum pal_1790
	enum pal_1791
	enum pal_1792
	enum pal_1793
	enum pal_1794
	enum pal_1795
	enum pal_1796
	enum pal_1797
	enum pal_1798
	enum pal_1799
	enum pal_1800
	enum pal_1801
	enum pal_1802
	enum pal_1803
	enum pal_1804
	enum pal_1805
	enum pal_1806
	enum pal_1807
	enum pal_1808
	enum pal_1809
	enum pal_1810
	enum pal_1811
	enum pal_1812
	enum pal_1813
	enum pal_1814
	enum pal_1815
	enum pal_1816
	enum pal_1817
	enum pal_1818
	enum pal_1819
	enum pal_1820
	enum pal_1821
	enum pal_1822
	enum pal_1823
	enum pal_1824
	enum pal_1825
	enum pal_1826
	enum pal_1827
	enum pal_1828
	enum pal_1829
	enum pal_1830
	enum pal_1831
	enum pal_1832
	enum pal_1833
	enum pal_1834
	enum pal_1835
	enum pal_1836
	enum pal_1837
	enum pal_1838
	enum pal_1839
	enum pal_1840
	enum pal_1841
	enum pal_1842
	enum pal_1843
	enum pal_1844
	enum pal_1845
	enum pal_1846
	enum pal_1847
	enum pal_1848
	enum pal_1849
	enum pal_1850
	enum pal_1851
	enum pal_1852
	enum pal_1853
	enum pal_1854
	enum pal_1855
	enum pal_1856
	enum pal_1857
	enum pal_1858
	enum pal_1859
	enum pal_1860
	enum pal_1861
	enum pal_1862
	enum pal_1863
	enum pal_1864
	enum pal_1865
	enum pal_1866
	enum pal_1867
	enum pal_1868
	enum pal_1869
	enum pal_1870
	enum pal_1871
	enum pal_1872
	enum pal_1873
	enum pal_1874
	enum pal_1875
	enum pal_1876
	enum pal_1877
	enum pal_1878
	enum pal_1879
	enum pal_1880
	enum pal_1881
	enum pal_1882
	enum pal_1883
	enum pal_1884
	enum pal_1885
	enum pal_1886
	enum pal_1887
	enum pal_1888
	enum pal_1889
	enum pal_1890
	enum pal_1891
	enum pal_1892
	enum pal_1893
	enum pal_1894
	enum pal_1895
	enum pal_1896
	enum pal_1897
	enum pal_1898
	enum pal_1899
	enum pal_1900
	enum pal_1901
	enum pal_1902
	enum pal_1903
	enum pal_1904
	enum pal_1905
	enum pal_1906
	enum pal_1907
	enum pal_1908
	enum pal_1909
	enum pal_1910
	enum pal_1911
	enum pal_1912
	enum pal_1913
	enum pal_1914
	enum pal_1915
	enum pal_1916
	enum pal_1917
	enum pal_1918
	enum pal_1919
	enum pal_1920
	enum pal_1921
	enum pal_1922
	enum pal_1923
	enum pal_1924
	enum pal_1925
	enum pal_1926
	enum pal_1927
	enum pal_1928
	enum pal_1929
	enum pal_1930
	enum pal_1931
	enum pal_1932
	enum pal_1933
	enum pal_1934
	enum pal_1935
	enum pal_1936
	enum pal_1937
	enum pal_1938
	enum pal_1939
	enum pal_1940
	enum pal_1941
	enum pal_1942
	enum pal_1943
	enum pal_1944
	enum pal_1945
	enum pal_1946
	enum pal_1947
	enum pal_1948
	enum pal_1949
	enum pal_1950
	enum pal_1951
	enum pal_1952
	enum pal_1953
	enum pal_1954
	enum pal_1955
	enum pal_1956
	enum pal_1957
	enum pal_1958
	enum pal_1959
	enum pal_1960
	enum pal_1961
	enum pal_1962
	enum pal_1963
	enum pal_1964
	enum pal_1965
	enum pal_1966
	enum pal_1967
	enum pal_1968
	enum pal_1969
	enum pal_1970
	enum pal_1971
	enum pal_1972
	enum pal_1973
	enum pal_1974
	enum pal_1975
	enum pal_1976
	enum pal_1977
	enum pal_1978
	enum pal_1979
	enum pal_1980
	enum pal_1981
	enum pal_1982
	enum pal_1983
	enum pal_1984
	enum pal_1985
	enum pal_1986
	enum pal_1987
	enum pal_1988
	enum pal_1989
	enum pal_1990
	enum pal_1991
	enum pal_1992
	enum pal_1993
	enum pal_1994
	enum pal_1995
	enum pal_1996
	enum pal_1997
	enum pal_1998
	enum pal_1999
	enum pal_2000
	enum pal_2001
	enum pal_2002
	enum pal_2003
	enum pal_2004
	enum pal_2005
	enum pal_2006
	enum pal_2007
	enum pal_2008
	enum pal_2009
	enum pal_2010
	enum pal_2011
	enum pal_2012
	enum pal_2013
	enum pal_2014
	enum pal_2015
	enum pal_2016
	enum pal_2017
	enum pal_2018
	enum pal_2019
	enum pal_2020
	enum pal_2021
	enum pal_2022
	enum pal_2023
	enum pal_2024
	enum pal_2025
	enum pal_2026
	enum pal_2027
	enum pal_2028
	enum pal_2029
	enum pal_2030
	enum pal_2031
	enum pal_2032
	enum pal_2033
	enum pal_2034
	enum pal_2035
	enum pal_2036
	enum pal_2037
	enum pal_2038
	enum pal_2039
	enum pal_2040
	enum pal_2041
	enum pal_2042
	enum pal_2043
	enum pal_2044
	enum pal_2045
	enum pal_2046
	enum pal_2047
	enum pal_2048
	enum pal_2049
	enum pal_2050
	enum pal_2051
	enum pal_2052
	enum pal_2053
	enum pal_2054
	enum pal_2055
	enum pal_2056
	enum pal_2057
	enum pal_2058
	enum pal_2059
	enum pal_2060
	enum pal_2061
	enum pal_2062
	enum pal_2063
	enum pal_2064
	enum pal_2065
	enum pal_2066
	enum pal_2067
	enum pal_2068
	enum pal_2069
	enum pal_2070
	enum pal_2071
	enum pal_2072
	enum pal_2073
	enum pal_2074
	enum pal_2075
	enum pal_2076
	enum pal_2077
	enum pal_2078
	enum pal_2079
	enum pal_2080
	enum pal_2081
	enum pal_2082
	enum pal_2083
	enum pal_2084
	enum pal_2085
	enum pal_2086
	enum pal_2087
	enum pal_2088
	enum pal_2089
	enum pal_2090
	enum pal_2091
	enum pal_2092
	enum pal_2093
	enum pal_2094
	enum pal_2095
	enum pal_2096
	enum pal_2097
	enum pal_2098
	enum pal_2099
	enum pal_2100
	enum pal_2101
	enum pal_2102
	enum pal_2103
	enum pal_2104
	enum pal_2105
	enum pal_2106
	enum pal_2107
	enum pal_2108
	enum pal_2109
	enum pal_2110
	enum pal_2111
	enum pal_2112
	enum pal_2113
	enum pal_2114
	enum pal_2115
	enum pal_2116
	enum pal_2117
	enum pal_2118
	enum pal_2119
	enum pal_2120
	enum pal_2121
	enum pal_2122
	enum pal_2123
	enum pal_2124
	enum pal_2125
	enum pal_2126
	enum pal_2127
	enum pal_2128
	enum pal_2129
	enum pal_2130
	enum pal_2131
	enum pal_2132
	enum pal_2133
	enum pal_2134
	enum pal_2135
	enum pal_2136
	enum pal_2137
	enum pal_2138
	enum pal_2139
	enum pal_2140
	enum pal_2141
	enum pal_2142
	enum pal_2143
	enum pal_2144
	enum pal_2145
	enum pal_2146
	enum pal_2147
	enum pal_2148
	enum pal_2149
	enum pal_2150
	enum pal_2151
	enum pal_2152
	enum pal_2153
	enum pal_2154
	enum pal_2155
	enum pal_2156
	enum pal_2157
	enum pal_2158
	enum pal_2159
	enum pal_2160
	enum pal_2161
	enum pal_2162
	enum pal_2163
	enum pal_2164
	enum pal_2165
	enum pal_2166
	enum pal_2167
	enum pal_2168
	enum pal_2169
	enum pal_2170
	enum pal_2171
	enum pal_2172
	enum pal_2173
	enum pal_2174
	enum pal_2175
	enum pal_2176
	enum pal_2177
	enum pal_2178
	enum pal_2179
	enum pal_2180
	enum pal_2181
	enum pal_2182
	enum pal_2183
	enum pal_2184
	enum pal_2185
	enum pal_2186
	enum pal_2187
	enum pal_2188
	enum pal_2189
	enum pal_2190
	enum pal_2191
	enum pal_2192
	enum pal_2193
	enum pal_2194
	enum pal_2195
	enum pal_2196
	enum pal_2197
	enum pal_2198
	enum pal_2199
	enum pal_2200
	enum pal_2201
	enum pal_2202
	enum pal_2203
	enum pal_2204
	enum pal_2205
	enum pal_2206
	enum pal_2207
	enum pal_2208
	enum pal_2209
	enum pal_2210
	enum pal_2211
	enum pal_2212
	enum pal_2213
	enum pal_2214
	enum pal_2215
	enum pal_2216
	enum pal_2217
	.ifndef EU
	enum pal_2218
	enum pal_2219
	.endif
	enum pal_2220
	enum pal_2221
	enum pal_2222
	enum pal_2223
	enum pal_2224
	enum pal_2225
	enum pal_2226
	enum pal_2227
	enum pal_2228
	enum pal_2229
	enum pal_2230
	enum pal_2231
	enum pal_2232
	enum pal_2233
	enum pal_2234
	enum pal_2235
	enum pal_2236
	enum pal_2237
	enum pal_2238
	enum pal_2239
	enum pal_2240
	enum pal_2241
	enum pal_2242
	enum pal_2243
	enum pal_2244
	enum pal_2245
	enum pal_2246
	enum pal_2247
	enum pal_2248
	enum pal_2249
	enum pal_2250
	enum pal_2251
	enum pal_2252
	enum pal_2253
	enum pal_2254
	enum pal_2255
	enum pal_2256
	enum pal_2257
	enum pal_2258
	enum pal_2259
	enum pal_2260
	enum pal_2261
	enum pal_2262
	enum pal_2263
	enum pal_2264
	enum pal_2265
	enum pal_2266
	enum pal_2267
	enum pal_2268
	enum pal_2269
	enum pal_2270
	enum pal_2271
	enum pal_2272
	enum pal_2273
	enum pal_2274
	enum pal_2275
	enum pal_2276
	enum pal_2277
	enum pal_2278
	enum pal_2279
	enum pal_2280
	enum pal_2281
	enum pal_2282
	enum pal_2283
	enum pal_2284
	enum pal_2285
	enum pal_2286
	enum pal_2287
	enum pal_2288
	enum pal_2289
	enum pal_2290
	enum pal_2291
	enum pal_2292
	enum pal_2293
	enum pal_2294
	enum pal_2295
	enum pal_2296
	enum pal_2297
	enum pal_2298
	enum pal_2299
	enum pal_2300
	enum pal_2301
	enum pal_2302
	enum pal_2303
	enum pal_2304
	enum pal_2305
	enum pal_2306
	enum pal_2307
	enum pal_2308
	enum pal_2309
	enum pal_2310
	enum pal_2311
	enum pal_2312
	enum pal_2313
	enum pal_2314
	enum pal_2315
	enum pal_2316
	enum pal_2317
	enum pal_2318
	enum pal_2319
	enum pal_2320
	enum pal_2321
	enum pal_2322
	enum pal_2323
	enum pal_2324
	enum pal_2325
	enum pal_2326
	enum pal_2327
	enum pal_2328
	enum pal_2329
	enum pal_2330
	enum pal_2331
	enum pal_2332
	enum pal_2333
	enum pal_2334
	enum pal_2335
	enum pal_2336
	enum pal_2337
	enum pal_2338
	enum pal_2339
	enum pal_2340
	enum pal_2341
	enum pal_2342
	enum pal_2343
	enum pal_2344
	enum pal_2345
	enum pal_2346
	enum pal_2347
	enum pal_2348
	enum pal_2349
	enum pal_2350
	enum pal_2351
	enum pal_2352
	enum pal_2353
	enum pal_2354
	enum pal_2355
	enum pal_2356
	enum pal_2357
	enum pal_2358
	enum pal_2359
	enum pal_2360
	enum pal_2361
	enum pal_2362
	enum pal_2363
	enum pal_2364
	enum pal_2365
	enum pal_2366
	enum pal_2367
	enum pal_2368
	enum pal_2369
	enum pal_2370
	enum pal_2371
	enum pal_2372
	enum pal_2373
	enum pal_2374
	enum pal_2375
	enum pal_2376
	enum pal_2377
	enum pal_2378
	enum pal_2379
	enum pal_2380
	enum pal_2381
	enum pal_2382
	enum pal_2383
	enum pal_2384
	enum pal_2385
	enum pal_2386
	enum pal_2387
	enum pal_2388
	enum pal_2389
	enum pal_2390
	enum pal_2391
	enum pal_2392
	enum pal_2393
	enum pal_2394
	enum pal_2395
	enum pal_2396
	enum pal_2397
	enum pal_2398
	enum pal_2399
	enum pal_2400
	enum pal_2401
	enum pal_2402
	enum pal_2403
	enum pal_2404
	enum pal_2405
	enum pal_2406
	enum pal_2407
	enum pal_2408
	enum pal_2409
	enum pal_2410
	enum pal_2411
	enum pal_2412
	enum pal_2413
	enum pal_2414
	enum pal_2415
	enum pal_2416
	enum pal_2417
	enum pal_2418
	enum pal_2419
	enum pal_2420
	enum pal_2421
	enum pal_2422
	enum pal_2423
	enum pal_2424
	enum pal_2425
	enum pal_2426
	enum pal_2427
	enum pal_2428
	enum pal_2429
	enum pal_2430
	enum pal_2431
	enum pal_2432
	enum pal_2433
	enum pal_2434
	enum pal_2435
	enum pal_2436
	enum pal_2437
	enum pal_2438
	enum pal_2439
	enum pal_2440
	enum pal_2441
	enum pal_2442
	enum pal_2443
	enum pal_2444
	enum pal_2445
	enum pal_2446
	enum pal_2447
	enum pal_2448
	enum pal_2449
	enum pal_2450
	enum pal_2451
	enum pal_2452
	enum pal_2453
	enum pal_2454
	enum pal_2455
	enum pal_2456
	enum pal_2457
	enum pal_2458
	enum pal_2459
	enum pal_2460
	enum pal_2461
	enum pal_2462
	enum pal_2463
	enum pal_2464
	enum pal_2465
	enum pal_2466
	enum pal_2467
	enum pal_2468
	enum pal_2469
	enum pal_2470
	enum pal_2471
	enum pal_2472
	enum pal_2473
	enum pal_2474
	enum pal_2475
	enum pal_2476
	enum pal_2477
	enum pal_2478
	enum pal_2479
	enum pal_2480
	enum pal_2481
	enum pal_2482
	enum pal_2483
	enum pal_2484
	enum pal_2485
	enum pal_2486
	enum pal_2487
	enum pal_2488
	enum pal_2489
	enum pal_2490
	enum pal_2491
	enum pal_2492
	enum pal_2493
	enum pal_2494
	enum pal_2495
	enum pal_2496
	enum pal_2497
	enum pal_2498
	enum pal_2499
	enum pal_2500
	enum pal_2501
	enum pal_2502
	enum pal_2503
	enum pal_2504
	enum pal_2505
	enum pal_2506
	enum pal_2507
	enum pal_2508
	enum pal_2509
	enum pal_2510
	enum pal_2511
	enum pal_2512
	enum pal_2513
	enum pal_2514
	enum pal_2515
	enum pal_2516
	enum pal_2517
	enum pal_2518
	enum pal_2519
	enum pal_2520
	enum pal_2521
	enum pal_2522
	enum pal_2523
	enum pal_2524
	enum pal_2525
	enum pal_2526
	enum pal_2527
	enum pal_2528
	enum pal_2529
	enum pal_2530
	enum pal_2531
	enum pal_2532
	enum pal_2533
	enum pal_2534
	enum pal_2535
	enum pal_2536
	enum pal_2537
	enum pal_2538
	enum pal_2539
	enum pal_2540
	enum pal_2541
	enum pal_2542
	enum pal_2543
	enum pal_2544
	enum pal_2545
	enum pal_2546
	enum pal_2547
	enum pal_2548
	enum pal_2549
	enum pal_2550
	enum pal_2551
	enum pal_2552
	enum pal_2553
	enum pal_2554
	enum pal_2555
	enum pal_2556
	enum pal_2557
	enum pal_2558
	enum pal_2559
	enum pal_2560
	enum pal_2561
	enum pal_2562
	enum pal_2563
	enum pal_2564
	enum pal_2565
	enum pal_2566
	enum pal_2567
	enum pal_2568
	enum pal_2569
	enum pal_2570
	enum pal_2571
	enum pal_2572
	enum pal_2573
	enum pal_2574
	enum pal_2575
	enum pal_2576
	enum pal_2577
	enum pal_2578
	enum pal_2579
	enum pal_2580
	enum pal_2581
	enum pal_2582
	enum pal_2583
	enum pal_2584
	enum pal_2585
	enum pal_2586
	enum pal_2587
	enum pal_2588
	enum pal_2589
	enum pal_2590
	enum pal_2591
	enum pal_2592
	enum pal_2593
	enum pal_2594
	enum pal_2595
	enum pal_2596
	enum pal_2597
	enum pal_2598
	enum pal_2599
	enum pal_2600
	enum pal_2601
	enum pal_2602
	enum pal_2603
	enum pal_2604
	enum pal_2605
	enum pal_2606
	enum pal_2607
	enum pal_2608
	enum pal_2609
	enum pal_2610
	enum pal_2611
	enum pal_2612
	enum pal_2613
	enum pal_2614
	enum pal_2615
	enum pal_2616
	enum pal_2617
	enum pal_2618
	enum pal_2619
	enum pal_2620
	enum pal_2621
	enum pal_2622
	enum pal_2623
	enum pal_2624
	enum pal_2625
	enum pal_2626
	enum pal_2627
	enum pal_2628
	enum pal_2629
	enum pal_2630
	enum pal_2631
	enum pal_2632
	enum pal_2633
	enum pal_2634
	enum pal_2635
	enum pal_2636
	enum pal_2637
	enum pal_2638
	enum pal_2639
	enum pal_2640
	enum pal_2641
	enum pal_2642
	enum pal_2643
	enum pal_2644
	enum pal_2645
	enum pal_2646
	enum pal_2647
	enum pal_2648
	enum pal_2649
	enum pal_2650
	enum pal_2651
	enum pal_2652
	enum pal_2653
	enum pal_2654
	enum pal_2655
	enum pal_2656
	enum pal_2657
	enum pal_2658
	enum pal_2659
	enum pal_2660
	enum pal_2661
	enum pal_2662
	enum pal_2663
	enum pal_2664
	enum pal_2665
	enum pal_2666
	enum pal_2667
	enum pal_2668
	enum pal_2669
	enum pal_2670
	enum pal_2671
	enum pal_2672
	enum pal_2673
	enum pal_2674
	enum pal_2675
	enum pal_2676
	enum pal_2677
	enum pal_2678
	enum pal_2679
	enum pal_2680
	enum pal_2681
	enum pal_2682
	enum pal_2683
	enum pal_2684
	enum pal_2685
	enum pal_2686
	enum pal_2687
	enum pal_2688
	enum pal_2689
	enum pal_2690
	enum pal_2691
	enum pal_2692
	enum pal_2693
	enum pal_2694
	enum pal_2695
	enum pal_2696
	enum pal_2697
	enum pal_2698
	enum pal_2699
	enum pal_2700
	enum pal_2701
	enum pal_2702
	enum pal_2703
	enum pal_2704
	enum pal_2705
	enum pal_2706
	enum pal_2707
	enum pal_2708
	enum pal_2709
	enum pal_2710
	enum pal_2711
	enum pal_2712
	enum pal_2713
	enum pal_2714
	enum pal_2715
	enum pal_2716
	enum pal_2717
	enum pal_2718
	enum pal_2719
	enum pal_2720
	enum pal_2721
	enum pal_2722
	enum pal_2723
	enum pal_2724
	enum pal_2725
	enum pal_2726
	enum pal_2727
	enum pal_2728
	enum pal_2729
	enum pal_2730
	enum pal_2731
	enum pal_2732
	enum pal_2733
	enum pal_2734
	enum pal_2735
	enum pal_2736
	enum pal_2737
	enum pal_2738
	enum pal_2739
	enum pal_2740
	enum pal_2741
	enum pal_2742
	enum pal_2743
	enum pal_2744
	enum pal_2745
	enum pal_2746
	enum pal_2747
	enum pal_2748
	enum pal_2749
	enum pal_2750
	enum pal_2751
	enum pal_2752
	enum pal_2753
	enum pal_2754
	enum pal_2755
	enum pal_2756
	enum pal_2757
	enum pal_2758
	enum pal_2759
	enum pal_2760
	enum pal_2761
	enum pal_2762
	enum pal_2763
	enum pal_2764
	enum pal_2765
	enum pal_2766
	enum pal_2767
	enum pal_2768
	enum pal_2769
	enum pal_2770
	enum pal_2771
	enum pal_2772
	enum pal_2773
	enum pal_2774
	enum pal_2775
	enum pal_2776
	enum pal_2777
	enum pal_2778
	enum pal_2779
	enum pal_2780
	enum pal_2781
	enum pal_2782
	enum pal_2783
	enum pal_2784
	enum pal_2785
	enum pal_2786
	enum pal_2787
	enum pal_2788
	enum pal_2789
	enum pal_2790
	enum pal_2791
	enum pal_2792
	enum pal_2793
	enum pal_2794
	enum pal_2795
	enum pal_2796
	enum pal_2797
	enum pal_2798
	enum pal_2799
	enum pal_2800
	enum pal_2801
	enum pal_2802
	enum pal_2803
	enum pal_2804
	enum pal_2805
	enum pal_2806
	enum pal_2807
	enum pal_2808
	enum pal_2809
	enum pal_2810
	enum pal_2811
	enum pal_2812
	enum pal_2813
	enum pal_2814
	enum pal_2815
	enum pal_2816
	enum pal_2817
	enum pal_2818
	enum pal_2819
	enum pal_2820
	enum pal_2821
	enum pal_2822
	enum pal_2823
	enum pal_2824
	enum pal_2825
	enum pal_2826
	enum pal_2827
	enum pal_2828
	enum pal_2829
	enum pal_2830
	enum pal_2831
	enum pal_2832
	enum pal_2833
	enum pal_2834
	enum pal_2835
	enum pal_2836
	enum pal_2837
	enum pal_2838
	enum pal_2839
	enum pal_2840
	enum pal_2841
	enum pal_2842
	enum pal_2843
	enum pal_2844
	enum pal_2845
	enum pal_2846
	enum pal_2847
	enum pal_2848
	enum pal_2849
	enum pal_2850
	enum pal_2851
	enum pal_2852
	enum pal_2853
	enum pal_2854
	enum pal_2855
	enum pal_2856
	enum pal_2857
	enum pal_2858
	enum pal_2859
	enum pal_2860
	enum pal_2861
	enum pal_2862
	enum pal_2863
	enum pal_2864
	enum pal_2865
	enum pal_2866
	enum pal_2867
	enum pal_2868
	enum pal_2869
	enum pal_2870
	enum pal_2871
	enum pal_2872
	enum pal_2873
	enum pal_2874
	enum pal_2875
	enum pal_2876
	enum pal_2877
	enum pal_2878
	enum pal_2879
	enum pal_2880
	enum pal_2881
	enum pal_2882
	enum pal_2883
	enum pal_2884
	enum pal_2885
	enum pal_2886
	enum pal_2887
	enum pal_2888
	enum pal_2889
	enum pal_2890
	enum pal_2891
	enum pal_2892
	enum pal_2893
	enum pal_2894
	enum pal_2895
	enum pal_2896
	enum pal_2897
	enum pal_2898
	enum pal_2899
	enum pal_2900
	enum pal_2901
	enum pal_2902
	enum pal_2903
	enum pal_2904
	enum pal_2905
	enum pal_2906
	enum pal_2907
	enum pal_2908
	enum pal_2909
	enum pal_2910
	enum pal_2911
	enum pal_2912
	enum pal_2913
	enum pal_2914
	enum pal_2915
	enum pal_2916
	enum pal_2917
	enum pal_2918
	enum pal_2919
	enum pal_2920
	enum pal_2921
	enum pal_2922
	enum pal_2923
	enum pal_2924
	enum pal_2925
	enum pal_2926
	enum pal_2927
	enum pal_2928
	enum pal_2929
	enum pal_2930
	enum pal_2931
	enum pal_2932
	enum pal_2933
	enum pal_2934
	enum pal_2935
	enum pal_2936
	enum pal_2937
	enum pal_2938
	enum pal_2939
	enum pal_2940
	enum pal_2941
	enum pal_2942
	enum pal_2943
	enum pal_2944
	enum pal_2945
	enum pal_2946
	enum pal_2947
	enum pal_2948
	enum pal_2949
	enum pal_2950
	enum pal_2951
	enum pal_2952
	enum pal_2953
	enum pal_2954
	enum pal_2955
	enum pal_2956
	enum pal_2957
	enum pal_2958
	enum pal_2959
	enum pal_2960
	enum pal_2961
	enum pal_2962
	enum pal_2963
	enum pal_2964
	enum pal_2965
	enum pal_2966
	enum pal_2967
	enum pal_2968
	enum pal_2969
	enum pal_2970
	enum pal_2971
	enum pal_2972
	enum pal_2973
	enum pal_2974
	enum pal_2975
	enum pal_2976
	enum pal_2977
	enum pal_2978
	enum pal_2979
	enum pal_2980
	enum pal_2981
	enum pal_2982
	enum pal_2983
	enum pal_2984
	enum pal_2985
	enum pal_2986
	enum pal_2987
	enum pal_2988
	enum pal_2989
	enum pal_2990
	enum pal_2991
	enum pal_2992
	enum pal_2993
	enum pal_2994
	enum pal_2995
	enum pal_2996
	enum pal_2997
	enum pal_2998
	enum pal_2999
	enum pal_3000
	enum pal_3001
	enum pal_3002
	enum pal_3003
	enum pal_3004
	enum pal_3005
	enum pal_3006
	enum pal_3007
	enum pal_3008
	enum pal_3009
	enum pal_3010
	enum pal_3011
	enum pal_3012
	enum pal_3013
	enum pal_3014
	enum pal_3015
	enum pal_3016
	enum pal_3017
	enum pal_3018
	enum pal_3019
	enum pal_3020
	enum pal_3021
	enum pal_3022
	enum pal_3023
	enum pal_3024
	enum pal_3025
	enum pal_3026
	enum pal_3027
	enum pal_3028
	enum pal_3029
	enum pal_3030
	enum pal_3031
	enum pal_3032
	enum pal_3033
	enum pal_3034
	enum pal_3035
	enum pal_3036
	enum pal_3037
	enum pal_3038
	enum pal_3039
	enum pal_3040
	enum pal_3041
	enum pal_3042
	enum pal_3043
	enum pal_3044
	enum pal_3045
	enum pal_3046
	enum pal_3047
	enum pal_3048
	enum pal_3049
	enum pal_3050
	enum pal_3051
	enum pal_3052
	enum pal_3053
	enum pal_3054
	enum pal_3055
	enum pal_3056
	enum pal_3057
	enum pal_3058
	enum pal_3059
	enum pal_3060
	enum pal_3061
	enum pal_3062
	enum pal_3063
	enum pal_3064
	enum pal_3065
	enum pal_3066
	enum pal_3067
	enum pal_3068
	enum pal_3069
	enum pal_3070
	enum pal_3071
	enum pal_3072
	enum pal_3073
	enum pal_3074
	enum pal_3075
	enum pal_3076
	enum pal_3077
	enum pal_3078
	enum pal_3079
	enum pal_3080
	enum pal_3081
	enum pal_3082
	enum pal_3083
	enum pal_3084
	enum pal_3085
	enum pal_3086
	enum pal_3087
	enum pal_3088
	enum pal_3089
	enum pal_3090
	enum pal_3091
	enum pal_3092
	enum pal_3093
	enum pal_3094
	enum pal_3095
	enum pal_3096
	enum pal_3097
	enum pal_3098
	enum pal_3099
	enum pal_3100
	enum pal_3101
	enum pal_3102
	enum pal_3103
	enum pal_3104
	enum pal_3105
	enum pal_3106
	enum pal_3107
	enum pal_3108
	enum pal_3109
	enum pal_3110
	enum pal_3111
	enum pal_3112
	enum pal_3113
	enum pal_3114
	enum pal_3115
	enum pal_3116
	enum pal_3117
	enum pal_3118
	enum pal_3119
	enum pal_3120
	enum pal_3121
	enum pal_3122
	enum pal_3123
	enum pal_3124
	enum pal_3125
	enum pal_3126
	enum pal_3127
	enum pal_3128
	enum pal_3129
	enum pal_3130
	enum pal_3131
	enum pal_3132
	enum pal_3133
	enum pal_3134
	enum pal_3135
	enum pal_3136
	enum pal_3137
	enum pal_3138
	enum pal_3139
	enum pal_3140
	enum pal_3141
	enum pal_3142
	enum pal_3143
	enum pal_3144
	enum pal_3145
	enum pal_3146
	enum pal_3147
	enum pal_3148
	enum pal_3149
	enum pal_3150
	enum pal_3151
	enum pal_3152
	enum pal_3153
	enum pal_3154
	enum pal_3155
	enum pal_3156
	enum pal_3157
	enum pal_3158
	enum pal_3159
	enum pal_3160
	enum pal_3161
	enum pal_3162
	enum pal_3163
	enum pal_3164
	enum pal_3165
	enum pal_3166
	enum pal_3167
	enum pal_3168
	enum pal_3169
	enum pal_3170
	enum pal_3171
	enum pal_3172
	enum pal_3173
	enum pal_3174
	enum pal_3175
	enum pal_3176
	enum pal_3177
	enum pal_3178
	enum pal_3179
	enum pal_3180
	enum pal_3181
	enum pal_3182
	enum pal_3183
	enum pal_3184
	enum pal_3185
	enum pal_3186
	enum pal_3187
	enum pal_3188
	enum pal_3189
	enum pal_3190
	enum pal_3191
	enum pal_3192
	enum pal_3193
	enum pal_3194
	enum pal_3195
	enum pal_3196
	enum pal_3197
	enum pal_3198
	enum pal_3199
	enum pal_3200
	enum pal_3201
	enum pal_3202
	enum pal_3203
	enum pal_3204
	enum pal_3205
	enum pal_3206
	enum pal_3207
	enum pal_3208
	enum pal_3209
	enum pal_3210
	enum pal_3211
	enum pal_3212
	enum pal_3213
	enum pal_3214
	enum pal_3215
	enum pal_3216
	enum pal_3217
	enum pal_3218
	enum pal_3219
	enum pal_3220
	enum pal_3221
	enum pal_3222
	enum pal_3223
	enum pal_3224
	enum pal_3225
	enum pal_3226
	enum pal_3227
	enum pal_3228
	enum pal_3229
	enum pal_3230
	enum pal_3231
	enum pal_3232
	enum pal_3233
	enum pal_3234
	enum pal_3235
	enum pal_3236
	enum pal_3237
	enum pal_3238
	enum pal_3239
	enum pal_3240
	enum pal_3241
	enum pal_3242
	enum pal_3243
	enum pal_3244
	enum pal_3245
	enum pal_3246
	enum pal_3247
	enum pal_3248
	enum pal_3249
	enum pal_3250
	enum pal_3251
	enum pal_3252
	enum pal_3253
	enum pal_3254
	enum pal_3255
	enum pal_3256
	enum pal_3257
	enum pal_3258
	enum pal_3259
	enum pal_3260
	enum pal_3261
	enum pal_3262
	enum pal_3263
	enum pal_3264
	enum pal_3265
	enum pal_3266
	enum pal_3267
	enum pal_3268
	enum pal_3269
	enum pal_3270
	enum pal_3271
	enum pal_3272
	enum pal_3273
	enum pal_3274
	enum pal_3275
	enum pal_3276
	enum pal_3277
	enum pal_3278
	enum pal_3279
	enum pal_3280
	enum pal_3281
	enum pal_3282
	enum pal_3283
	enum pal_3284
	enum pal_3285
	enum pal_3286
	enum pal_3287
	enum pal_3288
	enum pal_3289
	enum pal_3290
	enum pal_3291
	enum pal_3292
	enum pal_3293
	enum pal_3294
	enum pal_3295
	enum pal_3296
	enum pal_3297
	enum pal_3298
	enum pal_3299
	enum pal_3300
	enum pal_3301
	enum pal_3302
	enum pal_3303
	enum pal_3304
	enum pal_3305
	enum pal_3306
	enum pal_3307
	enum pal_3308
	enum pal_3309
	enum pal_3310
	enum pal_3311
	enum pal_3312
	enum pal_3313
	enum pal_3314
	enum pal_3315
	enum pal_3316
	enum pal_3317
	enum pal_3318
	enum pal_3319
	enum pal_3320
	enum pal_3321
	enum pal_3322
	enum pal_3323
	enum pal_3324
	enum pal_3325
	enum pal_3326
	enum pal_3327
	enum pal_3328
	enum pal_3329
	enum pal_3330
	enum pal_3331
	enum pal_3332
	enum pal_3333
	enum pal_3334
	enum pal_3335
	enum pal_3336
	enum pal_3337
	enum pal_3338
	enum pal_3339
	enum pal_3340
	enum pal_3341
	enum pal_3342
	enum pal_3343
	enum pal_3344
	enum pal_3345
	enum pal_3346
	enum pal_3347
	enum pal_3348
	enum pal_3349
	enum pal_3350
	enum pal_3351
	enum pal_3352
	enum pal_3353
	enum pal_3354
	enum pal_3355
	enum pal_3356
	enum pal_3357
	enum pal_3358
	enum pal_3359
	enum pal_3360
	enum pal_3361
	enum pal_3362
	enum pal_3363
	enum pal_3364
	enum pal_3365
	enum pal_3366
	enum pal_3367
	enum pal_3368
	enum pal_3369
	enum pal_3370
	enum pal_3371
	enum pal_3372
	enum pal_3373
	enum pal_3374
	enum pal_3375
	enum pal_3376
	enum pal_3377
	enum pal_3378
	enum pal_3379
	enum pal_3380
	enum pal_3381
	enum pal_3382
	enum pal_3383
	enum pal_3384
	enum pal_3385
	enum pal_3386
	enum pal_3387
	enum pal_3388
	enum pal_3389
	enum pal_3390
	enum pal_3391
	enum pal_3392
	enum pal_3393
	enum pal_3394
	enum pal_3395
	enum pal_3396
	enum pal_3397
	enum pal_3398
	enum pal_3399
	enum pal_3400
	enum pal_3401
	enum pal_3402
	enum pal_3403
	enum pal_3404
	enum pal_3405
	enum pal_3406
	enum pal_3407
	enum pal_3408
	enum pal_3409
	enum pal_3410
	enum pal_3411
	enum pal_3412
	enum pal_3413
	enum pal_3414
	enum pal_3415
	enum pal_3416
	enum pal_3417
	enum pal_3418
	enum pal_3419
	enum pal_3420
	enum pal_3421
	enum pal_3422
	enum pal_3423
	enum pal_3424
	enum pal_3425
	enum pal_3426
	enum pal_3427
	enum pal_3428
	enum pal_3429
	enum pal_3430
	enum pal_3431
	enum pal_3432
	enum pal_3433
	enum pal_3434
	enum pal_3435
	enum pal_3436
	enum pal_3437
	enum pal_3438


gPaletteGroup_1::
	palette_set palette=pal_3388, count=2
	palette_set palette=pal_12, offset=0xf, count=1, terminator=1

gPaletteGroup_2::
	palette_set palette=pal_3390, count=2
	palette_set palette=pal_12, offset=0xf, count=1, terminator=1

gPaletteGroup_3::
	palette_set palette=pal_3396, count=15
	palette_set palette=pal_12, offset=0xf, count=1
	palette_set palette=pal_3437, offset=0x1e, count=1, terminator=1

gPaletteGroup_4::
	palette_set palette=pal_3411, count=15
	palette_set palette=pal_12, offset=0xf, count=1
	palette_set palette=pal_3437, offset=0x1e, count=1, terminator=1

gPaletteGroup_5::
	palette_set palette=pal_3426, offset=0x3, count=1, terminator=1

gPaletteGroup_6::
	palette_set palette=pal_3427, offset=0x3, count=1, terminator=1

gPaletteGroup_7::
	palette_set palette=pal_3428, offset=0x3, count=1, terminator=1

gPaletteGroup_8::
	palette_set palette=pal_3429, offset=0x3, count=1, terminator=1

gPaletteGroup_9::
	palette_set palette=pal_0, count=5
	palette_set palette=pal_2293, offset=0x6, count=5
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_2298, offset=0x16, count=9
	palette_set palette=pal_14, offset=0x1f, count=1, terminator=1

gPaletteGroup_10::
	palette_set palette=pal_0, count=5
	palette_set palette=pal_2293, offset=0x6, count=5
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_3438, offset=0x18, count=1, terminator=1

gPaletteGroup_12::
	palette_set palette=pal_12, offset=0xf, count=1, terminator=1

gPaletteGroup_11::
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_0, count=5, terminator=1

gPaletteGroup_28::
	palette_set palette=pal_354, offset=0x2, count=13, terminator=1

gPaletteGroup_39::
	palette_set palette=pal_380, offset=0x2, count=13, terminator=1

gPaletteGroup_21::
	palette_set palette=pal_367, offset=0x2, count=13, terminator=1

gPaletteGroup_20::
	palette_set palette=pal_393, offset=0x2, count=13, terminator=1

gPaletteGroup_14::
	palette_set palette=pal_1118, offset=0x2, count=13, terminator=1

gPaletteGroup_22::
	palette_set palette=pal_1118, offset=0x2, count=13, terminator=1

gPaletteGroup_23::
	palette_set palette=pal_1131, offset=0x2, count=13, terminator=1

gPaletteGroup_24::
	palette_set palette=pal_1144, offset=0x2, count=13, terminator=1

gPaletteGroup_25::
	palette_set palette=pal_1157, offset=0x2, count=13, terminator=1

gPaletteGroup_61::
	palette_set palette=pal_1170, offset=0x2, count=13, terminator=1

gPaletteGroup_27::
	palette_set palette=pal_406, offset=0x2, count=13, terminator=1

gPaletteGroup_170::
	palette_set palette=pal_419, offset=0x2, count=13, terminator=1

gPaletteGroup_54::
	palette_set palette=pal_432, offset=0x2, count=13, terminator=1

gPaletteGroup_18::
	palette_set palette=pal_1183, offset=0x2, count=13, terminator=1

gPaletteGroup_63::
	palette_set palette=pal_1196, offset=0x2, count=13, terminator=1

gPaletteGroup_64::
	palette_set palette=pal_1209, offset=0x2, count=13, terminator=1

gPaletteGroup_65::
	palette_set palette=pal_1222, offset=0x2, count=13, terminator=1

gPaletteGroup_66::
	palette_set palette=pal_1235, offset=0x2, count=13, terminator=1

gPaletteGroup_93::
	palette_set palette=pal_1248, offset=0x2, count=13, terminator=1

gPaletteGroup_15::
	palette_set palette=pal_685, offset=0x2, count=13, terminator=1

gPaletteGroup_109::
	palette_set palette=pal_698, offset=0x2, count=13, terminator=1

gPaletteGroup_17::
	palette_set palette=pal_711, offset=0x2, count=13, terminator=1

gPaletteGroup_26::
	palette_set palette=pal_724, offset=0x2, count=13, terminator=1

gPaletteGroup_90::
	palette_set palette=pal_737, offset=0x2, count=13, terminator=1

gPaletteGroup_36::
	palette_set palette=pal_750, offset=0x2, count=13, terminator=1

gPaletteGroup_37::
	palette_set palette=pal_763, offset=0x2, count=13, terminator=1

gPaletteGroup_128::
	palette_set palette=pal_776, offset=0x2, count=13, terminator=1

gPaletteGroup_94::
	palette_set palette=pal_789, offset=0x2, count=13, terminator=1

gPaletteGroup_55::
	palette_set palette=pal_802, offset=0x2, count=13, terminator=1

gPaletteGroup_104::
	palette_set palette=pal_815, offset=0x2, count=13, terminator=1

gPaletteGroup_130::
	palette_set palette=pal_828, offset=0x2, count=13, terminator=1

gPaletteGroup_60::
	palette_set palette=pal_845, offset=0x2, count=13, terminator=1

gPaletteGroup_56::
	palette_set palette=pal_858, offset=0x2, count=13, terminator=1

gPaletteGroup_162::
	palette_set palette=pal_1105, offset=0x2, count=13, terminator=1

gPaletteGroup_57::
	palette_set palette=pal_871, offset=0x2, count=13, terminator=1

gPaletteGroup_58::
	palette_set palette=pal_884, offset=0x2, count=13, terminator=1

gPaletteGroup_145::
	palette_set palette=pal_897, offset=0x2, count=13, terminator=1

gPaletteGroup_59::
	palette_set palette=pal_910, offset=0x2, count=13, terminator=1

gPaletteGroup_144::
	palette_set palette=pal_962, offset=0x2, count=13, terminator=1

gPaletteGroup_180::
	palette_set palette=pal_923, offset=0x2, count=13, terminator=1

gPaletteGroup_155::
	palette_set palette=pal_936, offset=0x2, count=13, terminator=1

gPaletteGroup_156::
	palette_set palette=pal_949, offset=0x2, count=13, terminator=1

gPaletteGroup_169::
	palette_set palette=pal_975, offset=0x2, count=13, terminator=1

gPaletteGroup_105::
	palette_set palette=pal_988, offset=0x2, count=13, terminator=1

gPaletteGroup_106::
	palette_set palette=pal_1001, offset=0x2, count=13, terminator=1

gPaletteGroup_107::
	palette_set palette=pal_1014, offset=0x2, count=13, terminator=1

gPaletteGroup_108::
	palette_set palette=pal_1027, offset=0x2, count=13, terminator=1

gPaletteGroup_120::
	palette_set palette=pal_1040, offset=0x2, count=13, terminator=1

gPaletteGroup_163::
	palette_set palette=pal_1053, offset=0x2, count=13, terminator=1

gPaletteGroup_164::
	palette_set palette=pal_1066, offset=0x2, count=13, terminator=1

gPaletteGroup_165::
	palette_set palette=pal_1079, offset=0x2, count=13, terminator=1

gPaletteGroup_166::
	palette_set palette=pal_1092, offset=0x2, count=13, terminator=1

gPaletteGroup_16::
	palette_set palette=pal_445, offset=0x2, count=13, terminator=1

gPaletteGroup_46::
	palette_set palette=pal_458, offset=0x2, count=13, terminator=1

gPaletteGroup_67::
	palette_set palette=pal_471, offset=0x2, count=13, terminator=1

gPaletteGroup_85::
	palette_set palette=pal_484, offset=0x2, count=13, terminator=1

gPaletteGroup_19::
	palette_set palette=pal_497, offset=0x2, count=13, terminator=1

gPaletteGroup_29::
	palette_set palette=pal_536, offset=0x2, count=13, terminator=1

gPaletteGroup_30::
	palette_set palette=pal_549, offset=0x2, count=13, terminator=1

gPaletteGroup_33::
	palette_set palette=pal_588, offset=0x2, count=13, terminator=1

gPaletteGroup_99::
	palette_set palette=pal_601, offset=0x2, count=13, terminator=1

gPaletteGroup_100::
	palette_set palette=pal_510, offset=0x2, count=13, terminator=1

gPaletteGroup_167::
	palette_set palette=pal_523, offset=0x2, count=13, terminator=1

gPaletteGroup_44::
	palette_set palette=pal_575, offset=0x2, count=13, terminator=1

gPaletteGroup_31::
	palette_set palette=pal_614, offset=0x2, count=13, terminator=1

gPaletteGroup_32::
	palette_set palette=pal_627, offset=0x2, count=13, terminator=1

gPaletteGroup_38::
	palette_set palette=pal_640, offset=0x2, count=13, terminator=1

gPaletteGroup_41::
	palette_set palette=pal_666, offset=0x2, count=13, terminator=1

gPaletteGroup_62::
	palette_set palette=pal_1921, offset=0x2, count=13, terminator=1

gPaletteGroup_92::
	palette_set palette=pal_1934, offset=0x2, count=13, terminator=1

gPaletteGroup_102::
	palette_set palette=pal_1947, offset=0x2, count=13, terminator=1

gPaletteGroup_103::
	palette_set palette=pal_1960, offset=0x2, count=13, terminator=1

gPaletteGroup_51::
	palette_set palette=pal_1262, offset=0x2, count=13, terminator=1

gPaletteGroup_52::
	palette_set palette=pal_1275, offset=0x2, count=13, terminator=1

gPaletteGroup_89::
	palette_set palette=pal_1288, offset=0x2, count=13, terminator=1

gPaletteGroup_157::
	palette_set palette=pal_1301, offset=0x2, count=13, terminator=1

gPaletteGroup_168::
	palette_set palette=pal_1314, offset=0x2, count=13, terminator=1

gPaletteGroup_53::
	palette_set palette=pal_1327, offset=0x2, count=13, terminator=1

gPaletteGroup_13::
	palette_set palette=pal_1340, offset=0x2, count=13, terminator=1

gPaletteGroup_45::
	palette_set palette=pal_1353, offset=0x2, count=13, terminator=1

gPaletteGroup_146::
	palette_set palette=pal_1366, offset=0x2, count=13, terminator=1

gPaletteGroup_147::
	palette_set palette=pal_1379, offset=0x2, count=13, terminator=1

gPaletteGroup_148::
	palette_set palette=pal_1392, offset=0x2, count=13, terminator=1

gPaletteGroup_149::
	palette_set palette=pal_1405, offset=0x2, count=13, terminator=1

gPaletteGroup_150::
	palette_set palette=pal_1418, offset=0x2, count=13, terminator=1

gPaletteGroup_34::
	palette_set palette=pal_1431, offset=0x2, count=13, terminator=1

gPaletteGroup_151::
	palette_set palette=pal_1444, offset=0x2, count=13, terminator=1

gPaletteGroup_152::
	palette_set palette=pal_1457, offset=0x2, count=13, terminator=1

gPaletteGroup_153::
	palette_set palette=pal_1470, offset=0x2, count=13, terminator=1

gPaletteGroup_154::
	palette_set palette=pal_1483, offset=0x2, count=13, terminator=1

gPaletteGroup_35::
	palette_set palette=pal_1908, offset=0x2, count=13, terminator=1

gPaletteGroup_101::
	palette_set palette=pal_1973, offset=0x2, count=13, terminator=1

gPaletteGroup_110::
	palette_set palette=pal_1986, offset=0x2, count=13, terminator=1

gPaletteGroup_121::
	palette_set palette=pal_1496, offset=0x2, count=13, terminator=1

gPaletteGroup_125::
	palette_set palette=pal_1999, offset=0x2, count=13, terminator=1

gPaletteGroup_126::
	palette_set palette=pal_1509, offset=0x2, count=13, terminator=1

gPaletteGroup_127::
	palette_set palette=pal_1522, offset=0x2, count=13, terminator=1

gPaletteGroup_131::
	palette_set palette=pal_2012, offset=0x2, count=13, terminator=1

gPaletteGroup_132::
	palette_set palette=pal_2025, offset=0x2, count=13, terminator=1

gPaletteGroup_133::
	palette_set palette=pal_2038, offset=0x2, count=13, terminator=1

gPaletteGroup_158::
	palette_set palette=pal_2051, offset=0x2, count=13, terminator=1

gPaletteGroup_159::
	palette_set palette=pal_2064, offset=0x2, count=13, terminator=1

gPaletteGroup_160::
	palette_set palette=pal_2077, offset=0x2, count=13, terminator=1

gPaletteGroup_161::
	palette_set palette=pal_1535, offset=0x2, count=13, terminator=1

gPaletteGroup_111::
	palette_set palette=pal_2090, offset=0xb, count=1, terminator=1

gPaletteGroup_112::
	palette_set palette=pal_2091, offset=0xb, count=1, terminator=1

gPaletteGroup_113::
	palette_set palette=pal_2092, offset=0xb, count=1, terminator=1

gPaletteGroup_114::
	palette_set palette=pal_2093, offset=0xb, count=1, terminator=1

gPaletteGroup_95::
	palette_set palette=pal_2124, count=16, terminator=1

gPaletteGroup_96::
	palette_set palette=pal_2143, count=16, terminator=1

gPaletteGroup_97::
	palette_set palette=pal_2162, count=16, terminator=1

gPaletteGroup_98::
	palette_set palette=pal_2181, count=16, terminator=1

gPaletteGroup_68::
	palette_set palette=pal_1548, offset=0x3, count=12, terminator=1

gPaletteGroup_69::
	palette_set palette=pal_1560, offset=0x3, count=12, terminator=1

gPaletteGroup_70::
	palette_set palette=pal_1572, offset=0x3, count=12, terminator=1

gPaletteGroup_71::
	palette_set palette=pal_1584, offset=0x3, count=12, terminator=1

gPaletteGroup_72::
	palette_set palette=pal_1596, offset=0x3, count=12, terminator=1

gPaletteGroup_73::
	palette_set palette=pal_1608, offset=0x3, count=12, terminator=1

gPaletteGroup_74::
	palette_set palette=pal_1620, offset=0x3, count=12, terminator=1

gPaletteGroup_75::
	palette_set palette=pal_1632, offset=0x3, count=12, terminator=1

gPaletteGroup_76::
	palette_set palette=pal_1644, offset=0x3, count=12, terminator=1

gPaletteGroup_86::
	palette_set palette=pal_1656, offset=0x3, count=12, terminator=1

gPaletteGroup_87::
	palette_set palette=pal_1668, offset=0x3, count=12, terminator=1

gPaletteGroup_88::
	palette_set palette=pal_1680, offset=0x3, count=12, terminator=1

gPaletteGroup_77::
	palette_set palette=pal_1692, offset=0x3, count=12, terminator=1

gPaletteGroup_78::
	palette_set palette=pal_1704, offset=0x3, count=12, terminator=1

gPaletteGroup_79::
	palette_set palette=pal_1716, offset=0x3, count=12, terminator=1

gPaletteGroup_80::
	palette_set palette=pal_1728, offset=0x3, count=12, terminator=1

gPaletteGroup_81::
	palette_set palette=pal_1740, offset=0x3, count=12, terminator=1

gPaletteGroup_82::
	palette_set palette=pal_1752, offset=0x3, count=12, terminator=1

gPaletteGroup_83::
	palette_set palette=pal_1764, offset=0x3, count=12, terminator=1

gPaletteGroup_84::
	palette_set palette=pal_1776, offset=0x3, count=12, terminator=1

gPaletteGroup_115::
	palette_set palette=pal_1788, offset=0x3, count=12, terminator=1

gPaletteGroup_116::
	palette_set palette=pal_1800, offset=0x3, count=12, terminator=1

gPaletteGroup_117::
	palette_set palette=pal_1812, offset=0x3, count=12, terminator=1

gPaletteGroup_118::
	palette_set palette=pal_1824, offset=0x3, count=12, terminator=1

gPaletteGroup_119::
	palette_set palette=pal_1836, offset=0x3, count=12, terminator=1

gPaletteGroup_129::
	palette_set palette=pal_1848, offset=0x3, count=12, terminator=1

gPaletteGroup_124::
	palette_set palette=pal_1860, offset=0x3, count=12, terminator=1

gPaletteGroup_123::
	palette_set palette=pal_1872, offset=0x3, count=12, terminator=1

gPaletteGroup_122::
	palette_set palette=pal_1884, offset=0x3, count=12, terminator=1

gPaletteGroup_40::
	palette_set palette=pal_2204, count=8, terminator=1

gPaletteGroup_42::
	palette_set palette=pal_2094, offset=0x5, count=3, terminator=1

gPaletteGroup_43::
	palette_set palette=pal_2097, offset=0x5, count=3, terminator=1

gPaletteGroup_47::
	palette_set palette=pal_5, offset=0x1f, count=1, terminator=1

gPaletteGroup_48::
	palette_set palette=pal_6, offset=0x1f, count=1, terminator=1

gPaletteGroup_49::
	palette_set palette=pal_7, offset=0x1f, count=1, terminator=1

gPaletteGroup_50::
	palette_set palette=pal_8, offset=0x1f, count=1, terminator=1

gPaletteGroup_91::
	palette_set palette=pal_562, offset=0x2, count=13, terminator=1

gPaletteGroup_134::
	palette_set palette=pal_2100, offset=0x9, count=6, terminator=1

gPaletteGroup_135::
	palette_set palette=pal_2106, offset=0x9, count=6, terminator=1

gPaletteGroup_136::
	palette_set palette=pal_2112, offset=0x9, count=6, terminator=1

gPaletteGroup_137::
	palette_set palette=pal_2118, offset=0x9, count=6, terminator=1

gPaletteGroup_138::
	palette_set palette=pal_2307, offset=0x6, count=9, terminator=1

gPaletteGroup_139::
	palette_set palette=pal_2316, offset=0x6, count=9, terminator=1

gPaletteGroup_140::
	palette_set palette=pal_2325, offset=0x6, count=9, terminator=1

gPaletteGroup_141::
	palette_set palette=pal_2334, offset=0x6, count=9, terminator=1

gPaletteGroup_142::
	palette_set palette=pal_2343, offset=0x6, count=9, terminator=1

gPaletteGroup_143::
	palette_set palette=pal_2352, offset=0x6, count=9, terminator=1

gPaletteGroup_171::
	palette_set palette=pal_2361, offset=0x7, count=8, terminator=1

gPaletteGroup_172::
	palette_set palette=pal_2369, offset=0x7, count=8, terminator=1

gPaletteGroup_173::
	palette_set palette=pal_2377, offset=0x7, count=8, terminator=1

gPaletteGroup_174::
	palette_set palette=pal_2385, offset=0x7, count=8, terminator=1

gPaletteGroup_175::
	palette_set palette=pal_2393, offset=0x7, count=8, terminator=1

gPaletteGroup_176::
	palette_set palette=pal_2401, offset=0x7, count=8, terminator=1

gPaletteGroup_177::
	palette_set palette=pal_2409, offset=0x7, count=8, terminator=1

gPaletteGroup_178::
	palette_set palette=pal_2417, offset=0x7, count=8, terminator=1

gPaletteGroup_179::
	palette_set palette=pal_2425, offset=0x7, count=8, terminator=1

gPaletteGroup_181::
	palette_set palette=pal_0, count=4
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_0, offset=0x10, count=5, terminator=1

gPaletteGroup_182::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2220, offset=0x15, count=6, terminator=1

gPaletteGroup_183::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2220, offset=0x15, count=6
	palette_set palette=pal_13, offset=0x1e, count=1, terminator=1

gPaletteGroup_184::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2254, offset=0xb, count=2
	palette_set palette=pal_2220, offset=0x15, count=6, terminator=1

gPaletteGroup_185::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2217, offset=0x5, count=1
	palette_set palette=pal_2226, offset=0x6, count=7
	palette_set palette=pal_2220, offset=0x15, count=6
	palette_set palette=pal_14, offset=0x17, count=1, terminator=1

gPaletteGroup_186::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2233, offset=0xc, count=1, terminator=1

gPaletteGroup_187::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2233, offset=0xc, count=1, terminator=1

gPaletteGroup_188::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2234, offset=0xb, count=2, terminator=1

gPaletteGroup_189::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2234, offset=0xb, count=2, terminator=1

gPaletteGroup_190::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2236, offset=0x9, count=4, terminator=1

gPaletteGroup_191::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2240, offset=0x9, count=4, terminator=1

gPaletteGroup_192::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2240, offset=0x9, count=4, terminator=1

gPaletteGroup_193::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2244, offset=0xa, count=3, terminator=1

gPaletteGroup_194::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2240, offset=0x9, count=4, terminator=1

gPaletteGroup_195::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2244, offset=0xa, count=3, terminator=1

gPaletteGroup_196::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2240, offset=0x9, count=4, terminator=1

gPaletteGroup_197::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2236, offset=0x9, count=4, terminator=1

gPaletteGroup_198::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2240, offset=0x9, count=4, terminator=1

gPaletteGroup_199::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2240, offset=0x9, count=4, terminator=1

gPaletteGroup_200::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2247, offset=0xb, count=2, terminator=1

gPaletteGroup_201::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2249, offset=0xa, count=3, terminator=1

gPaletteGroup_202::
	palette_set palette=pal_2215, offset=0xd, count=2
	palette_set palette=pal_2252, offset=0xb, count=2, terminator=1

gPaletteGroup_203::
	palette_set palette=pal_0, count=5
	palette_set palette=pal_2256, offset=0xb, count=2
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_2258, offset=0x15, count=1, terminator=1

gPaletteGroup_204::
	palette_set palette=pal_0, count=5
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_2258, offset=0x15, count=1, terminator=1

gPaletteGroup_205::
	palette_set palette=pal_0, count=5
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_157, offset=0x18, count=1
	palette_set palette=pal_158, offset=0x19, count=1
	palette_set palette=pal_159, offset=0x1a, count=1
	palette_set palette=pal_160, offset=0x1b, count=1
	palette_set palette=pal_161, offset=0x1c, count=1
	palette_set palette=pal_162, offset=0x1d, count=1
	palette_set palette=pal_163, offset=0x1e, count=1
	palette_set palette=pal_164, offset=0x1f, count=1, terminator=1

gPaletteGroup_206::
	palette_set palette=pal_11, offset=0xc, count=1
	palette_set palette=pal_2433, offset=0x13, count=1, terminator=1

.ifndef EU
gPaletteGroup_207::
	palette_set palette=pal_0, count=4
	palette_set palette=pal_0, offset=0x10, count=5
	palette_set palette=pal_2218, offset=0xc, count=2, terminator=1
.endif

gPaletteGroups::
	.4byte 0
	.4byte gPaletteGroup_1
	.4byte gPaletteGroup_2
	.4byte gPaletteGroup_3
	.4byte gPaletteGroup_4
	.4byte gPaletteGroup_5
	.4byte gPaletteGroup_6
	.4byte gPaletteGroup_7
	.4byte gPaletteGroup_8
	.4byte gPaletteGroup_9
	.4byte gPaletteGroup_10
	.4byte gPaletteGroup_11
	.4byte gPaletteGroup_12
	.4byte gPaletteGroup_13
	.4byte gPaletteGroup_14
	.4byte gPaletteGroup_15
	.4byte gPaletteGroup_16
	.4byte gPaletteGroup_17
	.4byte gPaletteGroup_18
	.4byte gPaletteGroup_19
	.4byte gPaletteGroup_20
	.4byte gPaletteGroup_21
	.4byte gPaletteGroup_22
	.4byte gPaletteGroup_23
	.4byte gPaletteGroup_24
	.4byte gPaletteGroup_25
	.4byte gPaletteGroup_26
	.4byte gPaletteGroup_27
	.4byte gPaletteGroup_28
	.4byte gPaletteGroup_29
	.4byte gPaletteGroup_30
	.4byte gPaletteGroup_31
	.4byte gPaletteGroup_32
	.4byte gPaletteGroup_33
	.4byte gPaletteGroup_34
	.4byte gPaletteGroup_35
	.4byte gPaletteGroup_36
	.4byte gPaletteGroup_37
	.4byte gPaletteGroup_38
	.4byte gPaletteGroup_39
	.4byte gPaletteGroup_40
	.4byte gPaletteGroup_41
	.4byte gPaletteGroup_42
	.4byte gPaletteGroup_43
	.4byte gPaletteGroup_44
	.4byte gPaletteGroup_45
	.4byte gPaletteGroup_46
	.4byte gPaletteGroup_47
	.4byte gPaletteGroup_48
	.4byte gPaletteGroup_49
	.4byte gPaletteGroup_50
	.4byte gPaletteGroup_51
	.4byte gPaletteGroup_52
	.4byte gPaletteGroup_53
	.4byte gPaletteGroup_54
	.4byte gPaletteGroup_55
	.4byte gPaletteGroup_56
	.4byte gPaletteGroup_57
	.4byte gPaletteGroup_58
	.4byte gPaletteGroup_59
	.4byte gPaletteGroup_60
	.4byte gPaletteGroup_61
	.4byte gPaletteGroup_62
	.4byte gPaletteGroup_63
	.4byte gPaletteGroup_64
	.4byte gPaletteGroup_65
	.4byte gPaletteGroup_66
	.4byte gPaletteGroup_67
	.4byte gPaletteGroup_68
	.4byte gPaletteGroup_69
	.4byte gPaletteGroup_70
	.4byte gPaletteGroup_71
	.4byte gPaletteGroup_72
	.4byte gPaletteGroup_73
	.4byte gPaletteGroup_74
	.4byte gPaletteGroup_75
	.4byte gPaletteGroup_76
	.4byte gPaletteGroup_77
	.4byte gPaletteGroup_78
	.4byte gPaletteGroup_79
	.4byte gPaletteGroup_80
	.4byte gPaletteGroup_81
	.4byte gPaletteGroup_82
	.4byte gPaletteGroup_83
	.4byte gPaletteGroup_84
	.4byte gPaletteGroup_85
	.4byte gPaletteGroup_86
	.4byte gPaletteGroup_87
	.4byte gPaletteGroup_88
	.4byte gPaletteGroup_89
	.4byte gPaletteGroup_90
	.4byte gPaletteGroup_91
	.4byte gPaletteGroup_92
	.4byte gPaletteGroup_93
	.4byte gPaletteGroup_94
	.4byte gPaletteGroup_95
	.4byte gPaletteGroup_96
	.4byte gPaletteGroup_97
	.4byte gPaletteGroup_98
	.4byte gPaletteGroup_99
	.4byte gPaletteGroup_100
	.4byte gPaletteGroup_101
	.4byte gPaletteGroup_102
	.4byte gPaletteGroup_103
	.4byte gPaletteGroup_104
	.4byte gPaletteGroup_105
	.4byte gPaletteGroup_106
	.4byte gPaletteGroup_107
	.4byte gPaletteGroup_108
	.4byte gPaletteGroup_109
	.4byte gPaletteGroup_110
	.4byte gPaletteGroup_111
	.4byte gPaletteGroup_112
	.4byte gPaletteGroup_113
	.4byte gPaletteGroup_114
	.4byte gPaletteGroup_115
	.4byte gPaletteGroup_116
	.4byte gPaletteGroup_117
	.4byte gPaletteGroup_118
	.4byte gPaletteGroup_119
	.4byte gPaletteGroup_120
	.4byte gPaletteGroup_121
	.4byte gPaletteGroup_122
	.4byte gPaletteGroup_123
	.4byte gPaletteGroup_124
	.4byte gPaletteGroup_125
	.4byte gPaletteGroup_126
	.4byte gPaletteGroup_127
	.4byte gPaletteGroup_128
	.4byte gPaletteGroup_129
	.4byte gPaletteGroup_130
	.4byte gPaletteGroup_131
	.4byte gPaletteGroup_132
	.4byte gPaletteGroup_133
	.4byte gPaletteGroup_134
	.4byte gPaletteGroup_135
	.4byte gPaletteGroup_136
	.4byte gPaletteGroup_137
	.4byte gPaletteGroup_138
	.4byte gPaletteGroup_139
	.4byte gPaletteGroup_140
	.4byte gPaletteGroup_141
	.4byte gPaletteGroup_142
	.4byte gPaletteGroup_143
	.4byte gPaletteGroup_144
	.4byte gPaletteGroup_145
	.4byte gPaletteGroup_146
	.4byte gPaletteGroup_147
	.4byte gPaletteGroup_148
	.4byte gPaletteGroup_149
	.4byte gPaletteGroup_150
	.4byte gPaletteGroup_151
	.4byte gPaletteGroup_152
	.4byte gPaletteGroup_153
	.4byte gPaletteGroup_154
	.4byte gPaletteGroup_155
	.4byte gPaletteGroup_156
	.4byte gPaletteGroup_157
	.4byte gPaletteGroup_158
	.4byte gPaletteGroup_159
	.4byte gPaletteGroup_160
	.4byte gPaletteGroup_161
	.4byte gPaletteGroup_162
	.4byte gPaletteGroup_163
	.4byte gPaletteGroup_164
	.4byte gPaletteGroup_165
	.4byte gPaletteGroup_166
	.4byte gPaletteGroup_167
	.4byte gPaletteGroup_168
	.4byte gPaletteGroup_169
	.4byte gPaletteGroup_170
	.4byte gPaletteGroup_171
	.4byte gPaletteGroup_172
	.4byte gPaletteGroup_173
	.4byte gPaletteGroup_174
	.4byte gPaletteGroup_175
	.4byte gPaletteGroup_176
	.4byte gPaletteGroup_177
	.4byte gPaletteGroup_178
	.4byte gPaletteGroup_179
	.4byte gPaletteGroup_180
	.4byte gPaletteGroup_181
	.4byte gPaletteGroup_182
	.4byte gPaletteGroup_183
	.4byte gPaletteGroup_184
	.4byte gPaletteGroup_185
	.4byte gPaletteGroup_186
	.4byte gPaletteGroup_187
	.4byte gPaletteGroup_188
	.4byte gPaletteGroup_189
	.4byte gPaletteGroup_190
	.4byte gPaletteGroup_191
	.4byte gPaletteGroup_192
	.4byte gPaletteGroup_193
	.4byte gPaletteGroup_194
	.4byte gPaletteGroup_195
	.4byte gPaletteGroup_196
	.4byte gPaletteGroup_197
	.4byte gPaletteGroup_198
	.4byte gPaletteGroup_199
	.4byte gPaletteGroup_200
	.4byte gPaletteGroup_201
	.4byte gPaletteGroup_202
	.4byte gPaletteGroup_203
	.4byte gPaletteGroup_204
	.4byte gPaletteGroup_205
	.4byte gPaletteGroup_206
.ifndef EU
	.4byte gPaletteGroup_207
.endif
