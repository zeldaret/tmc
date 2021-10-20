	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA5D4:: @ 080CA5D4
	.incbin "peahat/gUnk_080CA5D4.bin"

gUnk_080CA5D6:: @ 080CA5D6
	.incbin "peahat/gUnk_080CA5D6.bin"

gUnk_080CA5E7:: @ 080CA5E7
	.incbin "peahat/gUnk_080CA5E7.bin"

gUnk_080CA5F8:: @ 080CA5F8
	.incbin "peahat/gUnk_080CA5F8.bin"

gUnk_080CA615:: @ 080CA615
	.incbin "peahat/gUnk_080CA615.bin"

gUnk_080CA626:: @ 080CA626
	.incbin "peahat/gUnk_080CA626.bin"

gUnk_080CA63A:: @ 080CA63A
	.incbin "peahat/gUnk_080CA63A.bin"

gSpriteAnimations_Peahat:: @ 080CA650
	.4byte gUnk_080CA5D6
	.4byte gUnk_080CA5E7
	.4byte gUnk_080CA5F8
	.4byte gUnk_080CA615
	.4byte gUnk_080CA626
	.4byte gUnk_080CA63A
	.4byte 00000000
