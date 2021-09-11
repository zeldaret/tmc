	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

.ifdef DEMO_JP
	@ TODO check whether this is the same save as one of the DEMO_USA ones
	.incbin "assets/data_081320FC/_DEMO_JP.bin"
.endif


gUnk_0813210C:: @ 0813210C
	.incbin "assets/data_081320FC/gUnk_0813210C.bin"
	.4byte gUnk_0813235C
	.incbin "assets/data_081320FC/gUnk_0813210C_1.bin"
	.4byte gUnk_080FD1C4
	.incbin "assets/data_081320FC/gUnk_0813210C_2.bin"
	.4byte gUnk_080FD1C4
	.incbin "assets/data_081320FC/gUnk_0813210C_3.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_4.bin"
	.4byte gUnk_080FD1C4
	.incbin "assets/data_081320FC/gUnk_0813210C_5.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_6.bin"
	.4byte gUnk_081323AC
	.incbin "assets/data_081320FC/gUnk_0813210C_7.bin"
	.4byte gUnk_081323DC
	.incbin "assets/data_081320FC/gUnk_0813210C_8.bin"
	.4byte gUnk_0813240C
	.incbin "assets/data_081320FC/gUnk_0813210C_9.bin"
	.4byte gUnk_0813242C
	.incbin "assets/data_081320FC/gUnk_0813210C_10.bin"
	.4byte gUnk_0813244C
	.incbin "assets/data_081320FC/gUnk_0813210C_11.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_12.bin"
.ifdef JP
	.4byte gUnk_080FD150
.else
.ifdef EU
	.4byte gUnk_080FD150
.else
	.4byte gUnk_080FD180
.endif
.endif
	.incbin "assets/data_081320FC/gUnk_0813210C_13.bin"
	.4byte gUnk_080FD150
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813210C_14_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813210C_15_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_0813248C
	.incbin "assets/data_081320FC/gUnk_0813210C_16.bin"
	.4byte gUnk_081324AC
	.incbin "assets/data_081320FC/gUnk_0813210C_17.bin"
	.4byte gUnk_081324EC
	.incbin "assets/data_081320FC/gUnk_0813210C_18.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_19.bin"
	.4byte gUnk_080FD168
	.incbin "assets/data_081320FC/gUnk_0813210C_20.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_21.bin"
	.4byte gUnk_0813250C
	.incbin "assets/data_081320FC/gUnk_0813210C_22.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_23.bin"
	.4byte gUnk_080FD448
	.incbin "assets/data_081320FC/gUnk_0813210C_24.bin"
	.4byte gUnk_080FD448
	.incbin "assets/data_081320FC/gUnk_0813210C_25.bin"
	.4byte gUnk_080FD150
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813210C_26_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813210C_27_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD168
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813210C_28_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813210C_29_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813210C_30.bin"
	.4byte gUnk_0813252C
	.incbin "assets/data_081320FC/gUnk_0813210C_31.bin"
	.4byte gUnk_080FD150
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813210C_32_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813210C_33_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_0813256C
	.incbin "assets/data_081320FC/gUnk_0813210C_34.bin"
	.4byte gUnk_081325BC
	.incbin "assets/data_081320FC/gUnk_0813210C_35.bin"
	.4byte gUnk_0813269C
	.incbin "assets/data_081320FC/gUnk_0813210C_36.bin"
	.4byte gUnk_080FD448
	.incbin "assets/data_081320FC/gUnk_0813210C_37.bin"
	.4byte gUnk_080FD448
	.incbin "assets/data_081320FC/gUnk_0813210C_38.bin"
	.4byte gUnk_081326CC
	.incbin "assets/data_081320FC/gUnk_0813210C_39.bin"
	.4byte gUnk_080FD460
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813210C_40_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813210C_41_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD460
	.incbin "assets/data_081320FC/gUnk_0813210C_42.bin"

gUnk_0813235C:: @ 0813235C
	.incbin "assets/data_081320FC/gUnk_0813235C.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813235C_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813235C_2.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813235C_3.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813235C_4.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813235C_5.bin"

gUnk_081323AC:: @ 081323AC
	.incbin "assets/data_081320FC/gUnk_081323AC.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081323AC_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081323AC_2.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081323AC_3.bin"

