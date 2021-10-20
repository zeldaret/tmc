	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081243F4:: @ 081243F4
	.incbin "fan/gUnk_081243F4.bin"

gUnk_08124465:: @ 08124465
	.incbin "fan/gUnk_08124465.bin"

gUnk_081244D6:: @ 081244D6
	.incbin "fan/gUnk_081244D6.bin"

gUnk_08124547:: @ 08124547
	.incbin "fan/gUnk_08124547.bin"

gUnk_081245B8:: @ 081245B8
	.incbin "fan/gUnk_081245B8.bin"

gUnk_081245DD:: @ 081245DD
	.incbin "fan/gUnk_081245DD.bin"

gUnk_08124602:: @ 08124602
	.incbin "fan/gUnk_08124602.bin"

gUnk_08124627:: @ 08124627
	.incbin "fan/gUnk_08124627.bin"

gSpriteAnimations_Fan:: @ 0812464C
	.4byte gUnk_081243F4
	.4byte gUnk_08124465
	.4byte gUnk_081244D6
	.4byte gUnk_08124547
	.4byte gUnk_081245B8
	.4byte gUnk_081245DD
	.4byte gUnk_08124602
	.4byte gUnk_08124627
	.4byte 00000000
