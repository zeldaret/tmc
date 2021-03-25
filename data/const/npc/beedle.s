	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C88C:: @ 0810C88C
	.incbin "baserom.gba", 0x10C88C, 0x0000008

gUnk_0810C894:: @ 0810C894
	.incbin "baserom.gba", 0x10C894, 0x0000008

gUnk_0810C89C:: @ 0810C89C
	.incbin "baserom.gba", 0x10C89C, 0x0000011

gUnk_0810C8AD:: @ 0810C8AD
	.incbin "baserom.gba", 0x10C8AD, 0x0000027

gUnk_0810C8D4:: @ 0810C8D4
	.incbin "baserom.gba", 0x10C8D4, 0x000000C

gUnk_0810C8E0:: @ 0810C8E0
	.4byte sub_080632E0
	.4byte sub_08063314
	.4byte sub_0806336C
	.4byte sub_08063390

gUnk_0810C8F0:: @ 0810C8F0
	.incbin "baserom.gba", 0x10C8F0, 0x0000078

