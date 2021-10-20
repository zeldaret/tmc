	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081213FC:: @ 081213FC
	.incbin "object35/gUnk_081213FC.bin"

gUnk_0812140D:: @ 0812140D
	.incbin "object35/gUnk_0812140D.bin"

gUnk_0812141E:: @ 0812141E
	.incbin "object35/gUnk_0812141E.bin"

gSpriteAnimations_Object35:: @ 08121430
	.4byte gUnk_081213FC
	.4byte gUnk_0812140D
	.4byte gUnk_0812141E
	.4byte 00000000
