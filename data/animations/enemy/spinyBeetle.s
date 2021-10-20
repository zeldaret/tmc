	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEC24:: @ 080CEC24
	.incbin "spinyBeetle/gUnk_080CEC24.bin"

gUnk_080CEC29:: @ 080CEC29
	.incbin "spinyBeetle/gUnk_080CEC29.bin"

gUnk_080CEC42:: @ 080CEC42
	.incbin "spinyBeetle/gUnk_080CEC42.bin"

gUnk_080CEC4B:: @ 080CEC4B
	.incbin "spinyBeetle/gUnk_080CEC4B.bin"

gUnk_080CEC5C:: @ 080CEC5C
	.incbin "spinyBeetle/gUnk_080CEC5C.bin"

gSpriteAnimations_SpinyBeetle:: @ 080CEC70
	.4byte gUnk_080CEC24
	.4byte gUnk_080CEC29
	.4byte gUnk_080CEC42
	.4byte gUnk_080CEC4B
	.4byte gUnk_080CEC5C
	.4byte 00000000
