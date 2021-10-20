	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C2F4:: @ 0810C2F4
	.incbin "stamp/gUnk_0810C2F4.bin"

gUnk_0810C325:: @ 0810C325
	.incbin "stamp/gUnk_0810C325.bin"

gSpriteAnimations_Stamp:: @ 0810C32C
	.4byte gUnk_0810C2F4
	.4byte gUnk_0810C2F4
	.4byte gUnk_0810C2F4
	.4byte gUnk_0810C2F4
	.4byte gUnk_0810C325
	.4byte gUnk_0810C325
	.4byte gUnk_0810C325
	.4byte gUnk_0810C325
