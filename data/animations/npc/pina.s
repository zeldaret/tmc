	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CE54:: @ 0810CE54
	.incbin "pina/gUnk_0810CE54.bin"

gUnk_0810CEA1:: @ 0810CEA1
	.incbin "pina/gUnk_0810CEA1.bin"

gUnk_0810CEEE:: @ 0810CEEE
	.incbin "pina/gUnk_0810CEEE.bin"

gUnk_0810CF0F:: @ 0810CF0F
	.incbin "pina/gUnk_0810CF0F.bin"

gUnk_0810CF14:: @ 0810CF14
	.incbin "pina/gUnk_0810CF14.bin"

gUnk_0810CF19:: @ 0810CF19
	.incbin "pina/gUnk_0810CF19.bin"

gSpriteAnimations_Pina:: @ 0810CF20
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CF0F
	.4byte gUnk_0810CF14
	.4byte gUnk_0810CF0F
	.4byte gUnk_0810CF19
	.4byte gUnk_0810CEA1
	.4byte gUnk_0810CEEE
	.4byte 00000000
