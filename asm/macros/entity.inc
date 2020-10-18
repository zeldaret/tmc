	.ifndef GUARD_ASM_MACROS_ENTITY_INC
	.set GUARD_ASM_MACROS_ENTITY_INC, 1

	.set ENTITY_TYPE_ENEMY, 0x3
	.set ENTITY_TYPE_SIGN, 0x5
	.set ENTITY_TYPE_OBJECT, 0x6

	.set OBJECT_ITEM, 0x0
	.set OBJECT_MINISH_LILYPAD, 0x73

	.set ENEMY_OCTOROK, 0x0
	.set ENEMY_CHUCHU, 0x1
	.set ENEMY_TREE_ITEM, 0x65

	.macro object_minish_lilypad x, y, room_property, collision=0
	.byte ENTITY_TYPE_OBJECT | ((\collision) << 4)
	.byte 0x0F
	.byte OBJECT_MINISH_LILYPAD
	.byte 0x00
	.byte \room_property
	.byte 0x00, 0x00, 0x00
	.2byte \x, \y
	.2byte 0x0, 0x0
	.endm

	.macro object_item x, y, item, flag, collision=0
	.byte ENTITY_TYPE_OBJECT | ((\collision) << 4)
	.byte 0x0F
	.byte OBJECT_ITEM
	.byte \item
	.byte 0x00
	.byte 0x04 @ stationary item
	.byte 0x00, 0x00
	.2byte \x, \y
	.2byte 0x0, \flag
	.endm

	.macro enemy_octorok x, y, bound_x, bound_y, bound_tile_width, bound_tile_height, collision=0
	.byte ENTITY_TYPE_ENEMY | ((\collision) << 4)
	.byte 0x0F
	.byte ENEMY_OCTOROK
	.byte 0x00, 0x00, 0x00
	.byte \bound_tile_width, \bound_tile_height
	.2byte \x, \y
	.2byte \bound_x, \bound_y
	.endm

	.macro enemy_chuchu x, y, bound_x, bound_y, bound_tile_width, bound_tile_height, collision=0
	.byte ENTITY_TYPE_ENEMY | ((\collision) << 4)
	.byte 0x0F
	.byte ENEMY_CHUCHU
	.byte 0x00, 0x00, 0x00
	.byte \bound_tile_width, \bound_tile_height
	.2byte \x, \y
	.2byte \bound_x, \bound_y
	.endm

	.macro enemy_tree_item x, y, unknown, collision=0
	.byte ENTITY_TYPE_ENEMY | ((\collision) << 4)
	.byte 0x0F
	.byte ENEMY_TREE_ITEM
	.byte \unknown, 0x00, 0x00, 0x00, 0x00
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
