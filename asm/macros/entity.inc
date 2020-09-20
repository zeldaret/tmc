	.ifndef GUARD_ASM_MACROS_ENTITY_INC
	.set GUARD_ASM_MACROS_ENTITY_INC, 1

	.set ENTITY_TYPE_ENEMY, 0x3
	.set ENTITY_OCTOROK, 0x0
	.set ENTITY_CHUCHU, 0x1
	.set ENTITY_TREE_ITEM, 0x65

	.macro entity_octorok x, y, bound_x, bound_y, bound_tile_width, bound_tile_height
	.byte ENTITY_TYPE_ENEMY
	.byte 0x0F
	.byte ENTITY_OCTOROK
	.byte 0x00, 0x00, 0x00
	.byte \bound_tile_width, \bound_tile_height
	.2byte \x, \y
	.2byte \bound_x, \bound_y
	.endm

	.macro entity_chuchu x, y, bound_x, bound_y, bound_tile_width, bound_tile_height
	.byte ENTITY_TYPE_ENEMY
	.byte 0x0F
	.byte ENTITY_CHUCHU
	.byte 0x00, 0x00, 0x00
	.byte \bound_tile_width, \bound_tile_height
	.2byte \x, \y
	.2byte \bound_x, \bound_y
	.endm

	.macro entity_tree_item x, y, unused
	.byte ENTITY_TYPE_ENEMY
	.byte 0x0F
	.byte ENTITY_TREE_ITEM
	.byte \unused, 0x00, 0x00, 0x00, 0x00
	.2byte \x, \y
	.2byte 0x00, 0x00
	.endm

	.macro entity_list_end
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.endm

	.macro chest type, id, item, subnum, tileset_id
	.2byte (\map_x) << 4
	.2byte (\map_y) << 4
	.2byte \pixel_width
	.2byte \pixel_height
	.2byte \tileset_id
	.endm

	.endif @ GUARD_ASM_MACROS_ENTITY_INC
