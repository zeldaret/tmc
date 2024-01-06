	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

@ copies from the gMapDataBottomSpecial to the bg buffers depending on gUpdateVisibleTiles
	thumb_func_start UpdateScrollVram
UpdateScrollVram: @ 0x08000108
	push {r4, lr}
	ldr r0, _080001E8 @ =gUpdateVisibleTiles
	ldrb r1, [r0]
	lsls r1, r1, #2
	beq _08000136 @ jump if gUpdateVisibleTiles == 0
	add r4, pc, #0x20 @ r4 = 0x8000134
	ldr r4, [r4, r1] @ r4 = r4[gUpdateVisibleTiles] (1: _08000138, 2: _0800013C, 3: _08000140, 4:_08000144)
	ldr r0, _080001EC @ =gMapBottom
	ldr r0, [r0]
	cmp r0, #0
	beq _08000126 @ jump if gMapBottom.bgSettings == NULL
	ldr r0, _080001F0 @ =gMapDataBottomSpecial
	ldr r1, _080001F4 @ =gBG1Buffer+0x40
	bl _call_via_r4
_08000126:
	ldr r0, _080001F8 @ =gMapTop
	ldr r0, [r0]
	cmp r0, #0
	beq _08000136 @ jump if gMapTop.bgSettings == NULL
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

	thumb_func_start SetCollisionData
SetCollisionData: @ 0x08000148
	lsls r2, r2, #2
	ldr r3, _08000204 @ =gCollisionDataPtrs
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

	non_word_aligned_thumb_func_start SetTile
SetTile: @ r0 = tile index, r1, = tile position, r2 = layer
	push {r4-r7, lr}
	lsls r3, r2, #3 @ 1: 8, 2: 16
	ldr r4, _08000208 @ =gMapDataPtrs
	ldr r5, [r4, r3] @ layer 1: gMapBottom.mapData, 2: gMapTop.mapData
	lsls r6, r1, #1
	ldrh r7, [r5, r6] @ r7 (oldTile) = gMapBottom.mapData[tilePos]
	strh r0, [r5, r6] @ gMapBottom.mapData[tilePos] = tileIndex
	ldr r6, _0800020C @ =0x00004000
	cmp r0, r6
	blo tile_wrong_type @ jump if tileIndex < 0x4000
	push {r1, r2}
	subs r4, r0, r6 @ r4 = tileIndex - 0x4000
	ldr r3, _08000210 @ =gMapSpecialTileToActTile
	ldrb r0, [r3, r4] @ r0 = gMapSpecialTileToActTile[tileIndex - 0x4000]
	bl SetActTileAtTilePos
	ldr r3, _08000214 @ =gMapSpecialTileToCollisionData
	ldrb r0, [r3, r4] @ r0 = gMapSpecialTileToCollisionData[tileIndex - 0x4000]
	lsrs r2, r2, #2 @ r2 = layer
	bl SetCollisionData
	pop {r0, r1} @ tilepos, layer
	push {r0, r1}
	bl UnregisterInteractTile @ DeleteLoadedTileEntity(tilePos, layer)
	adds r0, r7, #0 @ r0 = oldTile
	pop {r1, r2}
	bl RegisterInteractTile @ StoreTileForSpecialTile(oldTile, tilePos, layer)
	pop {r4, r5, r6, r7, pc} @ pop pc results in returning to the calling function
tile_wrong_type:
	adds r3, #4 @ r3 = layer * 8 + 4
	ldr r4, [r4, r3]
	lsls r0, r0, #1 @ r0 = tileIndex * 2
	ldrh r4, [r4, r0] @ r4 (tileType) = gMapBottom.tileTypes[tileIndex]
	push {r1, r2}
	ldr r3, _08000218 @ =gMapTileTypeToActTile
	ldrb r0, [r3, r4] @ r0 = gMapTileTypeToActTile[tileType]
	bl SetActTileAtTilePos
	ldr r3, _0800021C @ =gMapTileTypeToCollisionData
	ldrb r0, [r3, r4] @ r0 = gMapTileTypeToCollisionData[tileType]
	lsrs r2, r2, #2 @ r2 = layer
	bl SetCollisionData
	pop {r0, r1}
	bl UnregisterInteractTile
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080001C0: .4byte gMapBottom+0x6004
_080001C4: .4byte gMapBottom+0x6004
_080001C8: .4byte gMapTop+0x6004
_080001CC: .4byte gMapBottom+0x6004

@ r0: @see gMapSpecialTileToActTile  r1: tilePos, r2: layer
	thumb_func_start SetActTileAtTilePos
