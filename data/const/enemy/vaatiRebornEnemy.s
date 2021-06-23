	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D0470:: @ 080D0470
	.4byte sub_0803D134
	.4byte sub_0803D264
	.4byte sub_0803D408
	.4byte sub_0803D560
	.4byte sub_0803D658
	.4byte sub_0803D700
	.4byte sub_0803D830
	.4byte sub_0803D8FC

gUnk_080D0490:: @ 080D0490
	.4byte sub_0803D974
	.4byte sub_0803D9BC

gUnk_080D0498:: @ 080D0498
	.4byte sub_0803DAA8
	.4byte sub_0803DAE4

gUnk_080D04A0:: @ 080D04A0
	.4byte sub_0803DB88
	.4byte sub_0803DBB8

gUnk_080D04A8:: @ 080D04A8
	.incbin "baserom.gba", 0x0D04A8, 0x0000004

gUnk_080D04AC:: @ 080D04AC
	.incbin "baserom.gba", 0x0D04AC, 0x0000014

gUnk_080D04C0:: @ 080D04C0
	.incbin "baserom.gba", 0x0D04C0, 0x0000008

gUnk_080D04C8:: @ 080D04C8
	.incbin "baserom.gba", 0x0D04C8, 0x0000008

gUnk_080D04D0:: @ 080D04D0
.ifdef EU
	.incbin "baserom_eu.gba", 0x0CFBFC, 0x0000003
.else
	.incbin "baserom.gba", 0x0D04D0, 0x0000003
.endif

gUnk_080D04D3:: @ 080D04D3
	.incbin "baserom.gba", 0x0D04D3, 0x0000004
