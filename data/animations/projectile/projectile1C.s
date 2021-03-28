	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A63C:: @ 0812A63C
	.incbin "baserom.gba", 0x12A63C, 0x0000020

gUnk_0812A65C:: @ 0812A65C
	.incbin "baserom.gba", 0x12A65C, 0x0000009

gUnk_0812A665:: @ 0812A665
	.incbin "baserom.gba", 0x12A665, 0x0000009

gUnk_0812A66E:: @ 0812A66E
	.incbin "baserom.gba", 0x12A66E, 0x0000009

gUnk_0812A677:: @ 0812A677
	.incbin "baserom.gba", 0x12A677, 0x0000009

gUnk_0812A680:: @ 0812A680
	.incbin "baserom.gba", 0x12A680, 0x0000009

gUnk_0812A689:: @ 0812A689
	.incbin "baserom.gba", 0x12A689, 0x000000B

gUnk_0812A694:: @ 0812A694
	.4byte gUnk_0812A63C
	.4byte gUnk_0812A65C
	.4byte gUnk_0812A665
	.4byte gUnk_0812A66E
	.4byte gUnk_0812A677
	.4byte gUnk_0812A680
	.4byte gUnk_0812A689
	.4byte 00000000
