	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start UpdateScrollVram
UpdateScrollVram: @ 0x08000108
	push {r4, lr}
	ldr r0, _080001E8 @ =gUpdateVisibleTiles
	ldrb r1, [r0]
	lsls r1, r1, #2
	beq _08000136
	add r4, pc, #0x20
	ldr r4, [r4, r1]
	ldr r0, _080001EC @ =gMapBottom
	ldr r0, [r0]
	cmp r0, #0
	beq _08000126
	ldr r0, _080001F0 @ =gMapDataBottomSpecial
	ldr r1, _080001F4 @ =gBG1Buffer+0x40
	bl _call_via_r4
_08000126:
	ldr r0, _080001F8 @ =gMapTop
	ldr r0, [r0]
	cmp r0, #0
	beq _08000136
	ldr r0, _080001FC @ =gMapDataTopSpecial
	ldr r1, _08000200 @ =gBG2Buffer+0x40
	bl _call_via_r4
_08000136:
	pop {r4, pc}
_08000138:
_08000138: .4byte ram_sub_080B197C + 1
_0800013C: .4byte sub_0807D280 @ layer 1, 2, 3?
_08000140: .4byte sub_0807D46C
_08000144: .4byte sub_0807D6D8

	thumb_func_start sub_08000148
sub_08000148: @ 0x08000148
	lsls r2, r2, #2
	ldr r3, _08000204 @ =gUnk_08000248
	ldr r2, [r3, r2]
	strb r0, [r2, r1]
	bx lr

	non_word_aligned_thumb_func_start CloneTile
CloneTile: @ 0x08000152
	lsls r2, r2, #2
	add r3, pc, #0x68
	ldr r3, [r3, r2]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsrs r2, r2, #2

	non_word_aligned_thumb_func_start SetBottomTile
SetBottomTile: @ r0 = tile type, r1, = tile position, r2 = layer
	push {r4-r7, lr}
	lsls r3, r2, #3
	ldr r4, _08000208 @ =gUnk_08000228
	ldr r5, [r4, r3]
	lsls r6, r1, #1
	ldrh r7, [r5, r6]
	strh r0, [r5, r6]
	ldr r6, _0800020C @ =0x00004000
	cmp r0, r6
	blo tile_wrong_type
	push {r1, r2}
	subs r4, r0, r6
	ldr r3, _08000210 @ =gUnk_080B7910
	ldrb r0, [r3, r4]
	bl sub_080001D0
	ldr r3, _08000214 @ =gUnk_080B79A7
	ldrb r0, [r3, r4]
	lsrs r2, r2, #2
	bl sub_08000148
	pop {r0, r1} @ tilepos, layer
	push {r0, r1}
	bl UnregisterInteractTile
	adds r0, r7, #0
	pop {r1, r2}
	bl RegisterInteractTile
	pop {r4, r5, r6, r7, pc}
tile_wrong_type:
	adds r3, #4
	ldr r4, [r4, r3]
	lsls r0, r0, #1
	ldrh r4, [r4, r0]
	push {r1, r2}
	ldr r3, _08000218 @ =gUnk_080B37A0
	ldrb r0, [r3, r4]
	bl sub_080001D0
	ldr r3, _0800021C @ =gUnk_080B3E80
	ldrb r0, [r3, r4]
	lsrs r2, r2, #2
	bl sub_08000148
	pop {r0, r1}
	bl UnregisterInteractTile
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080001C0: .4byte gMapBottom+0x6004
_080001C4: .4byte gMapBottom+0x6004
_080001C8: .4byte gMapTop+0x6004
_080001CC: .4byte gMapBottom+0x6004

	thumb_func_start sub_080001D0
sub_080001D0: @ 0x080001D0
	lsls r2, r2, #2
	ldr r3, _08000220 @ =gUnkDataPtrs
	ldr r3, [r3, r2]
	strb r0, [r3, r1]
	bx lr

	non_word_aligned_thumb_func_start GetTileIndex
GetTileIndex: @ 0x080001DA
	lsls r1, r1, #3
	ldr r2, _08000224 @ =gUnk_08000228
	ldr r1, [r2, r1]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	bx lr
	.align 2, 0
_080001E8: .4byte gUpdateVisibleTiles
_080001EC: .4byte gMapBottom
_080001F0: .4byte gMapDataBottomSpecial
_080001F4: .4byte gBG1Buffer+0x40
_080001F8: .4byte gMapTop
_080001FC: .4byte gMapDataTopSpecial
_08000200: .4byte gBG2Buffer+0x40
_08000204: .4byte gUnk_08000248
_08000208: .4byte gUnk_08000228
_0800020C: .4byte 0x00004000
_08000210: .4byte gUnk_080B7910
_08000214: .4byte gUnk_080B79A7
_08000218: .4byte gUnk_080B37A0
_0800021C: .4byte gUnk_080B3E80
_08000220: .4byte gUnkDataPtrs
_08000224: .4byte gUnk_08000228
gUnk_08000228::
	.4byte BOTTOM_TILEDATA
