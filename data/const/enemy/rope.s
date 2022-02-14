	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

Rope_Functions:: @ 080CE448
	.4byte Rope_OnTick+1
	.4byte Rope_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte Rope_OnGrabbed

gUnk_080CE460:: @ 080CE460
	.4byte sub_08031434
	.4byte sub_08031480
	.4byte sub_080314FC
	.4byte sub_080315BC

gUnk_080CE470:: @ 080CE470
	.4byte sub_0803140C
	.4byte sub_08031418
	.4byte sub_08031420
