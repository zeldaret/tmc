	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F8B8:: @ 0811F8B8
	.incbin "assets/chestSpawner/gUnk_0811F8B8.bin"

gUnk_0811F8C9:: @ 0811F8C9
	.incbin "assets/chestSpawner/gUnk_0811F8C9.bin"

gUnk_0811F8CE:: @ 0811F8CE
	.incbin "assets/chestSpawner/gUnk_0811F8CE.bin"

gUnk_0811F8D3:: @ 0811F8D3
	.incbin "assets/chestSpawner/gUnk_0811F8D3.bin"

gUnk_0811F8E8:: @ 0811F8E8
	.incbin "assets/chestSpawner/gUnk_0811F8E8.bin"

gUnk_0811F8F0:: @ 0811F8F0
	.4byte gUnk_0811F8B8
	.4byte gUnk_0811F8C9
	.4byte gUnk_0811F8D3
	.4byte gUnk_0811F8E8
	.4byte gUnk_0811F8CE
	.4byte 00000000
