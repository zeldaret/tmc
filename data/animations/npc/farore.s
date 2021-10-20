	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F9F4:: @ 0810F9F4
	.incbin "farore/gUnk_0810F9F4.bin"

gUnk_0810F9F9:: @ 0810F9F9
	.incbin "farore/gUnk_0810F9F9.bin"

gUnk_0810F9FE:: @ 0810F9FE
	.incbin "farore/gUnk_0810F9FE.bin"

gUnk_0810FA03:: @ 0810FA03
	.incbin "farore/gUnk_0810FA03.bin"

gSpriteAnimations_Farore:: @ 0810FA14
	.4byte gUnk_0810F9F4
	.4byte gUnk_0810F9FE
	.4byte gUnk_0810F9F4
	.4byte gUnk_0810F9F9
	.4byte gUnk_0810FA03
	.4byte gUnk_0810FA03
	.4byte gUnk_0810FA03
	.4byte gUnk_0810FA03
	.4byte 00000000
