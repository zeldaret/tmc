	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_MoblinLady_1_0:: @ 08113004
	.include "animations/gSpriteAnimations_MoblinLady_1_0.s"

gSpriteAnimations_MoblinLady_1:: @ 08113024
	.4byte gSpriteAnimations_MoblinLady_1_0
	.include "animations/gSpriteAnimations_MoblinLady_1.s"

gSpriteAnimations_MoblinLady_0:: @ 0811302C
	.include "animations/gSpriteAnimations_MoblinLady_0.s"

gSpriteAnimations_MoblinLady:: @ 08113070
	.4byte gSpriteAnimations_MoblinLady_0
	.4byte 00000000
