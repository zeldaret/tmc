	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D28AC:: @ 080D28AC
	.4byte gUnk_080D28DC
	.4byte gUnk_080D28E4
	.4byte gUnk_080D28EC
	.4byte gUnk_080D28F4
	.4byte gUnk_080D28FC
	.4byte gUnk_080D2904
	.4byte gUnk_080D290C
	.4byte gUnk_080D2914

gUnk_080D28CC:: @ 080D28CC
	.incbin "baserom.gba", 0x0D28CC, 0x0000010

gUnk_080D28DC:: @ 080D28DC
	.incbin "baserom.gba", 0x0D28DC, 0x0000008

gUnk_080D28E4:: @ 080D28E4
	.incbin "baserom.gba", 0x0D28E4, 0x0000008

gUnk_080D28EC:: @ 080D28EC
	.incbin "baserom.gba", 0x0D28EC, 0x0000008

gUnk_080D28F4:: @ 080D28F4
	.incbin "baserom.gba", 0x0D28F4, 0x0000008

gUnk_080D28FC:: @ 080D28FC
	.incbin "baserom.gba", 0x0D28FC, 0x0000008

gUnk_080D2904:: @ 080D2904
	.incbin "baserom.gba", 0x0D2904, 0x0000008

gUnk_080D290C:: @ 080D290C
	.incbin "baserom.gba", 0x0D290C, 0x0000008

gUnk_080D2914:: @ 080D2914
	.incbin "baserom.gba", 0x0D2914, 0x0000008