SetActTileAtTilePos: @ 0x080001D0
	lsls r2, r2, #2
	ldr r3, _08000220 @ =gActTilePtrs
	ldr r3, [r3, r2] @ r3 = gMapBottom.actTiles
	strb r0, [r3, r1] @ gMapBottom.actTiles[tilePos] = r0
	bx lr

	non_word_aligned_thumb_func_start GetTileIndex
GetTileIndex: @ 0x080001DA
	lsls r1, r1, #3
	ldr r2, _08000224 @ =gMapDataPtrs
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
_08000204: .4byte gCollisionDataPtrs
_08000208: .4byte gMapDataPtrs
_0800020C: .4byte 0x00004000
_08000210: .4byte gMapSpecialTileToActTile
_08000214: .4byte gMapSpecialTileToCollisionData
_08000218: .4byte gMapTileTypeToActTile
_0800021C: .4byte gMapTileTypeToCollisionData
_08000220: .4byte gActTilePtrs
_08000224: .4byte gMapDataPtrs

gMapDataPtrs::
	.4byte BOTTOM_TILEDATA @ layer 0
gTileTypesPtrs::
	.4byte BOTTOM_TILETYPES
	.4byte BOTTOM_TILEDATA @ layer 1
	.4byte BOTTOM_TILETYPES
	.4byte TOP_TILEDATA @ layer 2
	.4byte TOP_TILETYPES
	.4byte BOTTOM_TILEDATA @ layer 3
	.4byte BOTTOM_TILETYPES
gCollisionDataPtrs::
	.4byte BOTTOM_COLLISIONDATA @ layer 0
	.4byte BOTTOM_COLLISIONDATA @ layer 1
	.4byte TOP_COLLISIONDATA @ layer 2
	.4byte BOTTOM_COLLISIONDATA @ layer 3
gUnk_08000258:: @ mapDataOriginal and tileTypes
	.4byte BOTTOM_TILEDATAORIGINAL @ layer 0
	.4byte BOTTOM_TILETYPES
	.4byte BOTTOM_TILEDATAORIGINAL @ layer 1
	.4byte BOTTOM_TILETYPES
	.4byte TOP_TILEDATAORIGINAL @ layer 2
	.4byte TOP_TILETYPES
	.4byte BOTTOM_TILEDATAORIGINAL @ layer 3
	.4byte BOTTOM_TILETYPES
gActTilePtrs:: @ actTile for layers
	.4byte BOTTOM_ACTTILES @ layer 0
	.4byte BOTTOM_ACTTILES @ layer 1
	.4byte TOP_ACTTILES @ layer 2
	.4byte BOTTOM_ACTTILES @ layer 3

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
	thumb_func_start GetTileTypeRelativeToEntity
GetTileTypeRelativeToEntity: @ 0x0800029C
	ldr r3, _08000308 @ =ram_GetTileTypeRelativeToEntity
	bx r3

@ call 0x080B1A28
@ r0: entity
@ return: u32 (tileType)
	thumb_func_start GetTileTypeAtEntity
GetTileTypeAtEntity: @ 0x080002A0
	ldr r3, _0800030C @ =ram_GetTileTypeAtEntity
	bx r3

@ call 0x080B1A34
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
@ return: u32 (tileType)
	thumb_func_start GetTileTypeAtWorldCoords
GetTileTypeAtWorldCoords: @ 0x080002A4
	ldr r3, _08000310 @ =ram_GetTileTypeAtWorldCoords
	bx r3

@ call 0x080B1A48
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start GetTileTypeAtRoomCoords
GetTileTypeAtRoomCoords: @ 0x080002A8
	ldr r3, _08000314 @ =ram_GetTileTypeAtRoomCoords
	bx r3

@ call 0x080B1A58
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start GetTileTypeAtRoomTile
GetTileTypeAtRoomTile: @ 0x080002AC
	ldr r3, _08000318 @ =ram_GetTileTypeAtRoomTile
	bx r3

@ call 0x080B1A60
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
@ return: u32 (tileType)
	thumb_func_start GetTileTypeAtTilePos
GetTileTypeAtTilePos: @ 0x080002B0
	ldr r3, _0800031C @ =ram_GetTileType
	bx r3

@ call 0x080B1A8C
@ r0: Entity*
@ r1: u32
@ r2: u32
	thumb_func_start GetActTileRelativeToEntity
GetActTileRelativeToEntity: @ 0x080002B4
	ldr r3, _08000320 @ =ram_GetActTileRelativeToEntity
	bx r3

@ call 0x080B1AA8
@ r0:
@ r1:
@ r2:
@ return: 
@ ========
@ Called every frame a pot is thrown, every frame the screen is sliding in a transition, and once when entering stairs.
	thumb_func_start GetActTileAtEntity
