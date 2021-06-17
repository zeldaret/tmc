	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08125050:: @ 08125050
.ifdef JP
	.incbin "baserom_jp.gba", 0x124D14, 0x000000C
.else
	.incbin "baserom.gba", 0x125050, 0x000000C
.endif

gUnk_0812505C:: @ 0812505C
	.4byte sub_080A23DC
	.4byte sub_080A2420
	.4byte sub_080A243C
