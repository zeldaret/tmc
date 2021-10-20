	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C3C8:: @ 0810C3C8
	.incbin "wheaton/gUnk_0810C3C8.bin"

gUnk_0810C3E1:: @ 0810C3E1
	.incbin "wheaton/gUnk_0810C3E1.bin"

gUnk_0810C3F2:: @ 0810C3F2
	.incbin "wheaton/gUnk_0810C3F2.bin"

gUnk_0810C403:: @ 0810C403
	.incbin "wheaton/gUnk_0810C403.bin"

gSpriteAnimations_Wheaton:: @ 0810C414
	.4byte gUnk_0810C3C8
	.4byte gUnk_0810C3E1
	.4byte gUnk_0810C3F2
	.4byte gUnk_0810C403
	.4byte 00000000
