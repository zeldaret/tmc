	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080FD964:: @ 080FD964
.ifdef EU
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FD964_EU.bin"
.else
	.incbin "data_080FC8A4/gUnk_080FD964_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gSpriteAnimations_322_0:: @ 080FDD14
	.include "animations/gSpriteAnimations_322_0.s"

gSpriteAnimations_322_1:: @ 080FDD19
	.include "animations/gSpriteAnimations_322_1.s"

gSpriteAnimations_322_2:: @ 080FDD1E
	.include "animations/gSpriteAnimations_322_2.s"

gSpriteAnimations_322_3:: @ 080FDD23
	.include "animations/gSpriteAnimations_322_3.s"

gSpriteAnimations_322_4:: @ 080FDD28
	.include "animations/gSpriteAnimations_322_4.s"

gSpriteAnimations_322_6:: @ 080FDD2D
	.include "animations/gSpriteAnimations_322_6.s"

gSpriteAnimations_322_7:: @ 080FDD32
	.include "animations/gSpriteAnimations_322_7.s"

gSpriteAnimations_322_8:: @ 080FDD37
	.include "animations/gSpriteAnimations_322_8.s"

gSpriteAnimations_322_9:: @ 080FDD48
	.include "animations/gSpriteAnimations_322_9.s"

gSpriteAnimations_322_10:: @ 080FDD4D
	.include "animations/gSpriteAnimations_322_10.s"

gSpriteAnimations_322_11:: @ 080FDD52
	.include "animations/gSpriteAnimations_322_11.s"

gSpriteAnimations_322_12:: @ 080FDD57
	.include "animations/gSpriteAnimations_322_12.s"

gSpriteAnimations_322_13:: @ 080FDD5C
	.include "animations/gSpriteAnimations_322_13.s"

gSpriteAnimations_322_14:: @ 080FDD61
	.include "animations/gSpriteAnimations_322_14.s"

gSpriteAnimations_322_15:: @ 080FDD92
	.include "animations/gSpriteAnimations_322_15.s"

gSpriteAnimations_322_5:: @ 080FDD97
	.include "animations/gSpriteAnimations_322_5.s"

gSpriteAnimations_322_17:: @ 080FDDA8
	.include "animations/gSpriteAnimations_322_17.s"

gSpriteAnimations_322_18:: @ 080FDDAD
	.include "animations/gSpriteAnimations_322_18.s"

gSpriteAnimations_322_19:: @ 080FDDB2
	.include "animations/gSpriteAnimations_322_19.s"

gSpriteAnimations_322_20:: @ 080FDDB7
	.include "animations/gSpriteAnimations_322_20.s"

gSpriteAnimations_322_21:: @ 080FDDBC
	.include "animations/gSpriteAnimations_322_21.s"

gSpriteAnimations_322_22:: @ 080FDDC1
	.include "animations/gSpriteAnimations_322_22.s"

gSpriteAnimations_322_23:: @ 080FDDC6
	.include "animations/gSpriteAnimations_322_23.s"

gSpriteAnimations_322_28:: @ 080FDDCB
	.include "animations/gSpriteAnimations_322_28.s"

gSpriteAnimations_322_38:: @ 080FDDD0
	.include "animations/gSpriteAnimations_322_38.s"

gSpriteAnimations_322_39:: @ 080FDDD5
	.include "animations/gSpriteAnimations_322_39.s"

gSpriteAnimations_322_34:: @ 080FDDDA
	.include "animations/gSpriteAnimations_322_34.s"

gSpriteAnimations_322_35:: @ 080FDDDF
	.include "animations/gSpriteAnimations_322_35.s"

gSpriteAnimations_322_40:: @ 080FDDE4
	.include "animations/gSpriteAnimations_322_40.s"

gSpriteAnimations_322_41:: @ 080FDDF5
	.include "animations/gSpriteAnimations_322_41.s"

gSpriteAnimations_322_42:: @ 080FDE0E
	.include "animations/gSpriteAnimations_322_42.s"

gSpriteAnimations_322_43:: @ 080FDE27
	.include "animations/gSpriteAnimations_322_43.s"

gSpriteAnimations_322_44:: @ 080FDE40
	.include "animations/gSpriteAnimations_322_44.s"

