	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl DeleteLoadedTileEntity
	adds r0, r6, #0
	bl GetLayerByIndex
	adds r5, r0, #0
	lsls r1, r4, #1
	adds r0, r5, #4
	adds r0, r0, r1
	strh r7, [r0]
	lsls r1, r7, #1
	ldr r2, _0807BA24 @ =0x00005004
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _0807BA28 @ =0x00002004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BA2C @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0807BA30 @ =0x0000B004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BA34 @ =gUnk_080B37A0
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _0807BA38 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA78
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r6, #2
	beq _0807BA40
	lsls r1, r1, #1
	ldr r0, _0807BA3C @ =gUnk_02019EE0
	b _0807BA44
	.align 2, 0
_0807BA24: .4byte 0x00005004
_0807BA28: .4byte 0x00002004
_0807BA2C: .4byte gUnk_080B3E80
_0807BA30: .4byte 0x0000B004
_0807BA34: .4byte gUnk_080B37A0
_0807BA38: .4byte gRoomControls
_0807BA3C: .4byte gUnk_02019EE0
_0807BA40:
	lsls r1, r1, #1
	ldr r0, _0807BA7C @ =gMapDataTopSpecial
_0807BA44:
	adds r3, r1, r0
	lsls r0, r7, #3
	ldr r1, _0807BA80 @ =0x00007004
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807BA84 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807BA78
	ldr r1, _0807BA88 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807BA78:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BA7C: .4byte gMapDataTopSpecial
_0807BA80: .4byte 0x00007004
_0807BA84: .4byte gRoomControls
_0807BA88: .4byte gUpdateVisibleTiles
	.syntax divided
