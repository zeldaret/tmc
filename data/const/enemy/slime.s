	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

Slime_Functions:: @ 080D16A4
	.4byte Slime_OnTick
	.4byte Slime_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte Slime_OnGrabbed

gUnk_080D16BC:: @ 080D16BC
	.4byte sub_08044FC8
	.4byte sub_08044FF8
	.4byte sub_08045018
	.4byte sub_08045088
	.4byte sub_080450A8

gUnk_080D16D0:: @ 080D16D0
	.incbin "slime/gUnk_080D16D0.bin"

gUnk_080D16D4:: @ 080D16D4
	.incbin "slime/gUnk_080D16D4.bin"

