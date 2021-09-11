	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120C98:: @ 08120C98
	.4byte sub_080891F4
	.4byte sub_0808923C
	.4byte sub_080892C4
	.4byte sub_080893EC
	.4byte sub_08089400

gUnk_08120CAC:: @ 08120CAC
	.4byte sub_08089300
	.4byte sub_080893E0

gUnk_08120CB4:: @ 08120CB4
	.incbin "baserom.gba", 0x120CB4, 0x0000008

gUnk_08120CBC:: @ 08120CBC
	.incbin "baserom.gba", 0x120CBC, 0x0000010

gUnk_08120CCC:: @ 08120CCC
	.incbin "baserom.gba", 0x120CCC, 0x00000A0

gUnk_08120D6C:: @ 08120D6C
	.incbin "baserom.gba", 0x120D6C, 0x000001A
