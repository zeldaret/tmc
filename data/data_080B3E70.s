	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B3E70:: @ 080B3E70
	.incbin "baserom.gba", 0x0B3E70, 0x0000008

gUnk_080B3E78:: @ 080B3E78
	.incbin "baserom.gba", 0x0B3E78, 0x0000008

gUnk_080B3E80:: @ 080B3E80
	.incbin "baserom.gba", 0x0B3E80, 0x0000574
