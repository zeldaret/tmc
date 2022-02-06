	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

TektiteGolden_Functions:: @ 080CF4A0
	.4byte TektiteGolden_OnTick
	.4byte TektiteGolden_OnCollision
	.4byte GenericKnockback
	.4byte TektiteGolden_OnDeath
	.4byte TektiteGolden_OnConfused
	.4byte TektiteGolden_OnTick

gUnk_080CF4B8:: @ 080CF4B8
	.4byte sub_08037FA0
	.4byte sub_08037Fe0
	.4byte sub_08038048
	.4byte sub_08038110
