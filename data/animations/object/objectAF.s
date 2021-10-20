	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081248D0:: @ 081248D0
	.incbin "objectAF/gUnk_081248D0.bin"

gUnk_081248E1:: @ 081248E1
	.incbin "objectAF/gUnk_081248E1.bin"

gUnk_081248F2:: @ 081248F2
	.incbin "objectAF/gUnk_081248F2.bin"

gUnk_0812490E:: @ 0812490E
	.incbin "objectAF/gUnk_0812490E.bin"

gSpriteAnimations_ObjectAF:: @ 08124928
	.4byte gUnk_081248D0
	.4byte gUnk_081248E1
	.4byte gUnk_081248F2
	.4byte gUnk_0812490E
	.4byte 00000000
