	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_0810BD00:: @ 0810BD00
	.incbin "townsperson/gUnk_0810BD00.bin"

gUnk_0810BD05:: @ 0810BD05
	.incbin "townsperson/gUnk_0810BD05.bin"

gUnk_0810BD0A:: @ 0810BD0A
	.incbin "townsperson/gUnk_0810BD0A.bin"

gUnk_0810BD0F:: @ 0810BD0F
	.incbin "townsperson/gUnk_0810BD0F.bin"

gUnk_0810BD14:: @ 0810BD14
	.incbin "townsperson/gUnk_0810BD14.bin"

gUnk_0810BD25:: @ 0810BD25
	.incbin "townsperson/gUnk_0810BD25.bin"

gUnk_0810BD36:: @ 0810BD36
	.incbin "townsperson/gUnk_0810BD36.bin"

gUnk_0810BD47:: @ 0810BD47
	.incbin "townsperson/gUnk_0810BD47.bin"

gSpriteAnimations_Townsperson:: @ 0810BD58
	.4byte gUnk_0810BD00
	.4byte gUnk_0810BD05
	.4byte gUnk_0810BD0A
	.4byte gUnk_0810BD0F
	.4byte gUnk_0810BD14
	.4byte gUnk_0810BD25
	.4byte gUnk_0810BD36
	.4byte gUnk_0810BD47
	.4byte 00000000
