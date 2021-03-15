	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_0811E750:: @ 0811E750
	.incbin "baserom.gba", 0x11E750, 0x0000008

gUnk_0811E758:: @ 0811E758
	.incbin "baserom.gba", 0x11E758, 0x0000008

gUnk_0811E760:: @ 0811E760
	.incbin "baserom.gba", 0x11E760, 0x0000008

gUnk_0811E768:: @ 0811E768
	.4byte sub_0807FC64
	.4byte sub_0807FC7C
	.4byte sub_0807FDB0
	.4byte 00000000
	.4byte sub_0807FEF0
	.4byte sub_0807FF54

gUnk_0811E780:: @ 0811E780
	.4byte sub_0807FDC8
	.4byte sub_0807FDE4
	.4byte sub_0807FDF8

gUnk_0811E78C:: @ 0811E78C
	.4byte sub_0807FF08
	.4byte sub_0807FF1C

gUnk_0811E794:: @ 0811E794
	.4byte sub_0807FF6C
	.4byte sub_0807FFE4
	.4byte sub_08080040
	.4byte sub_08080108
	.4byte sub_08080198
	.4byte sub_080801BC

gUnk_0811E7AC:: @ 0811E7AC
	.4byte sub_08080794
	.4byte sub_08080808
	.4byte sub_08080794
	.4byte sub_08080808

gUnk_0811E7BC:: @ 0811E7BC
	.incbin "baserom.gba", 0x11E7BC, 0x0000008

	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/const/object/itemOnGround.inc"

	.include "data/const/object/deathFx.inc"
	.include "data/animations/object/deathFx.inc"

	.include "data/const/object/itemForSale.inc"

	.include "data/const/object/button.inc"

	.include "data/const/object/object4.inc"
	.include "data/animations/object/object4.inc"

	.include "data/const/object/pot.inc"
	.include "data/animations/object/pot.inc"

	.include "data/const/object/object6.inc"
	.include "data/animations/object/object6.inc"

	.include "data/const/object/blockPushed.inc"

	.include "data/const/object/lockedDoor.inc"

	.include "data/const/object/object9.inc"
	.include "data/animations/object/object9.inc"

	.include "data/const/object/objectB.inc"

	.include "data/const/object/chestSpawner.inc"
	.include "data/animations/object/chestSpawner.inc"

	.include "data/const/object/objectD.inc"
	.include "data/animations/object/objectD.inc"

	.include "data/const/object/specialFx.inc"
	.include "data/animations/object/specialFx.inc"

	.include "data/const/object/object10.inc"

	.include "data/const/object/object11.inc"

	.include "data/const/object/object12.inc"

	.include "data/const/object/railtrack.inc"
	.include "data/animations/object/railtrack.inc"

	.include "data/const/object/lilypadLarge.inc"

	.include "data/const/object/object15.inc"

	.include "data/const/object/floatingPlatform.inc"

	.include "data/const/object/object17.inc"

	.include "data/const/object/evilSpirit.inc"

	.include "data/const/object/houseDoorExterior.inc"

	.include "data/const/object/object1A.inc"
