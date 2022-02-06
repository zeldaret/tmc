	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

FireballGuy_Functions:: @ 080D17E8 
	.4byte FireballGuy_OnTick
	.4byte FireballGuy_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte FireballGuy_OnGrabbed

gUnk_080D1800:: @ 080D1800
	.4byte sub_080453E8
	.4byte sub_08045430
	.4byte sub_08045454

gUnk_080D180C:: @ 080D180C
	.incbin "fireballGuy/gUnk_080D180C.bin"

gUnk_080D1810:: @ 080D1810
	.incbin "fireballGuy/gUnk_080D1810.bin"
