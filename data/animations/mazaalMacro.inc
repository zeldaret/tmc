gUnk_080CEF08:: @ 080CEF08
	.incbin "baserom.gba", 0x0CEF08, 0x0000004

gUnk_080CEF0C:: @ 080CEF0C
	.incbin "baserom.gba", 0x0CEF0C, 0x0000011

gUnk_080CEF1D:: @ 080CEF1D
	.incbin "baserom.gba", 0x0CEF1D, 0x0000007

gUnk_080CEF24:: @ 080CEF24
	.4byte gUnk_080CEF0C
	.4byte gUnk_080CEF08
	.4byte gUnk_080CEF1D
	.4byte 00000000
