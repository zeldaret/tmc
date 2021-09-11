	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811ECD4:: @ 0811ECD4
	.incbin "deathFx/gUnk_0811ECD4.bin"

gUnk_0811ED4D:: @ 0811ED4D
	.incbin "deathFx/gUnk_0811ED4D.bin"

gUnk_0811ED86:: @ 0811ED86
	.incbin "deathFx/gUnk_0811ED86.bin"

gUnk_0811EDB7:: @ 0811EDB7
	.incbin "deathFx/gUnk_0811EDB7.bin"

gUnk_0811EE10:: @ 0811EE10
	.4byte gUnk_0811ECD4
	.4byte gUnk_0811ED86
	.4byte gUnk_0811ED4D
	.4byte 00000000

gUnk_0811EE20:: @ 0811EE20
	.4byte gUnk_0811EDB7
	.4byte 00000000
