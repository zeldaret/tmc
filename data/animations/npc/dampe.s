	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113350:: @ 08113350
	.incbin "assets/dampe/gUnk_08113350.bin"

gUnk_08113369:: @ 08113369
	.incbin "assets/dampe/gUnk_08113369.bin"

gUnk_0811336E:: @ 0811336E
	.incbin "assets/dampe/gUnk_0811336E.bin"

gUnk_08113377:: @ 08113377
	.incbin "assets/dampe/gUnk_08113377.bin"

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
