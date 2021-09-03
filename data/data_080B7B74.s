	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B7B74:: @ 080B7B74
	.incbin "baserom.gba", 0x0B7B74, 0x00004BA
	.incbin "baserom.gba", 0x0B802E, 0x0002292
	.incbin "baserom.gba", 0x0BA2C0, 0x0000FE0
.ifdef EU
	.incbin "baserom_eu.gba", 0x0BA9C8, 0x0001100 @ TODO only small differences
.else
	.incbin "baserom.gba", 0x0BB2A0, 0x0001100
.endif
	.incbin "baserom.gba", 0x0BC3A0, 0x000080A
	.incbin "baserom.gba", 0x0BCBAA, 0x0001E48
	.incbin "baserom.gba", 0x0BE9F2, 0x00003C5
	.incbin "baserom.gba", 0x0BEDB7, 0x0000133
	.incbin "baserom.gba", 0x0BEEEA, 0x00001BC
	.incbin "baserom.gba", 0x0BF0A6, 0x0000446
	.incbin "baserom.gba", 0x0BF4EC, 0x0000025
	.incbin "baserom.gba", 0x0BF511, 0x0000101
	.incbin "baserom.gba", 0x0BF612, 0x00000DD
	.incbin "baserom.gba", 0x0BF6EF, 0x0000013
	.incbin "baserom.gba", 0x0BF702, 0x00000CE
	.incbin "baserom.gba", 0x0BF7D0, 0x000000F
	.incbin "baserom.gba", 0x0BF7DF, 0x0000111
	.incbin "baserom.gba", 0x0BF8F0, 0x0000004
	.incbin "baserom.gba", 0x0BF8F4, 0x000001B
	.incbin "baserom.gba", 0x0BF90F, 0x00000E9
	.incbin "baserom.gba", 0x0BF9F8, 0x00000DF
	.incbin "baserom.gba", 0x0BFAD7, 0x0000014
	.incbin "baserom.gba", 0x0BFAEB, 0x0000011
	.incbin "baserom.gba", 0x0BFAFC, 0x00000EE
	.incbin "baserom.gba", 0x0BFBEA, 0x0000005
	.incbin "baserom.gba", 0x0BFBEF, 0x00000F8
	.incbin "baserom.gba", 0x0BFCE7, 0x0000007
	.incbin "baserom.gba", 0x0BFCEE, 0x0000009
	.incbin "baserom.gba", 0x0BFCF7, 0x00001ED
	.incbin "baserom.gba", 0x0BFEE4, 0x000001D
	.incbin "baserom.gba", 0x0BFF01, 0x00000FF
	.incbin "baserom.gba", 0x0C0000, 0x0000007
	.incbin "baserom.gba", 0x0C0007, 0x0000005
	.incbin "baserom.gba", 0x0C000C, 0x00000B7
	.incbin "baserom.gba", 0x0C00C3, 0x0000040
	.incbin "baserom.gba", 0x0C0103, 0x0000032
	.incbin "baserom.gba", 0x0C0135, 0x0000001
	.incbin "baserom.gba", 0x0C0136, 0x00000CD
	.incbin "baserom.gba", 0x0C0203, 0x00000EB
	.incbin "baserom.gba", 0x0C02EE, 0x000000B
	.incbin "baserom.gba", 0x0C02F9, 0x0000004
	.incbin "baserom.gba", 0x0C02FD, 0x0000006
	.incbin "baserom.gba", 0x0C0303, 0x00000F5
	.incbin "baserom.gba", 0x0C03F8, 0x0000004
	.incbin "baserom.gba", 0x0C03FC, 0x000000E
	.incbin "baserom.gba", 0x0C040A, 0x0000002
	.incbin "baserom.gba", 0x0C040C, 0x00000FA
	.incbin "baserom.gba", 0x0C0506, 0x0000001
	.incbin "baserom.gba", 0x0C0507, 0x000000B
	.incbin "baserom.gba", 0x0C0512, 0x0000003
	.incbin "baserom.gba", 0x0C0515, 0x00000E5
	.incbin "baserom.gba", 0x0C05FA, 0x0000001
	.incbin "baserom.gba", 0x0C05FB, 0x0000001
	.incbin "baserom.gba", 0x0C05FC, 0x0000001
	.incbin "baserom.gba", 0x0C05FD, 0x0000003
	.incbin "baserom.gba", 0x0C0600, 0x0000002
	.incbin "baserom.gba", 0x0C0602, 0x000000F
	.incbin "baserom.gba", 0x0C0611, 0x00000F0
	.incbin "baserom.gba", 0x0C0701, 0x0000002
	.incbin "baserom.gba", 0x0C0703, 0x0000002
	.incbin "baserom.gba", 0x0C0705, 0x0000007
	.incbin "baserom.gba", 0x0C070C, 0x0000004
	.incbin "baserom.gba", 0x0C0710, 0x00000E7
	.incbin "baserom.gba", 0x0C07F7, 0x0000001
	.incbin "baserom.gba", 0x0C07F8, 0x0000004
	.incbin "baserom.gba", 0x0C07FC, 0x0000004
	.incbin "baserom.gba", 0x0C0800, 0x0000001
	.incbin "baserom.gba", 0x0C0801, 0x0000002
	.incbin "baserom.gba", 0x0C0803, 0x0000001
	.incbin "baserom.gba", 0x0C0804, 0x0000001
	.incbin "baserom.gba", 0x0C0805, 0x0000001
	.incbin "baserom.gba", 0x0C0806, 0x0000001
	.incbin "baserom.gba", 0x0C0807, 0x000000A
	.incbin "baserom.gba", 0x0C0811, 0x0000001
	.incbin "baserom.gba", 0x0C0812, 0x00000E2
	.incbin "baserom.gba", 0x0C08F4, 0x0000008
	.incbin "baserom.gba", 0x0C08FC, 0x0000006
	.incbin "baserom.gba", 0x0C0902, 0x0000001
	.incbin "baserom.gba", 0x0C0903, 0x0000001
	.incbin "baserom.gba", 0x0C0904, 0x0000005
	.incbin "baserom.gba", 0x0C0909, 0x0000002
	.incbin "baserom.gba", 0x0C090B, 0x0000001
	.incbin "baserom.gba", 0x0C090C, 0x0000001
	.incbin "baserom.gba", 0x0C090D, 0x00000E7
	.incbin "baserom.gba", 0x0C09F4, 0x000000A
	.incbin "baserom.gba", 0x0C09FE, 0x0000003
	.incbin "baserom.gba", 0x0C0A01, 0x0000004
	.incbin "baserom.gba", 0x0C0A05, 0x0000002
	.incbin "baserom.gba", 0x0C0A07, 0x0000001
	.incbin "baserom.gba", 0x0C0A08, 0x0000002
	.incbin "baserom.gba", 0x0C0A0A, 0x0000001
	.incbin "baserom.gba", 0x0C0A0B, 0x0000004
	.incbin "baserom.gba", 0x0C0A0F, 0x00000EB
	.incbin "baserom.gba", 0x0C0AFA, 0x0000006
	.incbin "baserom.gba", 0x0C0B00, 0x0000004
	.incbin "baserom.gba", 0x0C0B04, 0x0000001
	.incbin "baserom.gba", 0x0C0B05, 0x0000001
	.incbin "baserom.gba", 0x0C0B06, 0x0000002
	.incbin "baserom.gba", 0x0C0B08, 0x0000001
	.incbin "baserom.gba", 0x0C0B09, 0x0000001
	.incbin "baserom.gba", 0x0C0B0A, 0x0000001
	.incbin "baserom.gba", 0x0C0B0B, 0x0000001
	.incbin "baserom.gba", 0x0C0B0C, 0x0000001
	.incbin "baserom.gba", 0x0C0B0D, 0x0000003
	.incbin "baserom.gba", 0x0C0B10, 0x0000003
	.incbin "baserom.gba", 0x0C0B13, 0x00000ED
	.incbin "baserom.gba", 0x0C0C00, 0x0000005
	.incbin "baserom.gba", 0x0C0C05, 0x0000003
	.incbin "baserom.gba", 0x0C0C08, 0x0000001
	.incbin "baserom.gba", 0x0C0C09, 0x0000001
	.incbin "baserom.gba", 0x0C0C0A, 0x0000002
	.incbin "baserom.gba", 0x0C0C0C, 0x0000003
	.incbin "baserom.gba", 0x0C0C0F, 0x0000010
	.incbin "baserom.gba", 0x0C0C1F, 0x00000E6
	.incbin "baserom.gba", 0x0C0D05, 0x0000001
	.incbin "baserom.gba", 0x0C0D06, 0x0000004
	.incbin "baserom.gba", 0x0C0D0A, 0x0000001
	.incbin "baserom.gba", 0x0C0D0B, 0x0000001
	.incbin "baserom.gba", 0x0C0D0C, 0x0000001
	.incbin "baserom.gba", 0x0C0D0D, 0x0000001
	.incbin "baserom.gba", 0x0C0D0E, 0x0000002
	.incbin "baserom.gba", 0x0C0D10, 0x0000001
	.incbin "baserom.gba", 0x0C0D11, 0x0000004
	.incbin "baserom.gba", 0x0C0D15, 0x00000F0
	.incbin "baserom.gba", 0x0C0E05, 0x0000001
	.incbin "baserom.gba", 0x0C0E06, 0x0000003
	.incbin "baserom.gba", 0x0C0E09, 0x0000003
	.incbin "baserom.gba", 0x0C0E0C, 0x0000001
	.incbin "baserom.gba", 0x0C0E0D, 0x0000001
	.incbin "baserom.gba", 0x0C0E0E, 0x0000001
	.incbin "baserom.gba", 0x0C0E0F, 0x0000001
	.incbin "baserom.gba", 0x0C0E10, 0x0000002
	.incbin "baserom.gba", 0x0C0E12, 0x0000001
	.incbin "baserom.gba", 0x0C0E13, 0x0000002
	.incbin "baserom.gba", 0x0C0E15, 0x0000014
	.incbin "baserom.gba", 0x0C0E29, 0x00000E3
	.incbin "baserom.gba", 0x0C0F0C, 0x0000003
	.incbin "baserom.gba", 0x0C0F0F, 0x0000001
	.incbin "baserom.gba", 0x0C0F10, 0x0000001
	.incbin "baserom.gba", 0x0C0F11, 0x0000001
	.incbin "baserom.gba", 0x0C0F12, 0x0000001
	.incbin "baserom.gba", 0x0C0F13, 0x0000001
	.incbin "baserom.gba", 0x0C0F14, 0x0000002
	.incbin "baserom.gba", 0x0C0F16, 0x0000007
	.incbin "baserom.gba", 0x0C0F1D, 0x00000E3
	.incbin "baserom.gba", 0x0C1000, 0x000000C
	.incbin "baserom.gba", 0x0C100C, 0x0000003
	.incbin "baserom.gba", 0x0C100F, 0x0000001
	.incbin "baserom.gba", 0x0C1010, 0x0000002
	.incbin "baserom.gba", 0x0C1012, 0x0000001
	.incbin "baserom.gba", 0x0C1013, 0x0000001
	.incbin "baserom.gba", 0x0C1014, 0x0000001
	.incbin "baserom.gba", 0x0C1015, 0x0000003
	.incbin "baserom.gba", 0x0C1018, 0x00000F8
	.incbin "baserom.gba", 0x0C1110, 0x0000001
	.incbin "baserom.gba", 0x0C1111, 0x0000002
	.incbin "baserom.gba", 0x0C1113, 0x0000002
	.incbin "baserom.gba", 0x0C1115, 0x0000001
	.incbin "baserom.gba", 0x0C1116, 0x0000001
	.incbin "baserom.gba", 0x0C1117, 0x0000002
	.incbin "baserom.gba", 0x0C1119, 0x0000004
	.incbin "baserom.gba", 0x0C111D, 0x00000EA
	.incbin "baserom.gba", 0x0C1207, 0x0000007
	.incbin "baserom.gba", 0x0C120E, 0x0000001
	.incbin "baserom.gba", 0x0C120F, 0x0000005
	.incbin "baserom.gba", 0x0C1214, 0x0000004
	.incbin "baserom.gba", 0x0C1218, 0x0000003
	.incbin "baserom.gba", 0x0C121B, 0x00000F1
	.incbin "baserom.gba", 0x0C130C, 0x0000004
	.incbin "baserom.gba", 0x0C1310, 0x0000002
	.incbin "baserom.gba", 0x0C1312, 0x0000001
	.incbin "baserom.gba", 0x0C1313, 0x0000001
	.incbin "baserom.gba", 0x0C1314, 0x0000004
	.incbin "baserom.gba", 0x0C1318, 0x0000002
	.incbin "baserom.gba", 0x0C131A, 0x0000003
	.incbin "baserom.gba", 0x0C131D, 0x0000003
	.incbin "baserom.gba", 0x0C1320, 0x00000E0
	.incbin "baserom.gba", 0x0C1400, 0x0000017
	.incbin "baserom.gba", 0x0C1417, 0x0000101
	.incbin "baserom.gba", 0x0C1518, 0x000000A
	.incbin "baserom.gba", 0x0C1522, 0x00000DD
	.incbin "baserom.gba", 0x0C15FF, 0x0000112
	.incbin "baserom.gba", 0x0C1711, 0x00000EF
	.incbin "baserom.gba", 0x0C1800, 0x0000011
	.incbin "baserom.gba", 0x0C1811, 0x0000011
	.incbin "baserom.gba", 0x0C1822, 0x0000006
	.incbin "baserom.gba", 0x0C1828, 0x0000008
	.incbin "baserom.gba", 0x0C1830, 0x00001F4
	.incbin "baserom.gba", 0x0C1A24, 0x00001FF
	.incbin "baserom.gba", 0x0C1C23, 0x00001F5
	.incbin "baserom.gba", 0x0C1E18, 0x00001E8
	.incbin "baserom.gba", 0x0C2000, 0x0000011
	.incbin "baserom.gba", 0x0C2011, 0x000012E
	.incbin "baserom.gba", 0x0C213F, 0x00003DD
	.incbin "baserom.gba", 0x0C251C, 0x0000A19
	.incbin "baserom.gba", 0x0C2F35, 0x000010A
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

