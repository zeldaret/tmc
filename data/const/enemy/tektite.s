	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

Tektite_Functions:: @ 080CDED0
	.4byte Tektite_OnTick
	.4byte Tektite_OnCollision
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte Tektite_OnConfused
	.4byte Tektite_OnGrabbed

gUnk_080CDEE8:: @ 080CDEE8
	.4byte sub_0802F210
	.4byte sub_0802F284
	.4byte sub_0802F300
	.4byte sub_0802F3F4

gUnk_080CDEF8:: @ 080CDEF8
	.incbin "tektite/gUnk_080CDEF8.bin"
