	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08109C98:: @ 08109C98
	.incbin "baserom.gba", 0x109C98, 0x0000080

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
	.incbin "baserom.gba", 0x109DC8, 0x00001A4
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x109C30, 0x000002B
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x109C30, 0x000002B
.else
.ifdef EU
	.incbin "baserom_jp.gba", 0x109C30, 0x000002B
.else
	.incbin "baserom.gba", 0x109F6C, 0x000002B
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x109C5B, 0x00000B1
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x109C5B, 0x00000B1
.else
.ifdef EU
	.incbin "baserom_jp.gba", 0x109C5B, 0x00000B1
.else
	.incbin "baserom.gba", 0x109F97, 0x00000B1
.endif
.endif
.endif

	.incbin "baserom.gba", 0x10A048, 0x0000024
	.4byte sub_080601D4
	.incbin "baserom.gba", 0x10A070, 0x0000004
	.4byte sub_080601D4
	.incbin "baserom.gba", 0x10A078, 0x0000004
	.4byte sub_080601D4
	.incbin "baserom.gba", 0x10A080, 0x0000004
	.4byte sub_080601D4
	.incbin "baserom.gba", 0x10A088, 0x00002C0

gUnk_0810A348:: @ 0810A348
	.incbin "baserom.gba", 0x10A348, 0x000000C

gUnk_0810A354:: @ 0810A354
	.incbin "baserom.gba", 0x10A354, 0x0000006

gUnk_0810A35A:: @ 0810A35A
	.incbin "baserom.gba", 0x10A35A, 0x0000008

gUnk_0810A362:: @ 0810A362
	.incbin "baserom.gba", 0x10A362, 0x0000008
