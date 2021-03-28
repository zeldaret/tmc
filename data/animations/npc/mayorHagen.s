	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113FC0:: @ 08113FC0
	.incbin "baserom.gba", 0x113FC0, 0x0000005

gUnk_08113FC5:: @ 08113FC5
	.incbin "baserom.gba", 0x113FC5, 0x0000005

gUnk_08113FCA:: @ 08113FCA
	.incbin "baserom.gba", 0x113FCA, 0x0000005

gUnk_08113FCF:: @ 08113FCF
	.incbin "baserom.gba", 0x113FCF, 0x0000005

gUnk_08113FD4:: @ 08113FD4
	.incbin "baserom.gba", 0x113FD4, 0x0000011

gUnk_08113FE5:: @ 08113FE5
	.incbin "baserom.gba", 0x113FE5, 0x000004D

gUnk_08114032:: @ 08114032
	.incbin "baserom.gba", 0x114032, 0x000000D

gUnk_0811403F:: @ 0811403F
	.incbin "baserom.gba", 0x11403F, 0x0000011

gUnk_08114050:: @ 08114050
	.incbin "baserom.gba", 0x114050, 0x0000011

gUnk_08114061:: @ 08114061
	.incbin "baserom.gba", 0x114061, 0x0000029

gUnk_0811408A:: @ 0811408A
	.incbin "baserom.gba", 0x11408A, 0x000000E

gUnk_08114098:: @ 08114098
	.4byte gUnk_08113FC0
	.4byte gUnk_08113FC5
	.4byte gUnk_08113FCA
	.4byte gUnk_08113FCF
	.4byte gUnk_08114032
	.4byte gUnk_08114050
	.4byte gUnk_08114032
	.4byte gUnk_0811403F
	.4byte gUnk_08113FE5
	.4byte gUnk_08114061
	.4byte gUnk_0811408A
	.4byte gUnk_08113FD4
	.4byte 00000000
