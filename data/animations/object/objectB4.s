	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124B38:: @ 08124B38
	.incbin "objectB4/gUnk_08124B38.bin"

gUnk_08124BA9:: @ 08124BA9
.ifdef EU
    @ TODO only small differences
	.incbin "objectB4/gUnk_08124BA9_EU.bin"
.else
	.incbin "objectB4/gUnk_08124BA9_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gSpriteAnimations_ObjectB4:: @ 08124BFC
	.4byte gUnk_08124B38
	.4byte gUnk_08124BA9
	.4byte 00000000
