	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129954:: @ 08129954
	.4byte sub_080A8DDC
	.4byte sub_080A8DDC
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity

gUnk_08129968:: @ 08129968
	.4byte sub_080A8E28
	.4byte sub_080A8FB8
	.4byte sub_080A9058
	.4byte sub_080A90BC

gUnk_08129978:: @ 08129978
	.incbin "baserom.gba", 0x129978, 0x0000008

gUnk_08129980:: @ 08129980
	.incbin "baserom.gba", 0x129980, 0x0000008

gUnk_08129988:: @ 08129988
	.incbin "baserom.gba", 0x129988, 0x0000010
