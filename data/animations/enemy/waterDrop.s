	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD044:: @ 080CD044
.ifdef EU
    @ TODO only small differences
	.incbin "assets/waterDrop/gUnk_080CD044_EU.bin"
.else
	.incbin "assets/waterDrop/gUnk_080CD044_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080CD069:: @ 080CD069
	.incbin "assets/waterDrop/gUnk_080CD069.bin"

gUnk_080CD070:: @ 080CD070
	.4byte gUnk_080CD044
	.4byte gUnk_080CD069
	.4byte 00000000
