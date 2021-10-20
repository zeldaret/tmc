	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812149C:: @ 0812149C
	.incbin "jarPortal/gUnk_0812149C.bin"

gUnk_081214A0:: @ 081214A0
	.incbin "jarPortal/gUnk_081214A0.bin"

gUnk_081214A4:: @ 081214A4
	.incbin "jarPortal/gUnk_081214A4.bin"

gUnk_081214B5:: @ 081214B5
	.incbin "jarPortal/gUnk_081214B5.bin"

gSpriteAnimations_JarPortal:: @ 081214C8
	.4byte gUnk_0812149C
	.4byte gUnk_081214A0
	.4byte gUnk_081214A4
	.4byte gUnk_081214B5