gSpriteAnimations_322_45:: @ 080FDE59
	.include "animations/gSpriteAnimations_322_45.s"

gSpriteAnimations_322_46:: @ 080FDE72
	.include "animations/gSpriteAnimations_322_46.s"

gSpriteAnimations_322_36:: @ 080FDE8B
	.include "animations/gSpriteAnimations_322_36.s"

gSpriteAnimations_322_37:: @ 080FDE90
	.include "animations/gSpriteAnimations_322_37.s"

gSpriteAnimations_322_54:: @ 080FDE95
	.include "animations/gSpriteAnimations_322_54.s"

gSpriteAnimations_322_33:: @ 080FDE9A
	.include "animations/gSpriteAnimations_322_33.s"

gSpriteAnimations_322_47:: @ 080FDE9F
	.include "animations/gSpriteAnimations_322_47.s"

gSpriteAnimations_322_48:: @ 080FDEA4
	.include "animations/gSpriteAnimations_322_48.s"

gSpriteAnimations_322_49:: @ 080FDEA9
	.include "animations/gSpriteAnimations_322_49.s"

gSpriteAnimations_322_52:: @ 080FDEAE
	.include "animations/gSpriteAnimations_322_52.s"

gSpriteAnimations_322_53:: @ 080FDEB3
	.include "animations/gSpriteAnimations_322_53.s"

gSpriteAnimations_322_24:: @ 080FDEB8
	.include "animations/gSpriteAnimations_322_24.s"

gSpriteAnimations_322_58:: @ 080FDEBD
	.include "animations/gSpriteAnimations_322_58.s"

gSpriteAnimations_322_59:: @ 080FDEC2
	.include "animations/gSpriteAnimations_322_59.s"

gSpriteAnimations_322_25:: @ 080FDEC7
	.include "animations/gSpriteAnimations_322_25.s"

gSpriteAnimations_322_60:: @ 080FDECC
	.include "animations/gSpriteAnimations_322_60.s"

gSpriteAnimations_322_55:: @ 080FDED1
	.include "animations/gSpriteAnimations_322_55.s"

gSpriteAnimations_322_68:: @ 080FDED6
	.include "animations/gSpriteAnimations_322_68.s"

gSpriteAnimations_322_69:: @ 080FDEDB
	.include "animations/gSpriteAnimations_322_69.s"

gSpriteAnimations_322_26:: @ 080FDEE0
	.include "animations/gSpriteAnimations_322_26.s"

gSpriteAnimations_322_64:: @ 080FDEE5
	.include "animations/gSpriteAnimations_322_64.s"

gSpriteAnimations_322_65:: @ 080FDEEA
	.include "animations/gSpriteAnimations_322_65.s"

gSpriteAnimations_322_66:: @ 080FDEEF
	.include "animations/gSpriteAnimations_322_66.s"

gSpriteAnimations_322_67:: @ 080FDEF4
	.include "animations/gSpriteAnimations_322_67.s"

gSpriteAnimations_322_71:: @ 080FDEF9
	.include "animations/gSpriteAnimations_322_71.s"

gSpriteAnimations_322_81:: @ 080FDEFE
	.include "animations/gSpriteAnimations_322_81.s"

gSpriteAnimations_322_82:: @ 080FDF03
	.include "animations/gSpriteAnimations_322_82.s"

gSpriteAnimations_322_83:: @ 080FDF08
	.include "animations/gSpriteAnimations_322_83.s"

gSpriteAnimations_322_84:: @ 080FDF0D
	.include "animations/gSpriteAnimations_322_84.s"

gSpriteAnimations_322_95:: @ 080FDF12
	.include "animations/gSpriteAnimations_322_95.s"

gSpriteAnimations_322_96:: @ 080FDF17
	.include "animations/gSpriteAnimations_322_96.s"

gSpriteAnimations_322_98:: @ 080FDF28
	.include "animations/gSpriteAnimations_322_98.s"

gSpriteAnimations_322_99:: @ 080FDF45
	.include "animations/gSpriteAnimations_322_99.s"

gSpriteAnimations_322_87:: @ 080FDF4A
	.include "animations/gSpriteAnimations_322_87.s"

