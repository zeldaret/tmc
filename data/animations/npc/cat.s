	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111114:: @ 08111114
	.incbin "cat/gUnk_08111114.bin"

gUnk_0811111C:: @ 0811111C
	.incbin "cat/gUnk_0811111C.bin"

gUnk_08111124:: @ 08111124
	.incbin "cat/gUnk_08111124.bin"

gUnk_0811112C:: @ 0811112C
	.incbin "cat/gUnk_0811112C.bin"

gUnk_08111134:: @ 08111134
	.incbin "cat/gUnk_08111134.bin"

gUnk_0811113C:: @ 0811113C
	.incbin "cat/gUnk_0811113C.bin"

gUnk_08111144:: @ 08111144
	.incbin "cat/gUnk_08111144.bin"

gUnk_0811114C:: @ 0811114C
	.incbin "cat/gUnk_0811114C.bin"

gUnk_08111154:: @ 08111154
	.4byte gUnk_08111114
	.4byte gUnk_0811111C
	.4byte gUnk_08111124
	.4byte gUnk_0811112C
	.4byte gUnk_08111134
	.4byte gUnk_0811113C
	.4byte gUnk_08111144
	.4byte gUnk_0811114C

gSpriteAnimations_Cat_0:: @ 08111174
	.include "animations/gSpriteAnimations_Cat_0.s"

gSpriteAnimations_Cat_1:: @ 081111B0
	.include "animations/gSpriteAnimations_Cat_1.s"

gSpriteAnimations_Cat_2:: @ 081111B9
	.include "animations/gSpriteAnimations_Cat_2.s"

gSpriteAnimations_Cat_3:: @ 081111C2
	.include "animations/gSpriteAnimations_Cat_3.s"

gSpriteAnimations_Cat_4:: @ 081111D3
	.include "animations/gSpriteAnimations_Cat_4.s"

gSpriteAnimations_Cat_5:: @ 081111EB
	.include "animations/gSpriteAnimations_Cat_5.s"

gSpriteAnimations_Cat_6:: @ 08111204
	.include "animations/gSpriteAnimations_Cat_6.s"

gSpriteAnimations_Cat_7:: @ 0811122C
	.include "animations/gSpriteAnimations_Cat_7.s"

gSpriteAnimations_Cat_8:: @ 08111238
	.include "animations/gSpriteAnimations_Cat_8.s"

gSpriteAnimations_Cat:: @ 0811125C
	.4byte gSpriteAnimations_Cat_0
	.4byte gSpriteAnimations_Cat_1
	.4byte gSpriteAnimations_Cat_2
	.4byte gSpriteAnimations_Cat_3
	.4byte gSpriteAnimations_Cat_4
	.4byte gSpriteAnimations_Cat_5
	.4byte gSpriteAnimations_Cat_6
	.4byte gSpriteAnimations_Cat_7
	.4byte gSpriteAnimations_Cat_8
	.4byte 00000000
