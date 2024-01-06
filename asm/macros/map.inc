	.ifndef GUARD_ASM_MACROS_MAP_INC
	.set GUARD_ASM_MACROS_MAP_INC, 1

	.set TOP_TILEDATA, gMapTop+0x4
	.set TOP_COLLISIONDATA, gMapTop+0x2004
	.set TOP_TILEDATAORIGINAL, gMapTop+0x3004
	.set TOP_TILETYPES, gMapTop+0x5004
	.set TOP_TILEINDICES, gMapTop+0x6004
	.set TOP_TILES, gMapTop+0x7004
	.set TOP_ACTTILES, gMapTop+0xb004
	.set BOTTOM_TILEDATA, gMapBottom+0x4
	.set BOTTOM_COLLISIONDATA, gMapBottom+0x2004
	.set BOTTOM_TILEDATAORIGINAL, gMapBottom+0x3004
	.set BOTTOM_TILETYPES, gMapBottom+0x5004
	.set BOTTOM_TILEINDICES, gMapBottom+0x6004
	.set BOTTOM_TILES, gMapBottom+0x7004
	.set BOTTOM_ACTTILES, gMapBottom+0xb004

	.macro room_header map_x, map_y, pixel_width, pixel_height, tileSet_id
	.2byte (\map_x) << 4
	.2byte (\map_y) << 4
	.2byte \pixel_width
	.2byte \pixel_height
	.2byte \tileSet_id
	.endm


	.macro map_data src_offset, dest, size, compressed, terminator=0
	.4byte (!(\terminator) << 0x1F) + \src_offset
	.4byte \dest
	.4byte (\compressed << 0x1F) | (\size)
	.endm

	.macro tileSet_tiles src_offset, dest, size, compressed, terminator=0
	map_data \src_offset, \dest, \size, \compressed, \terminator
	.endm

	.macro tileSet_palette_set id, terminator=0
	.4byte (!(\terminator) << 0x1F) | (\id)
	.4byte 0x0
	.4byte 0x0
	.endm

	.macro tiles_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapBottom+0x7004, \size, \compressed, \terminator
	.endm

	.macro tiles_top src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapTop+0x7004, \size, \compressed, \terminator
	.endm

	.macro tile_types_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapBottom+0x5004, \size, \compressed, \terminator
	.endm

	.macro tile_types_top src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapTop+0x5004, \size, \compressed, \terminator
	.endm

	.macro map_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapBottom+0x0004, \size, \compressed, \terminator
	.endm

	.macro map_top src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapTop+0x0004, \size, \compressed, \terminator
	.endm

	.macro map_top_special src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapDataTopSpecial, \size, \compressed, \terminator
	.endm

	.macro collision_bottom src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapBottom+0x2004, \size, \compressed, \terminator
	.endm

	.macro map_bottom_special src_offset, size, compressed, terminator=0
	map_data \src_offset, gMapDataBottomSpecial, \size, \compressed, \terminator
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
