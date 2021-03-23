	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A9FC:: @ 0812A9FC
	.incbin "baserom.gba", 0x12A9FC, 0x0000035

gUnk_0812AA31:: @ 0812AA31
	.incbin "baserom.gba", 0x12AA31, 0x000001F

gUnk_0812AA50:: @ 0812AA50
	.4byte gUnk_0812A9FC
	.4byte gUnk_0812AA31
	.4byte 00000000
