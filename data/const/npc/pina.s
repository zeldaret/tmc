	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CDF8:: @ 0810CDF8
	.4byte sub_08063A98
	.4byte sub_08063AC0
	.4byte sub_08063B44

gUnk_0810CE04:: @ 0810CE04
	.incbin "baserom.gba", 0x10CE04, 0x0000050

