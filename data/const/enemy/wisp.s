	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

Wisp_Functions:: @ 080CEB74
	.4byte Wisp_OnTick
	.4byte Wisp_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte Wisp_OnGrabbed

gUnk_080CEB8C:: @ 080CEB8C
	.4byte sub_08033674
	.4byte sub_080336A8
	.4byte sub_080336DC

gUnk_080CEB98:: @ 080CEB98
 	.4byte sub_08033650
	.4byte sub_08033658
	.4byte sub_08033660


gUnk_080CEBA4:: @ 080CEBA4
	.incbin "wisp/gUnk_080CEBA4.bin"
