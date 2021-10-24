	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D06E0:: @ 080D06E0
	.4byte sub_0803E538
	.4byte sub_0803E550
	.4byte sub_0803E560
	.4byte sub_0803E570
	.4byte sub_08001242
	.4byte nullsub_20

gUnk_080D06F8:: @ 080D06F8
	.4byte sub_0803E580
	.4byte sub_0803E5E8
	.4byte sub_0803E61C
	.4byte sub_0803E66C
	.4byte sub_0803E6B4
	.4byte sub_0803E6E0
	.4byte sub_0803E71C
	.4byte sub_0803E75C
	.4byte sub_0803E7B4
	.4byte sub_0803E7CC
	.4byte sub_0803E818

gUnk_080D0724:: @ 080D0724
	.incbin "ballChainSoldier/gUnk_080D0724.bin"

gUnk_080D0728:: @ 080D0728
	.incbin "ballChainSoldier/gUnk_080D0728.bin"

gUnk_080D0730:: @ 080D0730
	.incbin "ballChainSoldier/gUnk_080D0730.bin"

gSpriteAnimations_BallChainSoldier_3:: @ 080D0738
	.include "animations/gSpriteAnimations_BallChainSoldier_3.s"

gSpriteAnimations_BallChainSoldier_2:: @ 080D073C
	.include "animations/gSpriteAnimations_BallChainSoldier_2.s"

gSpriteAnimations_BallChainSoldier_1:: @ 080D0740
	.include "animations/gSpriteAnimations_BallChainSoldier_1.s"
