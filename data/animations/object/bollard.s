	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121314:: @ 08121314
	.incbin "bollard/gUnk_08121314.bin"

gUnk_08121318:: @ 08121318
	.incbin "bollard/gUnk_08121318.bin"

gUnk_0812131C:: @ 0812131C
	.incbin "bollard/gUnk_0812131C.bin"

gUnk_0812133C:: @ 0812133C
	.incbin "bollard/gUnk_0812133C.bin"

gSpriteAnimations_Bollard:: @ 08121358
	.4byte gUnk_08121314
	.4byte gUnk_08121318
	.4byte gUnk_0812131C
	.4byte gUnk_0812133C