gUnk_081323DC:: @ 081323DC
	.incbin "assets/data_081320FC/gUnk_081323DC.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081323DC_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081323DC_2.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081323DC_3.bin"

gUnk_0813240C:: @ 0813240C
	.incbin "assets/data_081320FC/gUnk_0813240C.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813240C_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813240C_2.bin"

gUnk_0813242C:: @ 0813242C
	.incbin "assets/data_081320FC/gUnk_0813242C.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813242C_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813242C_2.bin"

gUnk_0813244C:: @ 0813244C
	.incbin "assets/data_081320FC/gUnk_0813244C.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813244C_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813244C_2.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813244C_3.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813244C_4.bin"

gUnk_0813248C:: @ 0813248C
	.incbin "assets/data_081320FC/gUnk_0813248C.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813248C_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813248C_2.bin"

gUnk_081324AC:: @ 081324AC
	.incbin "assets/data_081320FC/gUnk_081324AC.bin"
	.4byte gUnk_080FD3F4
	.incbin "assets/data_081320FC/gUnk_081324AC_1.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081324AC_2.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081324AC_3.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_081324AC_4.bin"

gUnk_081324EC:: @ 081324EC
	.incbin "assets/data_081320FC/gUnk_081324EC.bin"
	.4byte gUnk_080FD3FC
	.incbin "assets/data_081320FC/gUnk_081324EC_1.bin"
	.4byte gUnk_080FD3FC
	.incbin "assets/data_081320FC/gUnk_081324EC_2.bin"

gUnk_0813250C:: @ 0813250C
	.incbin "assets/data_081320FC/gUnk_0813250C.bin"
	.4byte gUnk_080FD170
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813250C_1_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813250C_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD43C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813250C_3_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813250C_4_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0813252C:: @ 0813252C
	.incbin "assets/data_081320FC/gUnk_0813252C.bin"
	.4byte gUnk_080FD168
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813252C_1_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813252C_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD168
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813252C_3_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813252C_4_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD168
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813252C_5_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813252C_6_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD168
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813252C_7_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813252C_8_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0813256C:: @ 0813256C
	.incbin "assets/data_081320FC/gUnk_0813256C.bin"
	.4byte gUnk_080FD558
	.incbin "assets/data_081320FC/gUnk_0813256C_1.bin"
	.4byte gUnk_080FD560
	.incbin "assets/data_081320FC/gUnk_0813256C_2.bin"
	.4byte gUnk_080FD560
	.incbin "assets/data_081320FC/gUnk_0813256C_3.bin"
	.4byte gUnk_080FD560
	.incbin "assets/data_081320FC/gUnk_0813256C_4.bin"
	.4byte gUnk_080FD560
	.incbin "assets/data_081320FC/gUnk_0813256C_5.bin"

gUnk_081325BC:: @ 081325BC
	.incbin "assets/data_081320FC/gUnk_081325BC.bin"
	.4byte gUnk_080FD4B8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_1_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4C0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_3_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_4_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4C8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_5_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_6_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4D0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_7_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_8_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4D8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_9_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_10_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4E0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_11_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_12_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4E8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_13_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_14_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4F0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_15_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_16_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD4F8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_17_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_18_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD500
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_19_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_20_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD508
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_21_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_22_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD510
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_23_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_24_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD518
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_25_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_26_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD520
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081325BC_27_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081325BC_28_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0813269C:: @ 0813269C
	.incbin "assets/data_081320FC/gUnk_0813269C.bin"
	.4byte gUnk_080FD150
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_0813269C_1_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_0813269C_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813269C_3.bin"
	.4byte gUnk_080FD150
	.incbin "assets/data_081320FC/gUnk_0813269C_4.bin"

gUnk_081326CC:: @ 081326CC
	.incbin "assets/data_081320FC/gUnk_081326CC.bin"
	.4byte gUnk_080FD168
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081326CC_1_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081326CC_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_080FD448
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_081320FC/gUnk_081326CC_3_EU.bin"
.else
	.incbin "assets/data_081320FC/gUnk_081326CC_4_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081326EC:: @ 081326EC
	.incbin "assets/data_081320FC/gUnk_081326EC.bin"
