	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081225A0:: @ 081225A0
	.incbin "assets/thoughtBubble/gUnk_081225A0.bin"

gUnk_081225BC:: @ 081225BC
	.incbin "assets/thoughtBubble/gUnk_081225BC.bin"

gUnk_081225D8:: @ 081225D8
	.incbin "assets/thoughtBubble/gUnk_081225D8.bin"

gUnk_081225F4:: @ 081225F4
	.4byte gUnk_081225A0
	.4byte gUnk_081225BC
	.4byte gUnk_081225D8
	.4byte 00000000
