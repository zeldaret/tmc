	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CFFCC:: @ 080CFFCC
	.incbin "baserom.gba", 0x0CFFCC, 0x0000009

gUnk_080CFFD5:: @ 080CFFD5
	.incbin "baserom.gba", 0x0CFFD5, 0x0000009

gUnk_080CFFDE:: @ 080CFFDE
	.incbin "baserom.gba", 0x0CFFDE, 0x0000009

gUnk_080CFFE7:: @ 080CFFE7
	.incbin "baserom.gba", 0x0CFFE7, 0x0000009

gUnk_080CFFF0:: @ 080CFFF0
	.incbin "baserom.gba", 0x0CFFF0, 0x0000011

gUnk_080D0001:: @ 080D0001
	.incbin "baserom.gba", 0x0D0001, 0x0000004
	.incbin "baserom.gba", 0x0D0005, 0x0000003
	.incbin "baserom.gba", 0x0D0008, 0x0000001
	.incbin "baserom.gba", 0x0D0009, 0x0000003
	.incbin "baserom.gba", 0x0D000C, 0x0000006

gUnk_080D0012:: @ 080D0012
	.incbin "baserom.gba", 0x0D0012, 0x0000011

gUnk_080D0023:: @ 080D0023
	.incbin "baserom.gba", 0x0D0023, 0x0000009
	.incbin "baserom.gba", 0x0D002C, 0x0000008

gUnk_080D0034:: @ 080D0034
	.incbin "baserom.gba", 0x0D0034, 0x0000011

gUnk_080D0045:: @ 080D0045
	.incbin "baserom.gba", 0x0D0045, 0x0000011

gUnk_080D0056:: @ 080D0056
	.incbin "baserom.gba", 0x0D0056, 0x0000011

gUnk_080D0067:: @ 080D0067
	.incbin "baserom.gba", 0x0D0067, 0x0000011

gUnk_080D0078:: @ 080D0078
	.incbin "baserom.gba", 0x0D0078, 0x0000015

gUnk_080D008D:: @ 080D008D
	.incbin "baserom.gba", 0x0D008D, 0x0000015

gUnk_080D00A2:: @ 080D00A2
	.incbin "baserom.gba", 0x0D00A2, 0x0000015

gUnk_080D00B7:: @ 080D00B7
	.incbin "baserom.gba", 0x0D00B7, 0x0000015

gUnk_080D00CC:: @ 080D00CC
	.4byte gUnk_080CFFCC
	.4byte gUnk_080CFFD5
	.4byte gUnk_080CFFDE
	.4byte gUnk_080CFFE7
	.4byte gUnk_080CFFF0
	.4byte gUnk_080D0001
	.4byte gUnk_080D0012
	.4byte gUnk_080D0023
	.4byte gUnk_080D0034
	.4byte gUnk_080D0045
	.4byte gUnk_080D0056
	.4byte gUnk_080D0067
	.4byte gUnk_080D0078
	.4byte gUnk_080D008D
	.4byte gUnk_080D00A2
	.4byte gUnk_080D00B7
	.4byte 00000000
