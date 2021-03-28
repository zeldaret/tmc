	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gGibdo:: @ 080CF294
	.4byte Gibdo_OnTick+1
	.4byte sub_080374A4
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte nullsub_162

gUnk_080CF2AC:: @ 080CF2AC
	.4byte sub_08037558
	.4byte sub_08037580
	.4byte sub_080375A4
	.4byte sub_080375F8
	.4byte sub_08037624
	.4byte sub_08037690
	.4byte sub_080376D0
	.4byte sub_0803773C
	.4byte sub_0803775C