gSpriteAnimations_322_104:: @ 080FDF4F
	.include "animations/gSpriteAnimations_322_104.s"

gSpriteAnimations_322_105:: @ 080FDF54
	.include "animations/gSpriteAnimations_322_105.s"

gSpriteAnimations_322_106:: @ 080FDF59
	.include "animations/gSpriteAnimations_322_106.s"

gSpriteAnimations_322_107:: @ 080FDF5E
	.include "animations/gSpriteAnimations_322_107.s"

gSpriteAnimations_322_93:: @ 080FDF63
	.include "animations/gSpriteAnimations_322_93.s"

gSpriteAnimations_322_94:: @ 080FDF68
	.include "animations/gSpriteAnimations_322_94.s"

gSpriteAnimations_322_63:: @ 080FDF6D
	.include "animations/gSpriteAnimations_322_63.s"

gSpriteAnimations_322_100:: @ 080FDF72
	.include "animations/gSpriteAnimations_322_100.s"

gSpriteAnimations_322_101:: @ 080FDF77
	.include "animations/gSpriteAnimations_322_101.s"

gSpriteAnimations_322_102:: @ 080FDF7C
	.include "animations/gSpriteAnimations_322_102.s"

gSpriteAnimations_322_103:: @ 080FDF81
	.include "animations/gSpriteAnimations_322_103.s"

gSpriteAnimations_322_91:: @ 080FDF86
	.include "animations/gSpriteAnimations_322_91.s"

gSpriteAnimations_322_92:: @ 080FDF8F
	.include "animations/gSpriteAnimations_322_92.s"

gSpriteAnimations_322_108:: @ 080FDF94
	.include "animations/gSpriteAnimations_322_108.s"

gSpriteAnimations_322_109:: @ 080FDF99
	.include "animations/gSpriteAnimations_322_109.s"

gSpriteAnimations_322_110:: @ 080FDF9E
	.include "animations/gSpriteAnimations_322_110.s"

gSpriteAnimations_322_111:: @ 080FDFA3
	.include "animations/gSpriteAnimations_322_111.s"

gSpriteAnimations_322_112:: @ 080FDFA8
	.include "animations/gSpriteAnimations_322_112.s"

gSpriteAnimations_322_72:: @ 080FDFC1
	.include "animations/gSpriteAnimations_322_72.s"

gSpriteAnimations_322_97:: @ 080FDFC6
	.include "animations/gSpriteAnimations_322_97.s"

gSpriteAnimations_322_61:: @ 080FDFCB
	.include "animations/gSpriteAnimations_322_61.s"

gSpriteAnimations_322_62:: @ 080FDFD0
	.include "animations/gSpriteAnimations_322_62.s"

