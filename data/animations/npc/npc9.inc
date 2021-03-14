gUnk_0810C2A0:: @ 0810C2A0
	.incbin "baserom.gba", 0x10C2A0, 0x0000005

gUnk_0810C2A5:: @ 0810C2A5
	.incbin "baserom.gba", 0x10C2A5, 0x000000D

gUnk_0810C2B2:: @ 0810C2B2
	.incbin "baserom.gba", 0x10C2B2, 0x000000E
	.4byte gUnk_0810C2A0
	.4byte gUnk_0810C2A5
	.4byte gUnk_0810C2B2
