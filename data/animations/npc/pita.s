	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
 @   .align 2

gUnk_0810C445:: @ 0810C445
	.incbin "baserom.gba", 0x10C445, 0x0000005

gUnk_0810C44A:: @ 0810C44A
	.incbin "baserom.gba", 0x10C44A, 0x000001E

gUnk_0810C468:: @ 0810C468
	.4byte gUnk_0810C445
	.4byte gUnk_0810C445
	.4byte gUnk_0810C445
	.4byte gUnk_0810C445
	.4byte gUnk_0810C44A
	.4byte gUnk_0810C44A
	.4byte gUnk_0810C44A
	.4byte gUnk_0810C44A
	.4byte 00000000
