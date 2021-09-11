	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FDE8:: @ 0810FDE8
	.incbin "assets/stockwell/gUnk_0810FDE8.bin"

gUnk_0810FDED:: @ 0810FDED
	.incbin "assets/stockwell/gUnk_0810FDED.bin"

gUnk_0810FDF2:: @ 0810FDF2
	.incbin "assets/stockwell/gUnk_0810FDF2.bin"

gUnk_0810FDF7:: @ 0810FDF7
	.incbin "assets/stockwell/gUnk_0810FDF7.bin"

gUnk_0810FE03:: @ 0810FE03
	.incbin "assets/stockwell/gUnk_0810FE03.bin"

gUnk_0810FE1F:: @ 0810FE1F
	.incbin "assets/stockwell/gUnk_0810FE1F.bin"

gUnk_0810FE68:: @ 0810FE68
	.incbin "assets/stockwell/gUnk_0810FE68.bin"

gUnk_0810FE90:: @ 0810FE90
	.4byte gUnk_0810FDED
	.4byte gUnk_0810FDE8
	.4byte gUnk_0810FDED
	.4byte gUnk_0810FDF2
	.4byte gUnk_0810FDF7
	.4byte gUnk_0810FE03
	.4byte gUnk_0810FE1F
	.4byte gUnk_0810FE68
