	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812983C:: @ 0812983C
	.incbin "baserom.gba", 0x12983C, 0x0000009

gUnk_08129845:: @ 08129845
	.incbin "baserom.gba", 0x129845, 0x0000009

gUnk_0812984E:: @ 0812984E
	.incbin "baserom.gba", 0x12984E, 0x0000009

gUnk_08129857:: @ 08129857
	.incbin "baserom.gba", 0x129857, 0x0000009

gUnk_08129860:: @ 08129860
	.incbin "baserom.gba", 0x129860, 0x000000D

gUnk_0812986D:: @ 0812986D
	.incbin "baserom.gba", 0x12986D, 0x000000D

gUnk_0812987A:: @ 0812987A
	.incbin "baserom.gba", 0x12987A, 0x000000D

gUnk_08129887:: @ 08129887
	.incbin "baserom.gba", 0x129887, 0x000000D

gUnk_08129894:: @ 08129894
	.4byte gUnk_0812983C
	.4byte gUnk_08129845
	.4byte gUnk_0812984E
	.4byte gUnk_08129857
	.4byte gUnk_08129860
	.4byte gUnk_0812986D
	.4byte gUnk_0812987A
	.4byte gUnk_08129887
	.4byte 00000000
