	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F96C:: @ 0810F96C
	.incbin "din/gUnk_0810F96C.bin"

gUnk_0810F971:: @ 0810F971
	.incbin "din/gUnk_0810F971.bin"

gUnk_0810F976:: @ 0810F976
	.incbin "din/gUnk_0810F976.bin"

gUnk_0810F97B:: @ 0810F97B
	.incbin "din/gUnk_0810F97B.bin"

gSpriteAnimations_Din:: @ 0810F98C
	.4byte gUnk_0810F96C
	.4byte gUnk_0810F976
	.4byte gUnk_0810F96C
	.4byte gUnk_0810F971
	.4byte gUnk_0810F97B
	.4byte gUnk_0810F97B
	.4byte gUnk_0810F97B
	.4byte gUnk_0810F97B
	.4byte 00000000
