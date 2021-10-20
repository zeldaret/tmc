	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CE164:: @ 080CE164
	.incbin "armos/gUnk_080CE164.bin"

gUnk_080CE16C:: @ 080CE16C
	.incbin "armos/gUnk_080CE16C.bin"

gUnk_080CE185:: @ 080CE185
	.incbin "armos/gUnk_080CE185.bin"

gUnk_080CE19E:: @ 080CE19E
	.incbin "armos/gUnk_080CE19E.bin"

gUnk_080CE1B7:: @ 080CE1B7
	.incbin "armos/gUnk_080CE1B7.bin"

gUnk_080CE1D0:: @ 080CE1D0
	.incbin "armos/gUnk_080CE1D0.bin"

gUnk_080CE205:: @ 080CE205
	.incbin "armos/gUnk_080CE205.bin"

gUnk_080CE246:: @ 080CE246
	.incbin "armos/gUnk_080CE246.bin"

gUnk_080CE25E:: @ 080CE25E
	.incbin "armos/gUnk_080CE25E.bin"

gSpriteAnimations_Armos:: @ 080CE264
	.4byte gUnk_080CE16C
	.4byte gUnk_080CE185
	.4byte gUnk_080CE19E
	.4byte gUnk_080CE1B7
	.4byte gUnk_080CE1D0
	.4byte gUnk_080CE205
	.4byte gUnk_080CE246
	.4byte gUnk_080CE25E
	.4byte 00000000
