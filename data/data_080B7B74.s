	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B7B74:: @ 080B7B74
	.incbin "baserom.gba", 0x0B7B74, 0x000372C
.ifdef EU
	.incbin "baserom_eu.gba", 0x0BA9C8, 0x0001100 @ TODO only small differences
.else
	.incbin "baserom.gba", 0x0BB2A0, 0x0001100
.endif
	.incbin "baserom.gba", 0x0BC3A0, 0x0006C9F
.ifdef JP
	@ TODO only small differences
	.incbin "baserom_jp.gba", 0x0C2DDF, 0x00032A4
.else
.ifdef EU
	@ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C2767, 0x00032A4
.else
	.incbin "baserom.gba", 0x0C303F, 0x00032A4
.endif
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C5A0B, 0x000207D
.else
	.incbin "baserom.gba", 0x0C62E3, 0x000207D
.endif
	.incbin "baserom.gba", 0x0C8360, 0x0000BCC

gUnk_080C8F2C:: @ 080C8F2C
	.incbin "baserom.gba", 0x0C8F2C, 0x0000028

gUnk_080C8F54:: @ 080C8F54
	.incbin "baserom.gba", 0x0C8F54, 0x0000028

gUnk_080C8F7C:: @ 080C8F7C
	.4byte gUnk_085C4DA0
	.4byte gUnk_085C4E60
	.4byte gUnk_085C4F20
	.4byte gUnk_085C4FE0


gUnk_080C8F8C:: @ 080C8F8C
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C86B4, 0x0000008
.else
	.incbin "baserom.gba", 0x0C8F8C, 0x0000008
.endif
	.4byte sub_0801CB78
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C86C0, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8F98, 0x000000C
.endif
	.4byte sub_0801CB78
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C86D0, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8FA8, 0x000000C
.endif
	.4byte sub_0801CB78
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C86E0, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8FB8, 0x000000C
.endif
	.4byte sub_0801CCB0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C86F0, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8FC8, 0x000000C
.endif
	.4byte sub_0801CCB0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8700, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8FD8, 0x000000C
.endif
	.4byte sub_0801CD94
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8710, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8FE8, 0x000000C
.endif
	.4byte sub_0801CE58
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8720, 0x000000C
.else
	.incbin "baserom.gba", 0x0C8FF8, 0x000000C
.endif
	.4byte EzloNag
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8730, 0x000000C
.else
	.incbin "baserom.gba", 0x0C9008, 0x000000C
.endif
	.4byte EzloNag
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8740, 0x000000C
.else
	.incbin "baserom.gba", 0x0C9018, 0x000000C
.endif
	.4byte sub_0801CD94
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8750, 0x000000C
.else
	.incbin "baserom.gba", 0x0C9028, 0x000000C
.endif
	.4byte sub_0801CD94
	.incbin "baserom.gba", 0x0C9038, 0x0000004

gUnk_080C903C:: @ 080C903C
	.4byte sub_0801CB90
	.4byte sub_0801CBC8

gUnk_080C9044:: @ 080C9044
	.incbin "baserom.gba", 0x0C9044, 0x0000008

gUnk_080C904C:: @ 080C904C
	.4byte sub_0801CED8
	.4byte sub_0801CF18
	.4byte sub_0801CF60

gUnk_080C9058:: @ 080C9058
	.incbin "baserom.gba", 0x0C9058, 0x000003C

gUnk_080C9094:: @ 080C9094
	.incbin "baserom.gba", 0x0C9094, 0x00000CC

