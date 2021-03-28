	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D0448:: @ 080D0448
	.4byte sub_0803CE98
	.4byte sub_0803CF24
	.4byte sub_0803CF38
	.4byte sub_0803CF94

gUnk_080D0458:: @ 080D0458
	.incbin "baserom.gba", 0x0D0458, 0x0000010

gUnk_080D0468:: @ 080D0468
	.incbin "baserom.gba", 0x0D0468, 0x0000008