gUnk_0800022C::
	.4byte BOTTOM_METATILETYPES
	.4byte BOTTOM_TILEDATA
	.4byte BOTTOM_METATILETYPES
	.4byte TOP_TILEDATA
	.4byte TOP_METATILETYPES
	.4byte BOTTOM_TILEDATA
	.4byte BOTTOM_METATILETYPES
gUnk_08000248::
	.4byte BOTTOM_COLLISIONDATA
	.4byte BOTTOM_COLLISIONDATA
	.4byte TOP_COLLISIONDATA
	.4byte BOTTOM_COLLISIONDATA
gUnk_08000258::
	.4byte BOTTOM_TILEDATACLONE
	.4byte BOTTOM_METATILETYPES
	.4byte BOTTOM_TILEDATACLONE
	.4byte BOTTOM_METATILETYPES
	.4byte TOP_TILEDATACLONE
	.4byte TOP_METATILETYPES
	.4byte BOTTOM_TILEDATACLONE
	.4byte BOTTOM_METATILETYPES
gUnkDataPtrs::
	.4byte BOTTOM_UNKDATA3
	.4byte BOTTOM_UNKDATA3
	.4byte TOP_UNKDATA3
	.4byte BOTTOM_UNKDATA3

@ call 0x80B19CC
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start GetTileAtEntityPos
GetTileAtEntityPos: @ 0x08000288
	ldr r3, _080002F4 @ =ram_GetTileAtEntityPos
	bx r3

@ call 0x80B19D8
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B19D8
sub_080B19D8: @ 0x0800028C
	ldr r3, _080002F8 @ =ram_sub_080B19D8
	bx r3

@ call 0x80B19EC
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B19EC
sub_080B19EC: @ 0x08000290
	ldr r3, _080002FC @ =ram_sub_080B19EC
	bx r3

@ call 0x80B19FC
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B19FC
sub_080B19FC: @ 0x08000294
	ldr r3, _08000300 @ =ram_sub_080B19FC
	bx r3

@ call 0x80B1A04
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B1A04
sub_080B1A04: @ 0x08000298
	ldr r3, _08000304 @ =ram_sub_080B1A04
	bx r3

@ call 0x80B1A0C
@ r0: entity*
@ r1: s32
@ r2: s32
	thumb_func_start sub_080B1A0C
sub_080B1A0C: @ 0x0800029C
	ldr r3, _08000308 @ =ram_sub_080B1A0C
	bx r3

@ call 0x080B1A28
@ r0: entity
@ return: u32 (tileType)
	thumb_func_start GetTileTypeByEntity
GetTileTypeByEntity: @ 0x080002A0
	ldr r3, _0800030C @ =ram_GetTileTypeByEntity
	bx r3

@ call 0x080B1A34
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
@ return: u32 (tileType)
	thumb_func_start GetTileTypeByPos
GetTileTypeByPos: @ 0x080002A4
	ldr r3, _08000310 @ =ram_GetTileTypeByPos
	bx r3

@ call 0x080B1A48
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080B1A48
sub_080B1A48: @ 0x080002A8
	ldr r3, _08000314 @ =ram_sub_080B1A48
	bx r3

@ call 0x080B1A58
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080B1A58
sub_080B1A58: @ 0x080002AC
	ldr r3, _08000318 @ =ram_sub_080B1A58
	bx r3

@ call 0x080B1A60
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
@ return: u32 (tileType)
	thumb_func_start GetTileType
GetTileType: @ 0x080002B0
	ldr r3, _0800031C @ =ram_GetTileType
	bx r3

@ call 0x080B1A8C
@ r0: Entity*
@ r1: u32
@ r2: u32
	thumb_func_start GetActTileRelative
GetActTileRelative: @ 0x080002B4
	ldr r3, _08000320 @ =ram_GetActTileRelative
	bx r3

@ call 0x080B1AA8
@ r0:
@ r1:
@ r2:
@ return: 
@ ========
@ Called every frame a pot is thrown, every frame the screen is sliding in a transition, and once when entering stairs.
	thumb_func_start GetActTile
GetActTile: @ 0x080002B8
	ldr r3, _08000324 @ =ram_GetActTile
	bx r3

