	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08109C98:: @ 08109C98
	.incbin "forestMinish/gUnk_08109C98.bin"

gUnk_08109D18:: @ 08109D18
	.4byte script_08009F14
	.4byte script_0800BB30
	.4byte script_080165F8
	.4byte script_0801660C
	.4byte script_08016628
	.4byte script_08016644
	.4byte script_0801666C
	.4byte script_080166B8
	.4byte script_080166FC
	.4byte script_08016798
	.4byte script_08016844
	.4byte script_080168E0
	.4byte script_0800C550
	.4byte script_0800C550
	.4byte script_0800C550
	.4byte script_0800C584
	.4byte script_0800C5C8
	.4byte script_0800C550
	.4byte script_0800C550
	.4byte script_0800C550
	.4byte script_0800C550
	.4byte script_0800C550
	.4byte script_0800CD7C
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800C5FC
	.4byte script_0800E6B0
	.4byte script_0800E6B0
	.4byte script_0800E6B0
	.4byte script_0800CABC
	.4byte script_0800CB54
	.4byte script_0800CBD4
	.4byte script_0800CC6C
	.4byte script_0800CD04

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
