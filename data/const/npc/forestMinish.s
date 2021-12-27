	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08109C98:: @ 08109C98
	.incbin "forestMinish/gUnk_08109C98.bin"

gUnk_08109D18:: @ 08109D18
	.4byte script_BombMinish
	.4byte script_BombMinishKinstone
	.4byte script_ForestMinish12
	.4byte script_ForestMinish13
	.4byte script_ForestMinish14
	.4byte script_ForestMinish15
	.4byte script_ForestMinish16
	.4byte script_ForestMinish17
	.4byte script_ForestMinish18
	.4byte script_ForestMinish19
	.4byte script_ForestMinish20
	.4byte script_ForestMinish21
	.4byte script_ForestMinish1
	.4byte script_ForestMinish1
	.4byte script_ForestMinish1
	.4byte script_ForestMinish2
	.4byte script_ForestMinish3
	.4byte script_ForestMinish1
	.4byte script_ForestMinish1
	.4byte script_ForestMinish1
	.4byte script_ForestMinish1
	.4byte script_ForestMinish1
	.4byte script_ForestMinish10
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish4
	.4byte script_ForestMinish11
	.4byte script_ForestMinish11
	.4byte script_ForestMinish11
	.4byte script_ForestMinish5
	.4byte script_ForestMinish6
	.4byte script_ForestMinish7
	.4byte script_ForestMinish8
	.4byte script_ForestMinish9

gUnk_08109DC8:: @ 08109DC8
	.incbin "forestMinish/gUnk_08109DC8.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "forestMinish/gUnk_08109DC8_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "forestMinish/gUnk_08109DC8_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "forestMinish/gUnk_08109DC8_3_EU.bin"
.else
	.incbin "forestMinish/gUnk_08109DC8_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "forestMinish/gUnk_08109DC8_5_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "forestMinish/gUnk_08109DC8_6_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "forestMinish/gUnk_08109DC8_7_EU.bin"
.else
	.incbin "forestMinish/gUnk_08109DC8_8_USA-DEMO_USA.bin"
.endif
.endif
.endif

	.incbin "forestMinish/gUnk_08109DC8_9.bin"
	.4byte sub_080601D4
	.incbin "forestMinish/gUnk_08109DC8_10.bin"
	.4byte sub_080601D4
	.incbin "forestMinish/gUnk_08109DC8_11.bin"
	.4byte sub_080601D4
	.incbin "forestMinish/gUnk_08109DC8_12.bin"
	.4byte sub_080601D4
	.incbin "forestMinish/gUnk_08109DC8_13.bin"

gUnk_0810A348:: @ 0810A348
	.incbin "forestMinish/gUnk_0810A348.bin"

gUnk_0810A354:: @ 0810A354
	.incbin "forestMinish/gUnk_0810A354.bin"

gUnk_0810A35A:: @ 0810A35A
	.incbin "forestMinish/gUnk_0810A35A.bin"

gUnk_0810A362:: @ 0810A362
	.incbin "forestMinish/gUnk_0810A362.bin"
