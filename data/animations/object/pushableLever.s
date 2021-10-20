	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081234B4:: @ 081234B4
	.incbin "pushableLever/gUnk_081234B4.bin"

gUnk_081234C9:: @ 081234C9
	.incbin "pushableLever/gUnk_081234C9.bin"

gSpriteAnimations_PushableLever:: @ 081234E0
	.4byte gUnk_081234B4
	.4byte gUnk_081234C9
	.4byte 00000000
