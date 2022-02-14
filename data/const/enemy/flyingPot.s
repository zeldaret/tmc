	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_080CF244:: @ 080CF244
	.4byte sub_0803708C
	.4byte sub_080370A4
	.4byte GenericKnockback
	.4byte GenericDeath
	.4byte GenericConfused
	.4byte sub_0803712C

gUnk_080CF25C:: @ 080CF25C
	.4byte sub_08037220
	.4byte sub_08037280
	.4byte sub_080372E8
	.4byte sub_0803737C
	.4byte sub_080373B0
	.4byte sub_080373C8
	.4byte sub_080373E0

gUnk_080CF278:: @ 080CF278
	.4byte sub_08037144
	.4byte sub_0803715C
	.4byte sub_0803718C
	.4byte sub_080371F8
	.4byte nullsub_161
	.4byte sub_08037218

gUnk_080CF290:: @ 080CF290
	.incbin "flyingPot/gUnk_080CF290.bin"
