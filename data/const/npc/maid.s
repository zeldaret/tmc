	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F874:: @ 0810F874
	.incbin "baserom.gba", 0x10F874, 0x0000018

gUnk_0810F88C:: @ 0810F88C
	.incbin "baserom.gba", 0x10F88C, 0x0000008

gUnk_0810F894:: @ 0810F894
	.incbin "baserom.gba", 0x10F894, 0x0000050
