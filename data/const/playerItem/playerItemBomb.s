	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B77C8:: @ 080B77C8
	.4byte sub_0801B250
	.4byte sub_0801B2CC
	.4byte sub_0801B318
	.4byte sub_0801B38C

gUnk_080B77D8:: @ 080B77D8
	.4byte sub_0801B330
	.4byte sub_0801B340
	.4byte sub_0801B354
	.4byte sub_0801B368
	.4byte sub_0801B384
	.incbin "assets/playerItemBomb/gUnk_080B77D8.bin"

gUnk_080B77F4:: @ 080B77F4
	.incbin "assets/playerItemBomb/gUnk_080B77F4.bin"
