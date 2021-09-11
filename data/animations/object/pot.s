	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F0DC:: @ 0811F0DC
	.incbin "baserom.gba", 0x11F0DC, 0x0000005

gUnk_0811F0E1:: @ 0811F0E1
	.incbin "baserom.gba", 0x11F0E1, 0x0000005

gUnk_0811F0E6:: @ 0811F0E6
	.incbin "baserom.gba", 0x11F0E6, 0x0000005

gUnk_0811F0EB:: @ 0811F0EB
	.incbin "baserom.gba", 0x11F0EB, 0x0000005

gUnk_0811F0F0:: @ 0811F0F0
	.incbin "baserom.gba", 0x11F0F0, 0x0000005

gUnk_0811F0F5:: @ 0811F0F5
	.incbin "baserom.gba", 0x11F0F5, 0x0000005

gUnk_0811F0FA:: @ 0811F0FA
	.incbin "baserom.gba", 0x11F0FA, 0x0000005

gUnk_0811F0FF:: @ 0811F0FF
	.incbin "baserom.gba", 0x11F0FF, 0x0000005

gUnk_0811F104:: @ 0811F104
	.incbin "baserom.gba", 0x11F104, 0x0000005

gUnk_0811F109:: @ 0811F109
	.incbin "baserom.gba", 0x11F109, 0x0000005

gUnk_0811F10E:: @ 0811F10E
	.incbin "baserom.gba", 0x11F10E, 0x0000005

gUnk_0811F113:: @ 0811F113
	.incbin "baserom.gba", 0x11F113, 0x0000005

gUnk_0811F118:: @ 0811F118
	.4byte gUnk_0811F0DC
	.4byte gUnk_0811F0E1
	.4byte gUnk_0811F0E6
	.4byte gUnk_0811F0EB
	.4byte gUnk_0811F0F0
	.4byte gUnk_0811F0F5
	.4byte gUnk_0811F0FA
	.4byte gUnk_0811F0FF
	.4byte gUnk_0811F104
	.4byte gUnk_0811F109
	.4byte gUnk_0811F10E
	.4byte gUnk_0811F113
	.4byte 00000000
