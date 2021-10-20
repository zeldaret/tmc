	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CDA0:: @ 0810CDA0
	.incbin "sittingPerson/gUnk_0810CDA0.bin"

gUnk_0810CDB1:: @ 0810CDB1
	.incbin "sittingPerson/gUnk_0810CDB1.bin"

gUnk_0810CDC2:: @ 0810CDC2
	.incbin "sittingPerson/gUnk_0810CDC2.bin"

gSpriteAnimations_SittingPerson:: @ 0810CDD4
	.4byte gUnk_0810CDA0
	.4byte gUnk_0810CDA0
	.4byte gUnk_0810CDB1
	.4byte gUnk_0810CDC2
	.4byte gUnk_0810CDC2
	.4byte gUnk_0810CDC2
	.4byte gUnk_0810CDB1
	.4byte gUnk_0810CDA0
	.4byte 00000000
