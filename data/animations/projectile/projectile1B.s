	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A5AC:: @ 0812A5AC
	.incbin "projectile1B/gUnk_0812A5AC.bin"

gUnk_0812A5B9:: @ 0812A5B9
	.incbin "projectile1B/gUnk_0812A5B9.bin"

gUnk_0812A5C6:: @ 0812A5C6
	.incbin "projectile1B/gUnk_0812A5C6.bin"

gUnk_0812A5D4:: @ 0812A5D4
	.4byte gUnk_0812A5B9
	.4byte gUnk_0812A5AC
	.4byte gUnk_0812A5B9
	.4byte gUnk_0812A5C6
	.4byte 00000000
