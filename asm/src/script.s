	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	.thumb

	.macro transition_tile tile:req, src_layer:req dest_layer:req
	.short \tile
	.byte \src_layer, \dest_layer
	.endm


gUnk_08016984:: @ 08016984
	.incbin "code_08016984/gUnk_08016984.bin"

GetNextScriptCommandHalfword::
	ldrh r0, [r0]
	bx lr

GetNextScriptCommandHalfwordAfterCommandMetadata::
	ldrh r0, [r0, #2]
	bx lr

GetNextScriptCommandWord::
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	orrs r0, r1
	bx lr

GetNextScriptCommandWordAfterCommandMetadata::
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x10
	orrs r0, r1
	bx lr
	.align 2, 0

gShakeOffsets::
	.byte 1, -1, 0, 1, 1, 0, 0, 1, -1, -1, 1, 0, -1, 1, 0, 0
	.byte 2, -1, 1, -2, 0, -1, -1, 0, -1, 1, -1, 2, 0, 0, 1, 1
	.byte 2, -1, 2, -2, -2, 2, -1, 3, -3, -1, -2, 1, 1, -3, -1, -1
	.byte 3, -2, 2, 0, 0, -1, -2, 3, -3, 2, -1, 0, 0, -3, 2, 0
	.byte 0, -1, 0, -2, 0, -1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 1
	.byte 2, 0, 1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 1, 0

UpdateSpriteForCollisionLayer:: @ 0x08016A04
	movs r1, #0x38
	ldrb r1, [r0, r1]
	lsls r1, r1, #1
	add r3, pc, #0x1C
	adds r1, r1, r3
	movs r3, #0xc0
	ldrb r2, [r0, #0x19]
	bics r2, r3
	ldrb r3, [r1]
	orrs r2, r3
	strb r2, [r0, #0x19]
	movs r3, #0xc0
	ldrb r2, [r0, #0x1b]
	bics r2, r3
	ldrb r3, [r1, #1]
	orrs r2, r3
	strb r2, [r0, #0x1b]
	bx lr
_08016A28:
	.byte 0x80, 0x80, 0x80, 0x80, 0x40, 0x40, 0x40, 0x40

ResolveCollisionLayer::
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x38
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _08016A64
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r4, #0x32]
	movs r2, #2
	bl GetTileTypeAtWorldCoords
	movs r3, #1
	cmp r0, #0
	beq _08016A62
	bl GetActTileForTileType
	movs r3, #2
	add r1, pc, #0x40
_08016A54:
	adds r1, #4
	ldrh r2, [r1]
	cmp r2, #0
	beq _08016A62
	cmp r0, r2
	bne _08016A54
	ldrb r3, [r1, #3]
_08016A62:
	strb r3, [r4, r5]
_08016A64:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	pop {r4, r5, pc}

CheckOnLayerTransition::
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetActTileAtEntity // tile under me
	adr r1, gTransitionTiles-4
loop:
	adds r1, #4 // p += 4
	ldrh r2, [r1] // *(u16*)(p)
	cmp r2, #0
	beq not_found
	cmp r2, r0
	bne loop // found the tile under me?
	movs r2, #0x38
	ldrb r3, [r4, r2] // collision layer
	ldrb r5, [r1, #2] // *(u8*)(p + 2)
	cmp r3, r5 // am i on the right later?
	beq not_found
	ldrb r5, [r1, #3] // *(u8*)(p + 3)
	strb r5, [r4, r2] // move to a new layer
not_found:
	pop {r4, r5, pc}
	.align 2, 0

	transition_tile 0x2A, 3, 3
	transition_tile 0x2D, 3, 3
	transition_tile 0x2B, 3, 3
	transition_tile 0x2C, 3, 3
	transition_tile 0x4C, 3, 3
	transition_tile 0x4E, 3, 3
	transition_tile 0x4D, 3, 3
	transition_tile 0x4F, 3, 3
gTransitionTiles:
	transition_tile 0x0A, 2, 1
	transition_tile 0x09, 2, 1
	transition_tile 0x0C, 1, 2
	transition_tile 0x0B, 1, 2
	transition_tile 0x52, 3, 3
	transition_tile 0x27, 3, 3
	transition_tile 0x26, 3, 3
	.short 0x0000

UpdateCollisionLayer::
	push {r4, lr}
	adds r4, r0, #0
	bl CheckOnLayerTransition
	push {r0}
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	pop {r0, r4, pc}

