	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

Keaton_Functions:: @ 080CE7B0
	.4byte Keaton_OnTick
	.4byte Keaton_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte Keaton_OnGrabbed

gUnk_080CE7C8:: @ 080CE7C8
	.4byte sub_08032468
	.4byte sub_0803248C
	.4byte sub_080324CC
	.4byte sub_080324FC
	.4byte sub_08032574
	.4byte sub_080325C4

gUnk_080CE7E0:: @ 080CE7E0
	.incbin "keaton/gUnk_080CE7E0.bin"

gUnk_080CE7F0:: @ 080CE7F0
	.incbin "keaton/gUnk_080CE7F0.bin"

gUnk_080CE810:: @ 080CE810
	.incbin "keaton/gUnk_080CE810.bin"
