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

	.macro entity_raw type:req, subtype:req, collision=0, unknown:req, paramA=0, paramB=0, x=0, y=0, paramC=0
	.byte \type | ((\collision) << 4)
	.byte \unknown
	.byte \subtype
	.byte \paramA
	.4byte \paramB
	.2byte \x
	.2byte \y
	.4byte \paramC
	.endm

	.macro ezlo_hint type=0 x:req, y:req, rx:req, ry:req, msg:req, flag:req, msg_y=0, flag2=0
	.byte 9
	.byte 0
	.byte 10
	.byte \type
	.byte 0
	.byte \msg_y
	.2byte \msg
	.byte \x >> 1 /* normalize to same coordinates */
	.byte \y >> 1
	.byte \rx
	.byte \ry
	.2byte \flag
	.2byte \flag2
	.endm

	.macro manager subtype:req, collision=0, unknown=0xf, paramA=0, paramB=0, x=0, y=0, paramC=0
	entity_raw type=9, subtype=\subtype, collision=\collision, unknown=\unknown, paramA=\paramA, paramB=\paramB, x=\x, y=\y, paramC=\paramC
	.endm

	.macro object_raw subtype:req, collision=0, unknown=0xf, paramA=0, paramB=0, x=0, y=0, paramC=0
	entity_raw type=6, subtype=\subtype, collision=\collision, unknown=\unknown, paramA=\paramA, paramB=\paramB, x=\x, y=\y, paramC=\paramC
	.endm

	.macro enemy_raw subtype:req, collision=0, unknown=0xf, paramA=0, paramB=0, x=0, y=0, paramC=0
	entity_raw type=3, subtype=\subtype, collision=\collision, unknown=\unknown, paramA=\paramA, paramB=\paramB, x=\x, y=\y, paramC=\paramC
	.endm

	.macro npc_raw subtype:req, collision=0, unknown=0x4f, paramA=0, paramB=0, x=0, y=0, script:req
	entity_raw type=7, subtype=\subtype, collision=\collision, unknown=\unknown, paramA=\paramA, paramB=\paramB, x=\x, y=\y, paramC=\script
	.endm

	.macro projectile_raw subtype:req, collision=0, unknown=0xf, paramA=0, paramB=0, x=0, y=0, paramC=0
	entity_raw type=4, subtype=\subtype, collision=\collision, unknown=\unknown, paramA=\paramA, paramB=\paramB, x=\x, y=\y, paramC=\paramC
	.endm

	.macro entity_list_end
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.endm

	.macro tile_entity_list_end
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.endm

	.macro tile_entity type:req, paramA=0, paramB=0, paramC=0, paramD=0
	.byte \type, \paramA
	.2byte \paramB, \paramC, \paramD
	.endm

	.macro chest type, id, item, subnum, tileset_id
	.2byte (\map_x) << 4
	.2byte (\map_y) << 4
	.2byte \pixel_width
	.2byte \pixel_height
	.2byte \tileset_id
	.endm

	.macro delayed_entity_raw subtype:req, paramA=0, paramB=0, layer=0, x=0, y=0, paramC=0, paramD=0, conditions=0
	.byte \subtype
	.byte \paramA
	.byte \paramB
	.byte \layer
	.2byte \x
	.2byte \y
	.4byte \paramC
	.2byte \paramD
	.2byte \conditions
	.endm

	.macro exit_region_raw centerX=0, centerY=0, halfWidth=0, halfHeight=0, exitIndex=0, bitfield=0
	.2byte \centerX, \centerY
	.byte \halfWidth, \halfHeight, \exitIndex, \bitfield
	.endm
	.macro exit_region_list_end
	.2byte 0xffff, 0x0, 0x0, 0x0
	.endm

	.macro exit_raw transition=0, x=0, y=0, destX=0, destY=0, screenEdge=0, destArea=0, destRoom=0, unknownA=0, unknownB=0, unknownC=0, unknownD=0
	.2byte \transition, \x, \y, \destX, \destY
	.byte \screenEdge, \destArea, \destRoom, \unknownA, \unknownB, \unknownC
	.2byte \unknownD, 0x0
	.endm

	.macro minish_entrance x=0, y=0, unknown=0, timer=0
	.2byte \x, \y, \unknown, \timer
	.endm

	.endif @ GUARD_ASM_MACROS_ENTITY_INC
