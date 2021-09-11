	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D0988:: @ 080D0988
	.incbin "baserom.gba", 0x0D0988, 0x000001C

gUnk_080D09A4:: @ 080D09A4
	.incbin "baserom.gba", 0x0D09A4, 0x0000025

gUnk_080D09C9:: @ 080D09C9
	.incbin "baserom.gba", 0x0D09C9, 0x0000025

gUnk_080D09EE:: @ 080D09EE
	.incbin "baserom.gba", 0x0D09EE, 0x0000044

gUnk_080D0A32:: @ 080D0A32
	.incbin "baserom.gba", 0x0D0A32, 0x0000039

gUnk_080D0A6B:: @ 080D0A6B
	.incbin "baserom.gba", 0x0D0A6B, 0x0000004

gUnk_080D0A6F:: @ 080D0A6F
	.incbin "baserom.gba", 0x0D0A6F, 0x0000004

gUnk_080D0A73:: @ 080D0A73
	.incbin "baserom.gba", 0x0D0A73, 0x000000C

gUnk_080D0A7F:: @ 080D0A7F
	.incbin "baserom.gba", 0x0D0A7F, 0x000000C

gUnk_080D0A8B:: @ 080D0A8B
	.incbin "baserom.gba", 0x0D0A8B, 0x0000005

gUnk_080D0A90:: @ 080D0A90
	.4byte gUnk_080D0988
	.4byte gUnk_080D09C9
	.4byte gUnk_080D09A4
	.4byte gUnk_080D09EE
	.4byte gUnk_080D0A32
	.4byte gUnk_080D0A6B
	.4byte gUnk_080D0A6F
	.4byte gUnk_080D0A73
	.4byte gUnk_080D0A7F
	.4byte gUnk_080D0A8B
	.4byte 00000000
