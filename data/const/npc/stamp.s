	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gStampBehaviors1:: @ 0810C2CC
	.4byte sub_08062BD4
	.4byte sub_08062BF8
	.4byte sub_08062C24
	.4byte sub_08062C54

gStampBehaviors2:: @ 0810C2DC
	.4byte sub_08062C7C
	.4byte sub_08062CA4

gUnk_0810C2E4:: @ 0810C2E4
	.incbin "assets/stamp/gUnk_0810C2E4.bin"
