	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

MiniFireballGuy_Functions:: @ 080D1868
	.4byte MiniFireballGuy_OnTick
	.4byte MiniFireballGuy_OnCollision
	.4byte GenericKnockback
	.4byte MiniFireballGuy_OnDeath
	.4byte GenericConfused
	.4byte MiniFireballGuy_OnGrabbed

gUnk_080D1880:: @ 080D1880
	.4byte sub_08045618
	.4byte sub_08045654
