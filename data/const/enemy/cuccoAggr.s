	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CF778:: @ 080CF778
	.4byte sub_08038CF8
	.4byte sub_08038D10
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte nullsub_165

gUnk_080CF790:: @ 080CF790
	.4byte sub_08038D78
	.4byte sub_08038DA0
	.4byte sub_08038DC0
	.4byte sub_08038EE0
	.4byte sub_08038F20
	.4byte sub_08038F44
	.4byte sub_08038FA0

gUnk_080CF7AC:: @ 080CF7AC
	.4byte sub_08038DD8
	.4byte sub_08038E18
	.4byte sub_08038EAC
	.4byte sub_08038ED0

gUnk_080CF7BC:: @ 080CF7BC
	.incbin "baserom.gba", 0x0CF7BC, 0x0000002

gUnk_080CF7BE:: @ 080CF7BE
	.incbin "baserom.gba", 0x0CF7BE, 0x0000004

gUnk_080CF7C2:: @ 080CF7C2
	.incbin "baserom.gba", 0x0CF7C2, 0x0000002

gUnk_080CF7C4:: @ 080CF7C4
	.incbin "baserom.gba", 0x0CF7C4, 0x0000037

gUnk_080CF7FB:: @ 080CF7FB
	.incbin "baserom.gba", 0x0CF7FB, 0x0000018

gUnk_080CF813:: @ 080CF813
	.incbin "baserom.gba", 0x0CF813, 0x0000011

gUnk_080CF824:: @ 080CF824
	.incbin "baserom.gba", 0x0CF824, 0x0000004

gUnk_080CF828:: @ 080CF828
	.incbin "baserom.gba", 0x0CF828, 0x0000004

gUnk_080CF82C:: @ 080CF82C
	.incbin "baserom.gba", 0x0CF82C, 0x0000002

gUnk_080CF82E:: @ 080CF82E
	.incbin "baserom.gba", 0x0CF82E, 0x0000003

