	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1A64:: @ 080D1A64
	.4byte sub_0804614C
	.4byte sub_0804625C
	.4byte sub_0804632C
	.4byte sub_080463E4

gUnk_080D1A74:: @ 080D1A74
	.4byte gUnk_080D1A94
	.4byte gUnk_080D1AAC
	.4byte gUnk_080D1AC4
	.4byte gUnk_080D1ADC

gUnk_080D1A84:: @ 080D1A84
	.incbin "baserom.gba", 0x0D1A84, 0x0000010

gUnk_080D1A94:: @ 080D1A94
.ifdef JP
	@ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D1834, 0x0000018
.else
.ifdef DEMO_JP
	@ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D1834, 0x0000018
.else
.ifdef EU
	.incbin "baserom_eu.gba", 0x0D11C0, 0x0000018
.else
	.incbin "baserom.gba", 0x0D1A94, 0x0000018
.endif
.endif
.endif


gUnk_080D1AAC:: @ 080D1AAC
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D184C, 0x0000018
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D184C, 0x0000018
.else
.ifdef EU
	.incbin "baserom_eu.gba", 0x0D11D8, 0x0000018
.else
	.incbin "baserom.gba", 0x0D1AAC, 0x0000018
.endif
.endif
.endif

gUnk_080D1AC4:: @ 080D1AC4
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D1864, 0x0000018
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D1864, 0x0000018
.else
.ifdef EU
	.incbin "baserom_eu.gba", 0x0D11F0, 0x0000018
.else
	.incbin "baserom.gba", 0x0D1AC4, 0x0000018
.endif
.endif
.endif

gUnk_080D1ADC:: @ 080D1ADC
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D187C, 0x0000018
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x0D187C, 0x0000018
.else
.ifdef EU
	.incbin "baserom_eu.gba", 0x0D1208, 0x0000018
.else
	.incbin "baserom.gba", 0x0D1ADC, 0x0000018
.endif
.endif
.endif

gUnk_080D1AF4:: @ 080D1AF4
	.incbin "baserom.gba", 0x0D1AF4, 0x0000004

gUnk_080D1AF8:: @ 080D1AF8
	.incbin "baserom.gba", 0x0D1AF8, 0x0000004
