	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD474:: @ 080CD474
	.incbin "baserom.gba", 0x0CD474, 0x0000011

gUnk_080CD485:: @ 080CD485
	.incbin "baserom.gba", 0x0CD485, 0x0000011

gUnk_080CD496:: @ 080CD496
	.incbin "baserom.gba", 0x0CD496, 0x0000011

gUnk_080CD4A7:: @ 080CD4A7
	.incbin "baserom.gba", 0x0CD4A7, 0x0000011

gUnk_080CD4B8:: @ 080CD4B8
	.incbin "baserom.gba", 0x0CD4B8, 0x0000011

gUnk_080CD4C9:: @ 080CD4C9
	.incbin "baserom.gba", 0x0CD4C9, 0x0000011

gUnk_080CD4DA:: @ 080CD4DA
	.incbin "baserom.gba", 0x0CD4DA, 0x0000011

gUnk_080CD4EB:: @ 080CD4EB
	.incbin "baserom.gba", 0x0CD4EB, 0x0000011

gUnk_080CD4FC:: @ 080CD4FC
	.incbin "baserom.gba", 0x0CD4FC, 0x0000004

gUnk_080CD500:: @ 080CD500
	.incbin "baserom.gba", 0x0CD500, 0x0000004

gUnk_080CD504:: @ 080CD504
	.incbin "baserom.gba", 0x0CD504, 0x0000004

gUnk_080CD508:: @ 080CD508
	.incbin "baserom.gba", 0x0CD508, 0x0000004

gUnk_080CD50C:: @ 080CD50C
	.4byte gUnk_080CD474
	.4byte gUnk_080CD485
	.4byte gUnk_080CD496
	.4byte gUnk_080CD4A7
	.4byte gUnk_080CD4B8
	.4byte gUnk_080CD4C9
	.4byte gUnk_080CD4DA
	.4byte gUnk_080CD4EB
	.4byte gUnk_080CD4FC
	.4byte gUnk_080CD500
	.4byte gUnk_080CD504
	.4byte gUnk_080CD508
	.4byte 00000000