GetActTileAtEntity: @ 0x080002B8
	ldr r3, _08000324 @ =ram_GetActTileAtEntity
	bx r3

@ call 0x080B1AB4
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start GetActTileAtWorldCoords
GetActTileAtWorldCoords: @ 0x080002BC
	ldr r3, _08000328 @ =ram_GetActTileAtWorldCoords
	bx r3

@ call 0x080B1AC8
@ r0: u32
@ r1: u32
@ r2: u32
@ return: ???
	thumb_func_start GetActTileAtRoomCoords
GetActTileAtRoomCoords: @ 0x080002C0
	ldr r3, _0800032C @ =ram_GetActTileAtRoomCoords
	bx r3

@ call 0x080B1AD8
@ r0: Entity*
@ r1: s32 (xOffset)
@ r2: s32 (yOffset)
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start GetActTileAtRoomTile
GetActTileAtRoomTile: @ 0x080002C4
	ldr r3, _08000330 @ =ram_GetActTileAtRoomTile
	bx r3

@ call 0x080B1AE0
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
	thumb_func_start GetActTileAtTilePos
GetActTileAtTilePos: @ 0x080002C8
	ldr r3, _08000334 @ =ram_GetActTileAtTilePos
	bx r3

@ call 0x080B1AF0
@ r0: Entity*
@ r1: ???
@ r2: ???
	thumb_func_start GetCollisionDataRelativeTo
GetCollisionDataRelativeTo: @ 0x080002CC
	ldr r3, _08000338 @ =ram_GetCollisionDataRelativeTo
	bx r3

@ call 0x080B1B0C
@ r0: Entity*
	thumb_func_start GetCollisionDataAtEntity
GetCollisionDataAtEntity: @ 0x080002D0
	ldr r3, _0800033C @ =ram_GetCollisionDataAtEntity
	bx r3

@ call 0x080B1B18
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start GetCollisionDataAtWorldCoords
GetCollisionDataAtWorldCoords: @ 0x080002D4
	ldr r3, _08000340 @ =ram_GetCollisionDataAtWorldCoords
	bx r3

@ call 0x080B1B2C
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start GetCollisionDataAtRoomCoords
GetCollisionDataAtRoomCoords: @ 0x080002D8
	ldr r3, _08000344 @ =ram_GetCollisionDataAtRoomCoords
	bx r3

@ call 0x080B1B3C
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start GetCollisionDataAtRoomTile
GetCollisionDataAtRoomTile: @ 0x080002DC
	ldr r3, _08000348 @ =ram_GetCollisionDataAtRoomTile
	bx r3

@ call 0x080B1B44
	thumb_func_start GetCollisionDataAtTilePos
GetCollisionDataAtTilePos: @ 0x080002E0
	ldr r3, _0800034C @ =ram_GetCollisionDataAtTilePos
	bx r3

@ call 0x080B1B54
@ r0: u32 (tileIndex)
	thumb_func_start GetActTileForTileType
GetActTileForTileType: @ 0x080002E4
	ldr r3, _08000350 @ =ram_GetActTileForTileType
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
_08000308: .4byte ram_GetTileTypeRelativeToEntity
_0800030C: .4byte ram_GetTileTypeAtEntity
_08000310: .4byte ram_GetTileTypeAtWorldCoords
_08000314: .4byte ram_GetTileTypeAtRoomCoords
_08000318: .4byte ram_GetTileTypeAtRoomTile
_0800031C: .4byte ram_GetTileType
_08000320: .4byte ram_GetActTileRelativeToEntity
_08000324: .4byte ram_GetActTileAtEntity
_08000328: .4byte ram_GetActTileAtWorldCoords
_0800032C: .4byte ram_GetActTileAtRoomCoords
_08000330: .4byte ram_GetActTileAtRoomTile
_08000334: .4byte ram_GetActTileAtTilePos
_08000338: .4byte ram_GetCollisionDataRelativeTo
_0800033C: .4byte ram_GetCollisionDataAtEntity
_08000340: .4byte ram_GetCollisionDataAtWorldCoords
_08000344: .4byte ram_GetCollisionDataAtRoomCoords
_08000348: .4byte ram_GetCollisionDataAtRoomTile
_0800034C: .4byte ram_GetCollisionDataAtTilePos
_08000350: .4byte ram_GetActTileForTileType
_08000354: .4byte ram_sub_080B1B68
_08000358: .4byte ram_sub_080B1B84
_0800035C: .4byte ram_sub_080B1BA4
