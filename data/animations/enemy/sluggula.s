	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CBE02:: @ 080CBE02
	.incbin "sluggula/gUnk_080CBE02.bin"

gUnk_080CBE1B:: @ 080CBE1B
	.incbin "sluggula/gUnk_080CBE1B.bin"

gUnk_080CBE34:: @ 080CBE34
	.incbin "sluggula/gUnk_080CBE34.bin"

gUnk_080CBE4D:: @ 080CBE4D
	.incbin "sluggula/gUnk_080CBE4D.bin"

gUnk_080CBE66:: @ 080CBE66
	.incbin "sluggula/gUnk_080CBE66.bin"

gUnk_080CBE8A:: @ 080CBE8A
	.incbin "sluggula/gUnk_080CBE8A.bin"

gUnk_080CBE9E:: @ 080CBE9E
	.incbin "sluggula/gUnk_080CBE9E.bin"

gSpriteAnimations_Sluggula:: @ 080CBEA4
	.4byte gUnk_080CBE02
	.4byte gUnk_080CBE1B
	.4byte gUnk_080CBE34
	.4byte gUnk_080CBE4D
	.4byte gUnk_080CBE66
	.4byte gUnk_080CBE8A
	.4byte gUnk_080CBE9E
	.4byte 00000000

