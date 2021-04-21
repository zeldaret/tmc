	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811E7C4:: @ 0811E7C4
	.4byte sub_080808D8
	.4byte sub_080808E4
	.4byte sub_08080904
	.4byte sub_08080910

gUnk_0811E7D4:: @ 0811E7D4
	.4byte sub_08080F20
	.4byte sub_080811EC
	.4byte sub_0808122C
	.4byte sub_08081328
	.4byte sub_0808136C

gUnk_0811E7E8:: @ 0811E7E8
	.4byte sub_080810A8
	.4byte sub_080810FC
	.4byte sub_08081150
	.4byte sub_08081134
	.4byte sub_08081188
	.4byte sub_080810A8
	.4byte sub_080810A8
	.4byte sub_080811AC
	.4byte sub_080811C8
	.4byte sub_080811D8
	.4byte sub_080810A8

gUnk_0811E814:: @ 0811E814
	.4byte sub_08081248
	.4byte sub_08081248
	.4byte sub_0808126C
	.4byte sub_0808127C
	.4byte nullsub_113
	.4byte sub_080812A0
	.4byte sub_08081248
	.4byte sub_080812A8
	.4byte sub_080812E8
	.4byte nullsub_510
	.4byte sub_08081248

gUnk_0811E840:: @ 0811E840
	.4byte sub_080813D4
	.4byte sub_080813E8
	.4byte sub_080813F0

gUnk_0811E84C:: @ 0811E84C
	.incbin "baserom.gba", 0x11E84C, 0x00000B0

gUnk_0811E8FC:: @ 0811E8FC
	.incbin "baserom.gba", 0x11E8FC, 0x00000FA

gUnk_0811E9F6:: @ 0811E9F6
	.incbin "baserom.gba", 0x11E9F6, 0x0000001

gUnk_0811E9F7:: @ 0811E9F7
	.incbin "baserom.gba", 0x11E9F7, 0x0000124

gUnk_0811EB1B:: @ 0811EB1B
	.incbin "baserom.gba", 0x11EB1B, 0x00000DE
    
gUnk_0811EBF9:: @ 0811EBF9
	.incbin "baserom.gba", 0x11EBF9, 0x0000003
