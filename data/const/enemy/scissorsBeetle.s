	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CF600:: @ 080CF600
	.4byte sub_080388D4
	.4byte sub_080388EC
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte nullsub_164

gUnk_080CF618:: @ 080CF618
	.4byte sub_08038984
	.4byte sub_080389E8
	.4byte sub_08038A70
	.4byte sub_08038B08
	.4byte sub_08038B64

gUnk_080CF62C:: @ 080CF62C
	.incbin "scissorsBeetle/gUnk_080CF62C.bin"

gUnk_080CF634:: @ 080CF634
	.incbin "scissorsBeetle/gUnk_080CF634.bin"

gUnk_080CF63C:: @ 080CF63C
	.incbin "scissorsBeetle/gUnk_080CF63C.bin"
