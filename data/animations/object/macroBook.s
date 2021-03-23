	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123CB8:: @ 08123CB8
	.incbin "baserom.gba", 0x123CB8, 0x0000005

gUnk_08123CBD:: @ 08123CBD
	.incbin "baserom.gba", 0x123CBD, 0x0000011

gUnk_08123CCE:: @ 08123CCE
	.incbin "baserom.gba", 0x123CCE, 0x000001D

gUnk_08123CEB:: @ 08123CEB
	.incbin "baserom.gba", 0x123CEB, 0x0000029

gUnk_08123D14:: @ 08123D14
	.4byte gUnk_08123CB8
	.4byte gUnk_08123CBD
	.4byte gUnk_08123CCE
	.4byte gUnk_08123CEB
	.4byte 00000000
