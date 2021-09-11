	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081249B8:: @ 081249B8
	.incbin "assets/objectB2/gUnk_081249B8.bin"

gUnk_081249C9:: @ 081249C9
	.incbin "assets/objectB2/gUnk_081249C9.bin"

gUnk_081249DA:: @ 081249DA
	.incbin "assets/objectB2/gUnk_081249DA.bin"

gUnk_081249EB:: @ 081249EB
	.incbin "assets/objectB2/gUnk_081249EB.bin"

gUnk_081249FC:: @ 081249FC
	.4byte gUnk_081249B8
	.4byte gUnk_081249C9
	.4byte gUnk_081249DA
	.4byte gUnk_081249EB
	.4byte 00000000
