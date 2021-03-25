	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
 @   .align 2

gUnk_080CEA66:: @ 080CEA66
	.incbin "baserom.gba", 0x0CEA66, 0x0000005

gUnk_080CEA6B:: @ 080CEA6B
	.incbin "baserom.gba", 0x0CEA6B, 0x0000005

gUnk_080CEA70:: @ 080CEA70
	.incbin "baserom.gba", 0x0CEA70, 0x0000005

gUnk_080CEA75:: @ 080CEA75
	.incbin "baserom.gba", 0x0CEA75, 0x0000005

gUnk_080CEA7A:: @ 080CEA7A
	.incbin "baserom.gba", 0x0CEA7A, 0x0000011

gUnk_080CEA8B:: @ 080CEA8B
	.incbin "baserom.gba", 0x0CEA8B, 0x0000011

gUnk_080CEA9C:: @ 080CEA9C
	.incbin "baserom.gba", 0x0CEA9C, 0x0000011

gUnk_080CEAAD:: @ 080CEAAD
	.incbin "baserom.gba", 0x0CEAAD, 0x0000011

gUnk_080CEABE:: @ 080CEABE
	.incbin "baserom.gba", 0x0CEABE, 0x0000011

gUnk_080CEACF:: @ 080CEACF
	.incbin "baserom.gba", 0x0CEACF, 0x0000011

gUnk_080CEAE0:: @ 080CEAE0
	.incbin "baserom.gba", 0x0CEAE0, 0x0000011

gUnk_080CEAF1:: @ 080CEAF1
	.incbin "baserom.gba", 0x0CEAF1, 0x0000013

gUnk_080CEB04:: @ 080CEB04
	.4byte gUnk_080CEA66
	.4byte gUnk_080CEA6B
	.4byte gUnk_080CEA70
	.4byte gUnk_080CEA75
	.4byte gUnk_080CEA7A
	.4byte gUnk_080CEA8B
	.4byte gUnk_080CEA9C
	.4byte gUnk_080CEAAD
	.4byte gUnk_080CEABE
	.4byte gUnk_080CEACF
	.4byte gUnk_080CEAE0
	.4byte gUnk_080CEAF1
	.4byte 00000000
