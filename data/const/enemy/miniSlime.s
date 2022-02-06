	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

MiniSlime_Functions:: @ 080D17C0
	.4byte MiniSlime_OnTick
	.4byte MiniSlime_OnCollision
	.4byte GenericKnockback
	.4byte MiniSlime_OnDeath
	.4byte GenericConfused
	.4byte MiniSlime_OnGrabbed

gUnk_080D17D8:: @ 080D17D8
	.4byte sub_080452A4
	.4byte sub_080452E4
	.4byte sub_080452FC
	.4byte sub_08045374
