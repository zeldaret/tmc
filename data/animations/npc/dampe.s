	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113350:: @ 08113350
	.incbin "baserom.gba", 0x113350, 0x0000019

gUnk_08113369:: @ 08113369
	.incbin "baserom.gba", 0x113369, 0x0000005

gUnk_0811336E:: @ 0811336E
	.incbin "baserom.gba", 0x11336E, 0x0000009

gUnk_08113377:: @ 08113377
	.incbin "baserom.gba", 0x113377, 0x0000009

gUnk_08113380:: @ 08113380
	.4byte gUnk_08113350
	.4byte gUnk_08113350
	.4byte gUnk_08113350
	.4byte gUnk_08113350
	.4byte gUnk_08113369
	.4byte gUnk_0811336E
	.4byte gUnk_08113369
	.4byte gUnk_08113377
	.4byte 00000000
