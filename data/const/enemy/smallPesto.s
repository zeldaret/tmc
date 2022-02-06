	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

SmallPesto_Functions:: @ 080CE530
	.4byte SmallPesto_OnTick
	.4byte SmallPesto_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte SmallPesto_OnGrabbed

gUnk_080CE548:: @ 080CE548
	.4byte sub_08031704
	.4byte sub_08031714
	.4byte sub_08031770

gUnk_080CE554:: @ 080CE554
	.4byte sub_080316DC
	.4byte sub_080316E8
	.4byte sub_080316F0

gUnk_080CE560:: @ 080CE560
	.incbin "smallPesto/gUnk_080CE560.bin"
