	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D16DC:: @ 080D16DC
	.incbin "slime/gUnk_080D16DC.bin"

gUnk_080D16E5:: @ 080D16E5
	.incbin "slime/gUnk_080D16E5.bin"

gUnk_080D16F5:: @ 080D16F5
	.incbin "slime/gUnk_080D16F5.bin"

gUnk_080D170D:: @ 080D170D
	.incbin "slime/gUnk_080D170D.bin"

gUnk_080D171D:: @ 080D171D
	.incbin "slime/gUnk_080D171D.bin"

gUnk_080D1741:: @ 080D1741
	.incbin "slime/gUnk_080D1741.bin"

gUnk_080D1761:: @ 080D1761
	.incbin "slime/gUnk_080D1761.bin"

gUnk_080D176A:: @ 080D176A
	.incbin "slime/gUnk_080D176A.bin"

gUnk_080D1773:: @ 080D1773
	.incbin "slime/gUnk_080D1773.bin"

gUnk_080D1778:: @ 080D1778
	.incbin "slime/gUnk_080D1778.bin"

gUnk_080D177D:: @ 080D177D
	.incbin "slime/gUnk_080D177D.bin"

gSpriteAnimations_Slime:: @ 080D1790
	.4byte gUnk_080D16DC
	.4byte gUnk_080D16E5
	.4byte gUnk_080D16F5
	.4byte gUnk_080D170D
	.4byte gUnk_080D171D
	.4byte gUnk_080D1741
	.4byte gUnk_080D1761
	.4byte gUnk_080D176A
	.4byte gUnk_080D1773
	.4byte gUnk_080D1778
	.4byte gUnk_080D177D
	.4byte 00000000
