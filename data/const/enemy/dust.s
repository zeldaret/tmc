	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1588:: @ 080D1588
	.4byte sub_08044134
	.4byte sub_0804414C
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte sub_0804415C

gUnk_080D15A0:: @ 080D15A0
	.4byte sub_080441E0
	.4byte sub_080442A0

gUnk_080D15A8:: @ 080D15A8
	.4byte sub_080441BC
	.4byte sub_080441C4
	.4byte sub_080441CC

gUnk_080D15B4:: @ 080D15B4
	.incbin "dust/gUnk_080D15B4.bin"
