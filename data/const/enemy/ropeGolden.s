	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

RopeGolden_Functions:: @ 080CF4C8
	.4byte RopeGolden_OnTick+1
	.4byte RopeGolden_OnCollision
	.4byte GenericKnockback
	.4byte RopeGolden_OnDeath
	.4byte GenericConfused
	.4byte RopeGolden_OnTick+1

gUnk_080CF4E0:: @ 080CF4E0
	.4byte sub_08038258
	.4byte sub_0803827C
	.4byte sub_080382EC
	.4byte sub_08038304
