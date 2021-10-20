	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CB5EC:: @ 080CB5EC
	.incbin "beetle/gUnk_080CB5EC.bin"

gUnk_080CB600:: @ 080CB600
	.incbin "beetle/gUnk_080CB600.bin"

gUnk_080CB61C:: @ 080CB61C
	.incbin "beetle/gUnk_080CB61C.bin"

gUnk_080CB62D:: @ 080CB62D
	.incbin "beetle/gUnk_080CB62D.bin"

gUnk_080CB645:: @ 080CB645
	.incbin "beetle/gUnk_080CB645.bin"

gUnk_080CB65D:: @ 080CB65D
	.incbin "beetle/gUnk_080CB65D.bin"

gUnk_080CB671:: @ 080CB671
	.incbin "beetle/gUnk_080CB671.bin"

gSpriteAnimations_Beetle:: @ 080CB67C
	.4byte gUnk_080CB5EC
	.4byte gUnk_080CB600
	.4byte gUnk_080CB61C
	.4byte gUnk_080CB62D
	.4byte gUnk_080CB645
	.4byte gUnk_080CB65D
	.4byte gUnk_080CB671
	.4byte 00000000
