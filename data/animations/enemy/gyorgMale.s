	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1C70:: @ 080D1C70
	.incbin "assets/gyorgMale/gUnk_080D1C70.bin"

gUnk_080D1C91:: @ 080D1C91
	.incbin "assets/gyorgMale/gUnk_080D1C91.bin"

gUnk_080D1CBC:: @ 080D1CBC
	.4byte gUnk_080D1C70
	.4byte gUnk_080D1C91
	.4byte 00000000
