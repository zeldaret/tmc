	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129A70:: @ 08129A70
	.incbin "baserom.gba", 0x129A70, 0x0000019

gUnk_08129A89:: @ 08129A89
	.incbin "baserom.gba", 0x129A89, 0x0000027

gUnk_08129AB0:: @ 08129AB0
	.4byte gUnk_08129A70
	.4byte gUnk_08129A89
	.4byte 00000000
