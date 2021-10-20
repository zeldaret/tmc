	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113004:: @ 08113004
	.incbin "moblinLady/gUnk_08113004.bin"

gSpriteAnimations_MoblinLady_1:: @ 08113024
	.4byte gUnk_08113004
	.incbin "moblinLady/gSpriteAnimations_MoblinLady_1.bin"

gUnk_0811302C:: @ 0811302C
	.incbin "moblinLady/gUnk_0811302C.bin"

gSpriteAnimations_MoblinLady:: @ 08113070
	.4byte gUnk_0811302C
	.4byte 00000000
