	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D0ABC:: @ 080D0ABC
.ifdef EU
	.incbin "baserom_eu.gba", 0x0D01E8, 0x0000003
.else
	.incbin "baserom.gba", 0x0D0ABC, 0x0000003
.endif

gUnk_080D0ABF:: @ 080D0ABF
	.incbin "baserom.gba", 0x0D0ABF, 0x0000009

gUnk_080D0AC8:: @ 080D0AC8
	.4byte sub_0803F818
	.4byte sub_0803F914
	.4byte sub_0803FAC8
	.4byte sub_0803FAD0
	.4byte sub_0803FD50
	.4byte sub_0803FE90
	.4byte sub_0803FF7C
	.4byte sub_0804006C

gUnk_080D0AE8:: @ 080D0AE8
	.4byte sub_08040130
	.4byte sub_0804015C

gUnk_080D0AF0:: @ 080D0AF0
	.4byte sub_080401E0
	.4byte sub_08040268
	.4byte sub_0804038C

gUnk_080D0AFC:: @ 080D0AFC
	.4byte sub_080403CC
	.4byte sub_080403EC

gUnk_080D0B04:: @ 080D0B04
	.4byte sub_0804041C
	.4byte sub_0804044C

gUnk_080D0B0C:: @ 080D0B0C
	.4byte sub_080404D0
	.4byte sub_0804051C
	.4byte sub_080405D8

gUnk_080D0B18:: @ 080D0B18
	.incbin "baserom.gba", 0x0D0B18, 0x0000040

gUnk_080D0B58:: @ 080D0B58
	.incbin "baserom.gba", 0x0D0B58, 0x000000C

gUnk_080D0B64:: @ 080D0B64
	.incbin "baserom.gba", 0x0D0B64, 0x0000010

gUnk_080D0B74:: @ 080D0B74
	.incbin "baserom.gba", 0x0D0B74, 0x0000010

gUnk_080D0B84:: @ 080D0B84
	.incbin "baserom.gba", 0x0D0B84, 0x0000020
