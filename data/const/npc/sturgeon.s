	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FA38:: @ 0810FA38
	.incbin "sturgeon/gUnk_0810FA38.bin"

gUnk_0810FA44:: @ 0810FA44
	.4byte sub_08064B44
	.4byte sub_08064B88
	.4byte sub_08064C2C
	.4byte sub_08064C50

gUnk_0810FA54:: @ 0810FA54
	.incbin "sturgeon/gUnk_0810FA54.bin"

gUnk_0810FA5A:: @ 0810FA5A
	.incbin "sturgeon/gUnk_0810FA5A.bin"

gSpriteAnimations_Sturgeon_4:: @ 0810FB24
	.include "animations/gSpriteAnimations_Sturgeon_4.s"

gSpriteAnimations_Sturgeon_5:: @ 0810FB39
	.include "animations/gSpriteAnimations_Sturgeon_5.s"

gSpriteAnimations_Sturgeon_6:: @ 0810FB4E
	.include "animations/gSpriteAnimations_Sturgeon_6.s"

gSpriteAnimations_Sturgeon_7:: @ 0810FB63
	.include "animations/gSpriteAnimations_Sturgeon_7.s"
