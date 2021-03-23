	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08122800:: @ 08122800
	.incbin "baserom.gba", 0x122800, 0x0000019

gUnk_08122819:: @ 08122819
	.incbin "baserom.gba", 0x122819, 0x000001B

gUnk_08122834:: @ 08122834
	.4byte gUnk_08122800
	.4byte gUnk_08122819
