	.ifndef GUARD_ASM_MACROS_MAP_INC
	.set GUARD_ASM_MACROS_MAP_INC, 1

	.macro room_header map_x, map_y, pixel_width, pixel_height, tileset_id
	.2byte (\map_x) << 4
	.2byte (\map_y) << 4
	.2byte \pixel_width
	.2byte \pixel_height
	.2byte \tileset_id
	.endm

	.macro tileset_tiles src_offset, dest, size, compressed, terminator=0
	.4byte (!(\terminator) << 0x1F) | (\src_offset)
	.4byte \dest
	.4byte (\compressed << 0x1F) | (\size)
	.endm

	.macro tileset_palette_set id, terminator=0
	.4byte (!(\terminator) << 0x1F) | (\id)
	.4byte 0x0
	.4byte 0x0
	.endm

	.endif @ GUARD_ASM_MACROS_MAP_INC
