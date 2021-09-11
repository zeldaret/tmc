	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEC24:: @ 080CEC24
	.incbin "assets/spinyBeetle/gUnk_080CEC24.bin"

gUnk_080CEC29:: @ 080CEC29
	.incbin "assets/spinyBeetle/gUnk_080CEC29.bin"

gUnk_080CEC42:: @ 080CEC42
	.incbin "assets/spinyBeetle/gUnk_080CEC42.bin"

gUnk_080CEC4B:: @ 080CEC4B
	.incbin "assets/spinyBeetle/gUnk_080CEC4B.bin"

gUnk_080CEC5C:: @ 080CEC5C
	.incbin "assets/spinyBeetle/gUnk_080CEC5C.bin"

gUnk_080CEC70:: @ 080CEC70
	.4byte gUnk_080CEC24
	.4byte gUnk_080CEC29
	.4byte gUnk_080CEC42
	.4byte gUnk_080CEC4B
	.4byte gUnk_080CEC5C
	.4byte 00000000
