	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD628:: @ 080CD628
	.incbin "bobomb/gUnk_080CD628.bin"

gUnk_080CD639:: @ 080CD639
	.incbin "bobomb/gUnk_080CD639.bin"

gUnk_080CD64A:: @ 080CD64A
	.incbin "bobomb/gUnk_080CD64A.bin"

gUnk_080CD65B:: @ 080CD65B
	.incbin "bobomb/gUnk_080CD65B.bin"

gUnk_080CD66C:: @ 080CD66C
	.incbin "bobomb/gUnk_080CD66C.bin"

gUnk_080CD671:: @ 080CD671
	.incbin "bobomb/gUnk_080CD671.bin"

gUnk_080CD676:: @ 080CD676
	.incbin "bobomb/gUnk_080CD676.bin"

gUnk_080CD67F:: @ 080CD67F
	.incbin "bobomb/gUnk_080CD67F.bin"

gUnk_080CD688:: @ 080CD688
	.incbin "bobomb/gUnk_080CD688.bin"

gUnk_080CD6AC:: @ 080CD6AC
	.incbin "bobomb/gUnk_080CD6AC.bin"

gSpriteAnimations_Bobomb:: @ 080CD6D0
	.4byte gUnk_080CD628
	.4byte gUnk_080CD639
	.4byte gUnk_080CD64A
	.4byte gUnk_080CD65B
	.4byte gUnk_080CD66C
	.4byte gUnk_080CD671
	.4byte gUnk_080CD676
	.4byte gUnk_080CD67F
	.4byte gUnk_080CD688
	.4byte gUnk_080CD6AC
	.4byte 00000000
