	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CE47C:: @ 080CE47C
	.incbin "rope/gUnk_080CE47C.bin"

gUnk_080CE48D:: @ 080CE48D
	.incbin "rope/gUnk_080CE48D.bin"

gUnk_080CE49E:: @ 080CE49E
	.incbin "rope/gUnk_080CE49E.bin"

gUnk_080CE4AF:: @ 080CE4AF
	.incbin "rope/gUnk_080CE4AF.bin"

gUnk_080CE4C0:: @ 080CE4C0
	.incbin "rope/gUnk_080CE4C0.bin"

gUnk_080CE4D1:: @ 080CE4D1
	.incbin "rope/gUnk_080CE4D1.bin"

gUnk_080CE4E2:: @ 080CE4E2
	.incbin "rope/gUnk_080CE4E2.bin"

gUnk_080CE4F3:: @ 080CE4F3
	.incbin "rope/gUnk_080CE4F3.bin"

gSpriteAnimations_Rope:: @ 080CE50C
	.4byte gUnk_080CE47C
	.4byte gUnk_080CE48D
	.4byte gUnk_080CE49E
	.4byte gUnk_080CE4AF
	.4byte gUnk_080CE4C0
	.4byte gUnk_080CE4D1
	.4byte gUnk_080CE4E2
	.4byte gUnk_080CE4F3
	.4byte 00000000