@ call 0x080B1AB4
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080B1AB4
sub_080B1AB4: @ 0x080002BC
	ldr r3, _08000328 @ =ram_sub_080B1AB4
	bx r3

@ call 0x080B1AC8
@ r0: u32
@ r1: u32
@ r2: u32
@ return: ???
	thumb_func_start sub_080B1AC8
sub_080B1AC8: @ 0x080002C0
	ldr r3, _0800032C @ =ram_sub_080B1AC8
	bx r3

@ call 0x080B1AD8
@ r0: Entity*
@ r1: s32 (xOffset)
@ r2: s32 (yOffset)
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B1AD8
sub_080B1AD8: @ 0x080002C4
	ldr r3, _08000330 @ =ram_sub_080B1AD8
	bx r3

@ call 0x080B1AE0
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
	thumb_func_start sub_080B1AE0
sub_080B1AE0: @ 0x080002C8
	ldr r3, _08000334 @ =ram_sub_080B1AE0
	bx r3

@ call 0x080B1AF0
@ r0: Entity*
@ r1: ???
@ r2: ???
	thumb_func_start sub_080B1AF0
sub_080B1AF0: @ 0x080002CC
	ldr r3, _08000338 @ =ram_sub_080B1AF0
	bx r3

@ call 0x080B1B0C
@ r0: Entity*
	thumb_func_start sub_080B1B0C
sub_080B1B0C: @ 0x080002D0
	ldr r3, _0800033C @ =ram_sub_080B1B0C
	bx r3

@ call 0x080B1B18
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080B1B18
sub_080B1B18: @ 0x080002D4
	ldr r3, _08000340 @ =ram_sub_080B1B18
	bx r3

@ call 0x080B1B2C
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B1B2C
sub_080B1B2C: @ 0x080002D8
	ldr r3, _08000344 @ =ram_sub_080B1B2C
	bx r3

@ call 0x080B1B3C
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B1B3C
sub_080B1B3C: @ 0x080002DC
	ldr r3, _08000348 @ =ram_sub_080B1B3C
	bx r3

@ call 0x080B1B44
	thumb_func_start sub_080B1B44
sub_080B1B44: @ 0x080002E0
	ldr r3, _0800034C @ =ram_sub_080B1B44
	bx r3

@ call 0x080B1B54
@ r0: u32 (tileIndex)
	thumb_func_start sub_080B1B54
sub_080B1B54: @ 0x080002E4
	ldr r3, _08000350 @ =ram_sub_080B1B54
	bx r3

@ call 0x080B1B68
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080B1B68
sub_080B1B68: @ 0x080002E8
	ldr r3, _08000354 @ =ram_sub_080B1B68
	bx r3

@ call 0x080B1B84
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
	thumb_func_start sub_080B1B84
sub_080B1B84: @ 0x080002EC
	ldr r3, _08000358 @ =ram_sub_080B1B84
	bx r3

@ call 0x080B1BA4
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
@ r2: ???
	thumb_func_start sub_080B1BA4
sub_080B1BA4: @ 0x080002F0
	ldr r3, _0800035C @ =ram_sub_080B1BA4
	bx r3

_080002F4: .4byte ram_GetTileAtEntityPos
_080002F8: .4byte ram_sub_080B19D8
_080002FC: .4byte ram_sub_080B19EC
_08000300: .4byte ram_sub_080B19FC
_08000304: .4byte ram_sub_080B1A04
_08000308: .4byte ram_sub_080B1A0C
_0800030C: .4byte ram_GetTileTypeByEntity
_08000310: .4byte ram_GetTileTypeByPos
_08000314: .4byte ram_sub_080B1A48
_08000318: .4byte ram_sub_080B1A58
_0800031C: .4byte ram_GetTileType
_08000320: .4byte ram_GetActTileRelative
_08000324: .4byte ram_GetActTile
_08000328: .4byte ram_sub_080B1AB4
_0800032C: .4byte ram_sub_080B1AC8
_08000330: .4byte ram_sub_080B1AD8
_08000334: .4byte ram_sub_080B1AE0
_08000338: .4byte ram_sub_080B1AF0
_0800033C: .4byte ram_sub_080B1B0C
_08000340: .4byte ram_sub_080B1B18
_08000344: .4byte ram_sub_080B1B2C
_08000348: .4byte ram_sub_080B1B3C
_0800034C: .4byte ram_sub_080B1B44
_08000350: .4byte ram_sub_080B1B54
_08000354: .4byte ram_sub_080B1B68
_08000358: .4byte ram_sub_080B1B84
_0800035C: .4byte ram_sub_080B1BA4
