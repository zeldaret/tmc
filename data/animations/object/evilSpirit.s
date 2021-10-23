	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
gUnk_08120682:: @ 08120682
	.incbin "evilSpirit/gUnk_08120682.bin"

gUnk_08120686:: @ 08120686
	.incbin "evilSpirit/gUnk_08120686.bin"

gUnk_0812068A:: @ 0812068A
	.incbin "evilSpirit/gUnk_0812068A.bin"

gUnk_0812068E:: @ 0812068E
	.incbin "evilSpirit/gUnk_0812068E.bin"

gUnk_08120692:: @ 08120692
	.incbin "evilSpirit/gUnk_08120692.bin"

gSpriteAnimations_EvilSpirit:: @ 08120698
	.4byte gUnk_08120682
	.4byte gUnk_08120686
	.4byte gUnk_0812068A
	.4byte gUnk_0812068E
	.4byte gUnk_08120692
