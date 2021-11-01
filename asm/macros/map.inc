	.ifndef GUARD_ASM_MACROS_MAP_INC
	.set GUARD_ASM_MACROS_MAP_INC, 1

	.macro room_header map_x, map_y, pixel_width, pixel_height, tileset_id
	.2byte (\map_x) << 4
	.2byte (\map_y) << 4
	.2byte \pixel_width
	.2byte \pixel_height
	.2byte \tileset_id
	.endm


@ TODO workaround because we cannot substract two extern pointers
@ Will need to find a different solution when wanting to modify assets.
.ifdef USA
	.equiv ptr_gMapData, 0x8324AE4
.endif
.ifdef EU
	.equiv ptr_gMapData, 0x8323FEC
.endif
.ifdef JP
	.equiv ptr_gMapData, 0x8324710
.endif
.ifdef DEMO_USA
	.equiv ptr_gMapData, 0x8325514
.endif
.ifdef DEMO_JP
	.equiv ptr_gMapData, 0x8324708
.endif

	.macro map_data src_offset, dest, size, compressed, terminator=0
	.4byte (!(\terminator) << 0x1F) + (\src_offset - ptr_gMapData)
	.4byte \dest
	.4byte (\compressed << 0x1F) | (\size)
	.endm

	.macro tileset_tiles src_offset, dest, size, compressed, terminator=0
	map_data \src_offset, \dest, \size, \compressed, \terminator
	.endm

	.macro tileset_palette_set id, terminator=0
	.4byte (!(\terminator) << 0x1F) | (\id)
	.4byte 0x0
	.4byte 0x0
	.endm

	.macro metatiles_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMetatilesBottom, \size, \compressed, \terminator
	.endm

	.macro metatiles_top src_offset, size, compressed, terminator=0
	map_data \src_offset, gMetatilesTop, \size, \compressed, \terminator
	.endm

	.macro metatile_types_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMetatileTypesBottom, \size, \compressed, \terminator
	.endm

	.macro metatile_types_top src_offset, size, compressed, terminator=0
	map_data \src_offset, gMetatileTypesTop, \size, \compressed, \terminator
	.endm

	.macro map_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapDataBottom, \size, \compressed, \terminator
	.endm

	.macro map_top src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapDataTop, \size, \compressed, \terminator
	.endm

	.macro map_top_special src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapDataTopSpecial, \size, \compressed, \terminator
	.endm

	.macro map_unknown src_offset, size, compressed, terminator=0
	map_data \src_offset, gUnk_02027EB4, \size, \compressed, \terminator
	.endm

	.macro map_unknown_2 src_offset, size, compressed, terminator=0
	map_data \src_offset, gUnk_02019EE0, \size, \compressed, \terminator
	.endm


	.macro exit_list_end
	.4byte 0xffff, 0,0,0,0
	.endm

	.macro exit transition:req, x=0, y=0, destX=0, destY=0, screenEdge=0, destArea=0, destRoom=0, unknown=0, unknown2=0, unknown3=0, unknown4=0, padding=0
	.2byte \transition, \x, \y, \destX, \destY
	.byte \screenEdge, \destArea, \destRoom, \unknown, \unknown2, \unknown3
	.2byte \unknown4, \padding
	.endm

	.endif @ GUARD_ASM_MACROS_MAP_INC
