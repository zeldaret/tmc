	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gCreateItemsFuncs:: @ 0811BFC8
	.4byte CreateItemNone
	.4byte CreateItem1
	.4byte CreateItem2
	.4byte CreateItem3
	.4byte CreateItem4
	.4byte CreateItem5

gUnk_0811BFE0:: @ 0811BFE0
	.incbin "data_0811BE38/gUnk_0811BFE0.bin"

gPlayerChargeActions:: @ 0811BFE8
	.4byte sub_08078008
	.4byte sub_08078124
	.4byte sub_08078140
	.4byte sub_08078070
	.4byte sub_080780E0
	.4byte sub_08078108

gUnk_0811C000:: @ 0811C000
	.incbin "data_0811BE38/gUnk_0811C000.bin"

gUnk_0811C00C:: @ 0811C00C
	.incbin "data_0811BE38/gUnk_0811C00C.bin"

gUnk_0811C014:: @ 0811C014
	.incbin "data_0811BE38/gUnk_0811C014.bin"

gUnk_0811C01C:: @ 0811C01C
	.incbin "data_0811BE38/gUnk_0811C01C.bin"

gUnk_0811C070:: @ 0811C070
	.incbin "data_0811BE38/gUnk_0811C070.bin"

gUnk_0811C090:: @ 0811C090
	.incbin "data_0811BE38/gUnk_0811C090.bin"

gUnk_0811C0B0:: @ 0811C0B0
	.4byte gUnk_0811C070
	.4byte gUnk_0811C090

gUnk_0811C0B8:: @ 0811C0B8
	.incbin "data_0811BE38/gUnk_0811C0B8.bin"

gUnk_0811C0C8:: @ 0811C0C8
	.incbin "data_0811BE38/gUnk_0811C0C8.bin"

gUnk_0811C0D8:: @ 0811C0D8
	.incbin "data_0811BE38/gUnk_0811C0D8.bin"

gUnk_0811C0E8:: @ 0811C0E8
	.4byte gUnk_0811C0B8
	.4byte gUnk_0811C0D8
	.4byte gUnk_0811C0B8
	.4byte gUnk_0811C0C8

gUnk_0811C0F8:: @ 0811C0F8
	.incbin "data_0811BE38/gUnk_0811C0F8.bin"

gUnk_0811C100:: @ 0811C100
	.incbin "data_0811BE38/gUnk_0811C100.bin"

gUnk_0811C108:: @ 0811C108
	.incbin "data_0811BE38/gUnk_0811C108.bin"

gUnk_0811C110:: @ 0811C110
	.incbin "data_0811BE38/gUnk_0811C110.bin"

gUnk_0811C118:: @ 0811C118
	.incbin "data_0811BE38/gUnk_0811C118.bin"

gUnk_0811C120:: @ 0811C120
	.4byte SurfaceAction_DoNothing
	.4byte SurfaceAction_Pit
	.4byte 00000000
	.4byte 00000000
	.4byte SurfaceAction_SlopeGndGndVertical
	.4byte SurfaceAction_SlopeGndGndHorizontal
	.4byte SurfaceAction_6
	.4byte SurfaceAction_7
	.4byte SurfaceAction_MinishDoorFront
	.4byte SurfaceAction_MinishDoorBack
	.4byte SurfaceAction_A
	.4byte SurfaceAction_B
	.4byte SurfaceAction_SlopeGndWater
	.4byte SurfaceAction_ConveyerNorth
	.4byte SurfaceAction_ConveyerSouth
	.4byte SurfaceAction_ConveyerWest
	.4byte SurfaceAction_ConveyerEast
	.4byte SurfaceAction_Swamp
	.4byte SurfaceAction_DoNothing
	.4byte SurfaceAction_DoNothing
	.4byte SurfaceAction_14
	.4byte SurfaceAction_CloneTile
	.4byte SurfaceAction_16
	.4byte SurfaceAction_Ice
	.4byte SurfaceAction_ShallowWater
	.4byte SurfaceAction_Water
	.4byte SurfaceAction_Button
	.4byte SurfaceAction_1B
	.4byte SurfaceAction_1C
	.4byte 00000000
	.4byte SurfaceAction_Ladder
	.4byte 00000000
	.4byte SurfaceAction_20
	.4byte SurfaceAction_16
	.4byte SurfaceAction_22
	.4byte SurfaceAction_6
	.4byte SurfaceAction_6
	.4byte SurfaceAction_Dust
	.4byte SurfaceAction_26
	.4byte SurfaceAction_Hole
	.4byte SurfaceAction_SlopeGndGndVertical
	.4byte SurfaceAction_SlopeGndGndHorizontal
	.4byte SurfaceAction_AutoLadder
	.4byte SurfaceAction_ClimbWall
	.4byte SurfaceAction_2C
	.4byte SurfaceAction_Dust

gUnk_0811C1D8:: @ 0811C1D8
	.4byte gUnk_0811C240
	.4byte gUnk_0811C24A
	.4byte gUnk_0811C254
	.4byte gUnk_0811C25E

gUnk_0811C1E8:: @ 0811C1E8
	.4byte gUnk_0811C1F8
	.4byte gUnk_0811C20A
	.4byte gUnk_0811C21C
	.4byte gUnk_0811C22E

gUnk_0811C1F8:: @ 0811C1F8
	.incbin "data_0811BE38/gUnk_0811C1F8.bin"

gUnk_0811C20A:: @ 0811C20A
	.incbin "data_0811BE38/gUnk_0811C20A.bin"

gUnk_0811C21C:: @ 0811C21C
	.incbin "data_0811BE38/gUnk_0811C21C.bin"

gUnk_0811C22E:: @ 0811C22E
	.incbin "data_0811BE38/gUnk_0811C22E.bin"

gUnk_0811C240:: @ 0811C240
	.incbin "data_0811BE38/gUnk_0811C240.bin"

gUnk_0811C24A:: @ 0811C24A
	.incbin "data_0811BE38/gUnk_0811C24A.bin"

gUnk_0811C254:: @ 0811C254
	.incbin "data_0811BE38/gUnk_0811C254.bin"

gUnk_0811C25E:: @ 0811C25E
	.incbin "data_0811BE38/gUnk_0811C25E.bin"

gUnk_0811C268:: @ 0811C268
	.incbin "data_0811BE38/gUnk_0811C268.bin"

gUnk_0811C27C:: @ 0811C27C
	.4byte sub_0807B114
	.4byte sub_0807B128

gUnk_0811C284:: @ 0811C284
	.4byte sub_0807B1A8
	.4byte sub_0807B144
	.4byte nullsub_506
	.4byte sub_0807B178
	.4byte sub_0807B2F8

gUnk_0811C298:: @ 0811C298
	.4byte sub_0807B1DC
	.4byte sub_0807B1EC
	.4byte sub_0807B21C
	.4byte sub_0807B264
	.4byte sub_0807B2B8

gUnk_0811C2AC:: @ 0811C2AC
	.incbin "data_0811BE38/gUnk_0811C2AC.bin"

gUnk_0811C2CC:: @ 0811C2CC
	.incbin "data_0811BE38/gUnk_0811C2CC.bin"

gUnk_0811C2EC:: @ 0811C2EC
	.incbin "data_0811BE38/gUnk_0811C2EC.bin"

gUnk_0811C456:: @ 0811C456
	.incbin "data_0811BE38/gUnk_0811C456.bin"

gUnk_0811C466:: @ 0811C466
	.incbin "data_0811BE38/gUnk_0811C466.bin"
