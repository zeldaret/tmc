	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F9B0:: @ 0810F9B0
	.incbin "baserom.gba", 0x10F9B0, 0x0000005

gUnk_0810F9B5:: @ 0810F9B5
	.incbin "baserom.gba", 0x10F9B5, 0x0000005

gUnk_0810F9BA:: @ 0810F9BA
	.incbin "baserom.gba", 0x10F9BA, 0x0000005

gUnk_0810F9BF:: @ 0810F9BF
	.incbin "baserom.gba", 0x10F9BF, 0x0000011

gUnk_0810F9D0:: @ 0810F9D0
	.4byte gUnk_0810F9B0
	.4byte gUnk_0810F9BA
	.4byte gUnk_0810F9B0
	.4byte gUnk_0810F9B5
	.4byte gUnk_0810F9BF
	.4byte gUnk_0810F9BF
	.4byte gUnk_0810F9BF
	.4byte gUnk_0810F9BF
	.4byte 00000000
