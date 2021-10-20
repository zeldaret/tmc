	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FF70:: @ 0810FF70
	.incbin "malon/gUnk_0810FF70.bin"

gUnk_0810FF75:: @ 0810FF75
	.incbin "malon/gUnk_0810FF75.bin"

gUnk_0810FF7A:: @ 0810FF7A
	.incbin "malon/gUnk_0810FF7A.bin"

gUnk_0810FF7F:: @ 0810FF7F
	.incbin "malon/gUnk_0810FF7F.bin"

gUnk_0810FF84:: @ 0810FF84
	.incbin "malon/gUnk_0810FF84.bin"

gUnk_0810FFA5:: @ 0810FFA5
	.incbin "malon/gUnk_0810FFA5.bin"

gUnk_0810FFB6:: @ 0810FFB6
	.incbin "malon/gUnk_0810FFB6.bin"

gUnk_0810FFD7:: @ 0810FFD7
	.incbin "malon/gUnk_0810FFD7.bin"

gUnk_08110014:: @ 08110014
	.incbin "malon/gUnk_08110014.bin"

gSpriteAnimations_Malon:: @ 08110028
	.4byte gUnk_0810FF70
	.4byte gUnk_0810FF75
	.4byte gUnk_0810FF7A
	.4byte gUnk_0810FF7F
	.4byte gUnk_0810FFB6
	.4byte gUnk_0810FF84
	.4byte gUnk_0810FFA5
	.4byte gUnk_0810FFB6
	.4byte gUnk_0810FF70
	.4byte gUnk_0810FF75
	.4byte gUnk_08110014
	.4byte gUnk_0810FF7F
	.4byte gUnk_0810FFD7
	.4byte gUnk_0810FFD7
	.4byte gUnk_0810FFD7
	.4byte gUnk_0810FFD7
	.4byte 00000000
