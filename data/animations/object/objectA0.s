	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812468C:: @ 0812468C
	.incbin "objectA0/gUnk_0812468C.bin"

gUnk_08124690:: @ 08124690
	.incbin "objectA0/gUnk_08124690.bin"

gUnk_08124694:: @ 08124694
	.incbin "objectA0/gUnk_08124694.bin"

gUnk_08124698:: @ 08124698
	.incbin "objectA0/gUnk_08124698.bin"

gUnk_081246A8:: @ 081246A8
	.incbin "objectA0/gUnk_081246A8.bin"

gUnk_081246B8:: @ 081246B8
	.incbin "objectA0/gUnk_081246B8.bin"

gSpriteAnimations_ObjectA0:: @ 081246C8
	.4byte gUnk_08124690
	.4byte gUnk_0812468C
	.4byte gUnk_08124690
	.4byte gUnk_08124694
	.4byte gUnk_081246A8
	.4byte gUnk_08124698
	.4byte gUnk_081246A8
	.4byte gUnk_081246B8
	.4byte 00000000
