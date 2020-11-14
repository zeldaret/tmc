	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

    gPlayerItemFunctions:: @ gPlayerItemFunctions
@ replacing .incbin "baserom.gba", 0x000b2ce8, 0x64
/*0x00*/ .4byte DeleteEntity
/*0x01*/ .4byte sub_080A7544
/*0x02*/ .4byte sub_0801B188
/*0x03*/ .4byte sub_0801B45C
/*0x04*/ .4byte sub_08018FCC
/*0x05*/ .4byte sub_080A2D74
/*0x06*/ .4byte sub_08054A40
/*0x07*/ .4byte sub_08056330
/*0x08*/ .4byte sub_080ADA30
/*0x09*/ .4byte sub_080704BC
/*0x0a*/ .4byte DeleteEntity
/*0x0b*/ .4byte DeleteEntity
/*0x0c*/ .4byte sub_0801B898
/*0x0d*/ .4byte CellOverwriteSet
/*0x0e*/ .4byte SwordSpin
/*0x0f*/ .4byte SwordBeam
/*0x10*/ .4byte sub_080ACBCC
/*0x11*/ .4byte Item11
/*0x12*/ .4byte sub_080700E8
/*0x13*/ .4byte sub_080ACF14
/*0x14*/ .4byte sub_0805FBD0
/*0x15*/ .4byte sub_080A306C
/*0x16*/ .4byte SwordBeam
/*0x17*/ .4byte NulledItem
/*0x18*/ .4byte CellOverwriteSet

/*
.4byte DeleteEntity
.4byte sub_080A7544
.4byte sub_0801B188
.4byte sub_0801B45C
.4byte sub_08018FCC
.4byte sub_080A2D74
.4byte sub_08054A40
.4byte sub_08056330
.4byte sub_080ADA30
.4byte sub_080704BC
.4byte DeleteEntity
.4byte DeleteEntity
.4byte sub_0801B898
.4byte CellOverwriteSet
.4byte SwordSpin
.4byte SwordBeam
.4byte sub_080ACBCC
.4byte Item11
.4byte sub_080700E8
.4byte sub_080ACF14
.4byte sub_0805FBD0
.4byte sub_080A306C
.4byte SwordBeam
.4byte NulledItem
.4byte CellOverwriteSet
*/
