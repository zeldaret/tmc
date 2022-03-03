	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2



gUnk_08132714:: @ 08132714
	.4byte gUnk_08132AF4
	.4byte gUnk_08132AEA
	.4byte gUnk_08132AE0
	.4byte gUnk_08132AEA
	.4byte gUnk_08132B1A
	.4byte gUnk_08132B0C
	.4byte gUnk_08132AFE
	.4byte gUnk_08132B0C

gSpriteAnimations_ItemGustJar_2:: @ 08132734
	.include "animations/gSpriteAnimations_ItemGustJar_2.s"

gSpriteAnimations_ItemGustJar_1:: @ 08132744
	.include "animations/gSpriteAnimations_ItemGustJar_1.s"

gSpriteAnimations_ItemGustJar_0:: @ 08132754
	.include "animations/gSpriteAnimations_ItemGustJar_0.s"

gSpriteAnimations_ItemGustJar_6:: @ 08132764
	.include "animations/gSpriteAnimations_ItemGustJar_6.s"

gSpriteAnimations_ItemGustJar_5:: @ 08132774
	.include "animations/gSpriteAnimations_ItemGustJar_5.s"

gSpriteAnimations_ItemGustJar_4:: @ 08132784
	.include "animations/gSpriteAnimations_ItemGustJar_4.s"

gSpriteAnimations_ItemGustJar_10:: @ 08132794
	.include "animations/gSpriteAnimations_ItemGustJar_10.s"

gSpriteAnimations_ItemGustJar_9:: @ 081327AC
	.include "animations/gSpriteAnimations_ItemGustJar_9.s"

gSpriteAnimations_ItemGustJar_8:: @ 081327C4
	.include "animations/gSpriteAnimations_ItemGustJar_8.s"

gSpriteAnimations_ItemGustJar:: @ 081327DC
	.4byte gSpriteAnimations_ItemGustJar_0
	.4byte gSpriteAnimations_ItemGustJar_1
	.4byte gSpriteAnimations_ItemGustJar_2
	.4byte gSpriteAnimations_ItemGustJar_1
	.4byte gSpriteAnimations_ItemGustJar_4
	.4byte gSpriteAnimations_ItemGustJar_5
	.4byte gSpriteAnimations_ItemGustJar_6
	.4byte gSpriteAnimations_ItemGustJar_5
	.4byte gSpriteAnimations_ItemGustJar_8
	.4byte gSpriteAnimations_ItemGustJar_9
	.4byte gSpriteAnimations_ItemGustJar_10
	.4byte gSpriteAnimations_ItemGustJar_9
	.4byte 00000000

gSpriteFrames_23:: @ 08132810
	.incbin "playerItemGustJar/gSpriteFrames_23.bin"

gUnk_08132AE0:: @ 08132AE0
	.incbin "playerItemGustJar/gUnk_08132AE0.bin"

gUnk_08132AEA:: @ 08132AEA
	.incbin "playerItemGustJar/gUnk_08132AEA.bin"

gUnk_08132AF4:: @ 08132AF4
	.incbin "playerItemGustJar/gUnk_08132AF4.bin"

gUnk_08132AFE:: @ 08132AFE
	.incbin "playerItemGustJar/gUnk_08132AFE.bin"

gUnk_08132B0C:: @ 08132B0C
	.incbin "playerItemGustJar/gUnk_08132B0C.bin"

gUnk_08132B1A:: @ 08132B1A
	.incbin "playerItemGustJar/gUnk_08132B1A.bin"

gUnk_08132B28:: @ 08132B28
	.incbin "playerItemGustJar/gUnk_08132B28.bin"
