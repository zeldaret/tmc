	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEC24:: @ 080CEC24
	.incbin "baserom.gba", 0x0CEC24, 0x0000005

gUnk_080CEC29:: @ 080CEC29
	.incbin "baserom.gba", 0x0CEC29, 0x0000019

gUnk_080CEC42:: @ 080CEC42
	.incbin "baserom.gba", 0x0CEC42, 0x0000009

gUnk_080CEC4B:: @ 080CEC4B
	.incbin "baserom.gba", 0x0CEC4B, 0x0000011

gUnk_080CEC5C:: @ 080CEC5C
	.incbin "baserom.gba", 0x0CEC5C, 0x0000014

gUnk_080CEC70:: @ 080CEC70
	.4byte gUnk_080CEC24
	.4byte gUnk_080CEC29
	.4byte gUnk_080CEC42
	.4byte gUnk_080CEC4B
	.4byte gUnk_080CEC5C
	.4byte 00000000
