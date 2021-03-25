	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120A30:: @ 08120A30
	.incbin "baserom.gba", 0x120A30, 0x000000C

gUnk_08120A3C:: @ 08120A3C
	.incbin "baserom.gba", 0x120A3C, 0x000000C

gUnk_08120A48:: @ 08120A48
	.incbin "baserom.gba", 0x120A48, 0x000000C

gUnk_08120A54:: @ 08120A54
	.4byte gUnk_08120A30
	.4byte gUnk_08120A30
	.4byte gUnk_08120A48
	.4byte gUnk_08120A3C
	.4byte gUnk_08120A3C
