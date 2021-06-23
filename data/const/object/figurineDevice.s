	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120A94:: @ 08120A94
	.4byte sub_08087BC4
	.4byte sub_08087CA8
	.4byte sub_08087D1C
	.4byte sub_08087DBC
	.4byte sub_08087E5C

gUnk_08120AA8:: @ 08120AA8
	.incbin "baserom.gba", 0x120AA8, 0x0000004

gUnk_08120AAC:: @ 08120AAC
	.incbin "baserom.gba", 0x120AAC, 0x0000008

gUnk_08120AB4:: @ 08120AB4
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1201FC, 0x0000018
.else
	.incbin "baserom.gba", 0x120AB4, 0x0000018
.endif

gUnk_08120ACC:: @ 08120ACC
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x120214, 0x0000018
.else
	.incbin "baserom.gba", 0x120ACC, 0x0000018
.endif

gUnk_08120AE4:: @ 08120AE4
	.incbin "baserom.gba", 0x120AE4, 0x0000004