gSpriteAnimations_322:: @ 080FDFD8
	.4byte gSpriteAnimations_322_0
	.4byte gSpriteAnimations_322_1
	.4byte gSpriteAnimations_322_2
	.4byte gSpriteAnimations_322_3
	.4byte gSpriteAnimations_322_4
	.4byte gSpriteAnimations_322_5
	.4byte gSpriteAnimations_322_6
	.4byte gSpriteAnimations_322_7
	.4byte gSpriteAnimations_322_8
	.4byte gSpriteAnimations_322_9
	.4byte gSpriteAnimations_322_10
	.4byte gSpriteAnimations_322_11
	.4byte gSpriteAnimations_322_12
	.4byte gSpriteAnimations_322_13
	.4byte gSpriteAnimations_322_14
	.4byte gSpriteAnimations_322_15
	.4byte gSpriteAnimations_322_5
	.4byte gSpriteAnimations_322_17
	.4byte gSpriteAnimations_322_18
	.4byte gSpriteAnimations_322_19
	.4byte gSpriteAnimations_322_20
	.4byte gSpriteAnimations_322_21
	.4byte gSpriteAnimations_322_22
	.4byte gSpriteAnimations_322_23
	.4byte gSpriteAnimations_322_24
	.4byte gSpriteAnimations_322_25
	.4byte gSpriteAnimations_322_26
	.4byte gSpriteAnimations_322_5
	.4byte gSpriteAnimations_322_28
	.4byte gSpriteAnimations_322_28
	.4byte gSpriteAnimations_322_28
	.4byte gSpriteAnimations_322_28
	.4byte gSpriteAnimations_322_28
	.4byte gSpriteAnimations_322_33
	.4byte gSpriteAnimations_322_34
	.4byte gSpriteAnimations_322_35
	.4byte gSpriteAnimations_322_36
	.4byte gSpriteAnimations_322_37
	.4byte gSpriteAnimations_322_38
	.4byte gSpriteAnimations_322_39
	.4byte gSpriteAnimations_322_40
	.4byte gSpriteAnimations_322_41
	.4byte gSpriteAnimations_322_42
	.4byte gSpriteAnimations_322_43
	.4byte gSpriteAnimations_322_44
	.4byte gSpriteAnimations_322_45
	.4byte gSpriteAnimations_322_46
	.4byte gSpriteAnimations_322_47
	.4byte gSpriteAnimations_322_48
	.4byte gSpriteAnimations_322_49
	.4byte gSpriteAnimations_322_5
	.4byte gSpriteAnimations_322_5
	.4byte gSpriteAnimations_322_52
	.4byte gSpriteAnimations_322_53
	.4byte gSpriteAnimations_322_54
	.4byte gSpriteAnimations_322_55
	.4byte gSpriteAnimations_322_25
	.4byte gSpriteAnimations_322_24
	.4byte gSpriteAnimations_322_58
	.4byte gSpriteAnimations_322_59
	.4byte gSpriteAnimations_322_60
	.4byte gSpriteAnimations_322_61
	.4byte gSpriteAnimations_322_62
	.4byte gSpriteAnimations_322_63
	.4byte gSpriteAnimations_322_64
	.4byte gSpriteAnimations_322_65
	.4byte gSpriteAnimations_322_66
	.4byte gSpriteAnimations_322_67
	.4byte gSpriteAnimations_322_68
	.4byte gSpriteAnimations_322_69
	.4byte gSpriteAnimations_322_26
	.4byte gSpriteAnimations_322_71
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_72
	.4byte gSpriteAnimations_322_71
	.4byte gSpriteAnimations_322_81
	.4byte gSpriteAnimations_322_82
	.4byte gSpriteAnimations_322_83
	.4byte gSpriteAnimations_322_84
	.4byte gSpriteAnimations_322_84
	.4byte gSpriteAnimations_322_84
	.4byte gSpriteAnimations_322_87
	.4byte gSpriteAnimations_322_87
	.4byte gSpriteAnimations_322_87
	.4byte gSpriteAnimations_322_5
	.4byte gSpriteAnimations_322_91
	.4byte gSpriteAnimations_322_92
	.4byte gSpriteAnimations_322_93
	.4byte gSpriteAnimations_322_94
	.4byte gSpriteAnimations_322_95
	.4byte gSpriteAnimations_322_96
	.4byte gSpriteAnimations_322_97
	.4byte gSpriteAnimations_322_98
	.4byte gSpriteAnimations_322_99
	.4byte gSpriteAnimations_322_100
	.4byte gSpriteAnimations_322_101
	.4byte gSpriteAnimations_322_102
	.4byte gSpriteAnimations_322_103
	.4byte gSpriteAnimations_322_104
	.4byte gSpriteAnimations_322_105
	.4byte gSpriteAnimations_322_106
	.4byte gSpriteAnimations_322_107
	.4byte gSpriteAnimations_322_108
	.4byte gSpriteAnimations_322_109
	.4byte gSpriteAnimations_322_110
	.4byte gSpriteAnimations_322_111
	.4byte gSpriteAnimations_322_112
	.4byte gSpriteAnimations_322_112
	.4byte gSpriteAnimations_322_112
	.4byte gSpriteAnimations_322_0
	.4byte gSpriteAnimations_322_0
	.4byte gSpriteAnimations_322_0
	.4byte 00000000

gUnk_080FE1B4:: @ 080FE1B4
	.incbin "data_080FC8A4/gUnk_080FE1B4.bin"

gUnk_080FE1C6:: @ 080FE1C6
	.incbin "data_080FC8A4/gUnk_080FE1C6.bin"

gUnk_080FE1DD:: @ 080FE1DD
	.incbin "data_080FC8A4/gUnk_080FE1DD.bin"

