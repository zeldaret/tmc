	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111520:: @ 08111520
	.incbin "baserom.gba", 0x111520, 0x0000007

gUnk_08111527:: @ 08111527
	.incbin "baserom.gba", 0x111527, 0x0000002

gUnk_08111529:: @ 08111529
	.incbin "baserom.gba", 0x111529, 0x0000007

gUnk_08111530:: @ 08111530
	.4byte sub_08068708
	.4byte sub_08068730

gUnk_08111538:: @ 08111538
	.incbin "baserom.gba", 0x111538, 0x0000006

gUnk_0811153E:: @ 0811153E
	.incbin "baserom.gba", 0x11153E, 0x0000006
