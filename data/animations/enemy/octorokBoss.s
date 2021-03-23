	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CF14C:: @ 080CF14C
	.incbin "baserom.gba", 0x0CF14C, 0x0000004

gUnk_080CF150:: @ 080CF150
	.incbin "baserom.gba", 0x0CF150, 0x0000004

gUnk_080CF154:: @ 080CF154
	.incbin "baserom.gba", 0x0CF154, 0x0000004

gUnk_080CF158:: @ 080CF158
	.incbin "baserom.gba", 0x0CF158, 0x0000015

gUnk_080CF16D:: @ 080CF16D
	.incbin "baserom.gba", 0x0CF16D, 0x0000015

gUnk_080CF182:: @ 080CF182
	.incbin "baserom.gba", 0x0CF182, 0x0000004

gUnk_080CF186:: @ 080CF186
	.incbin "baserom.gba", 0x0CF186, 0x0000011

gUnk_080CF197:: @ 080CF197
	.incbin "baserom.gba", 0x0CF197, 0x0000015

gUnk_080CF1AC:: @ 080CF1AC
	.incbin "baserom.gba", 0x0CF1AC, 0x0000011

gUnk_080CF1BD:: @ 080CF1BD
	.incbin "baserom.gba", 0x0CF1BD, 0x0000020

gUnk_080CF1DD:: @ 080CF1DD
	.incbin "baserom.gba", 0x0CF1DD, 0x0000005

gUnk_080CF1E2:: @ 080CF1E2
	.incbin "baserom.gba", 0x0CF1E2, 0x0000019

gUnk_080CF1FB:: @ 080CF1FB
	.incbin "baserom.gba", 0x0CF1FB, 0x0000004

gUnk_080CF1FF:: @ 080CF1FF
	.incbin "baserom.gba", 0x0CF1FF, 0x0000005

gUnk_080CF204:: @ 080CF204
	.4byte gUnk_080CF14C
	.4byte gUnk_080CF150
	.4byte gUnk_080CF154
	.4byte gUnk_080CF182
	.4byte gUnk_080CF197
	.4byte gUnk_080CF1AC
	.4byte gUnk_080CF1BD
	.4byte gUnk_080CF1DD
	.4byte gUnk_080CF1E2
	.4byte gUnk_080CF1FB
	.4byte gUnk_080CF1FF
	.4byte 00000000

gUnk_080CF234:: @ 080CF234
	.4byte gUnk_080CF186
	.4byte gUnk_080CF158
	.4byte gUnk_080CF16D
	.4byte 00000000