gUnk_080FE2A0:: @ 080FE2A0
	.4byte sub_0805488C
	.4byte sub_080548E8
	.4byte sub_08054920

gUnk_080FE2AC:: @ 080FE2AC
	.4byte sub_08055D80
	.4byte sub_08054E00
	.4byte sub_080558EC
	.4byte sub_08054CE8
	.4byte sub_08054C04
	.4byte sub_08055168
	.4byte sub_080552FC
	.4byte sub_08055BB0
	.4byte sub_08055414
	.4byte sub_080559E0
	.4byte sub_0805559C
	.4byte sub_080554FC
	.4byte sub_08055818
	.4byte sub_08055094
	.4byte sub_080550F8
	.4byte sub_080556F4
	.4byte sub_08055038
	.4byte sub_08054F90
	.4byte sub_08054F90
	.4byte sub_08054D90
	.4byte sub_08055888
	.4byte sub_08055690
	.4byte sub_08055E08
	.4byte sub_080557B4
	.4byte sub_08055CD8
	.4byte sub_08055AD0
	.4byte sub_08055D80
	.4byte sub_08055D80
	.4byte sub_08055D80

gUnk_080FE320:: @ 080FE320
.ifdef JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FE320_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FE320_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080FC8A4/gUnk_080FE320_2_EU.bin"
.else
	.incbin "data_080FC8A4/gUnk_080FE320_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FE320_4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FE320_5_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080FC8A4/gUnk_080FE320_6_EU.bin"
.else
	.incbin "data_080FC8A4/gUnk_080FE320_7_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FEAC8:: @ 080FEAC8
	.incbin "data_080FC8A4/gUnk_080FEAC8.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FEAC8_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FEAC8_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080FC8A4/gUnk_080FEAC8_3_EU.bin"
.else
	.incbin "data_080FC8A4/gUnk_080FEAC8_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FEAC8_5_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FEAC8_6_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080FC8A4/gUnk_080FEAC8_7_EU.bin"
.else
	.incbin "data_080FC8A4/gUnk_080FEAC8_8_USA-DEMO_USA.bin"
.endif
.endif
.endif

	.incbin "data_080FC8A4/gUnk_080FEAC8_9.bin"

gUnk_080FEBE8:: @ 080FEBE8
	.incbin "data_080FC8A4/gUnk_080FEBE8.bin"

gUnk_080FEC28:: @ 080FEC28
	.incbin "data_080FC8A4/gUnk_080FEC28.bin"

gUnk_080FECC8:: @ 080FECC8
	.incbin "data_080FC8A4/gUnk_080FECC8.bin"

gUnk_080FED18:: @ 080FED18
	.incbin "data_080FC8A4/gUnk_080FED18.bin"

gUnk_080FED58:: @ 080FED58
	.incbin "data_080FC8A4/gUnk_080FED58.bin"

gUnk_080FED98:: @ 080FED98
	.4byte gUnk_080FEDA4
	.4byte gUnk_080FEDDA
	.4byte gUnk_080FEDF8

gUnk_080FEDA4:: @ 080FEDA4
	.incbin "data_080FC8A4/gUnk_080FEDA4.bin"

gUnk_080FEDDA:: @ 080FEDDA
	.incbin "data_080FC8A4/gUnk_080FEDDA.bin"

gUnk_080FEDF8:: @ 080FEDF8
	.incbin "data_080FC8A4/gUnk_080FEDF8.bin"

gUnk_080FEE18:: @ 080FEE18
	.incbin "data_080FC8A4/gUnk_080FEE18.bin"

gUnk_080FEE38:: @ 080FEE38
	.incbin "data_080FC8A4/gUnk_080FEE38.bin"

gUnk_080FEE48:: @ 080FEE48
	.incbin "data_080FC8A4/gUnk_080FEE48.bin"

gUnk_080FEE58:: @ 080FEE58
.ifdef JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FEE58_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080FC8A4/gUnk_080FEE58_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080FC8A4/gUnk_080FEE58_2_EU.bin"
.else
	.incbin "data_080FC8A4/gUnk_080FEE58_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FEE78:: @ 080FEE78
	.incbin "data_080FC8A4/gUnk_080FEE78.bin"
