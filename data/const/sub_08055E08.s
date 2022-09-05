	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ sub_08055E08.c
gUnk_080FF400:: @ 080FF400
	.incbin "data_080FEEB8/gUnk_080FF400.bin"
	.4byte script_StampKinstone
	.incbin "data_080FEEB8/gUnk_080FF400_1.bin"

@ sub_08055E08.c
gUnk_080FF420:: @ 080FF420
	.4byte sub_08055E24
	.4byte nullsub_493
