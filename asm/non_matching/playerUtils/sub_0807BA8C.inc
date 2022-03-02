	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl DeleteLoadedTileEntity
	adds r0, r7, #0
	bl GetLayerByIndex
	adds r5, r0, #0
	lsls r2, r4, #1
	adds r1, r5, #4
	adds r1, r1, r2
	ldr r3, _0807BAFC @ =0x00003004
	adds r0, r5, r3
	adds r0, r0, r2
	ldrh r6, [r0]
	strh r6, [r1]
	lsls r1, r6, #1
	ldr r2, _0807BB00 @ =0x00005004
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _0807BB04 @ =0x00002004
	adds r1, r5, r3
	adds r1, r1, r4
	ldr r0, _0807BB08 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0807BB0C @ =0x0000B004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BB10 @ =gUnk_080B37A0
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _0807BB14 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BB54
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r7, #2
	beq _0807BB1C
	lsls r1, r1, #1
	ldr r0, _0807BB18 @ =gUnk_02019EE0
	b _0807BB20
	.align 2, 0
_0807BAFC: .4byte 0x00003004
_0807BB00: .4byte 0x00005004
_0807BB04: .4byte 0x00002004
_0807BB08: .4byte gUnk_080B3E80
_0807BB0C: .4byte 0x0000B004
_0807BB10: .4byte gUnk_080B37A0
_0807BB14: .4byte gRoomControls
_0807BB18: .4byte gUnk_02019EE0
_0807BB1C:
	lsls r1, r1, #1
	ldr r0, _0807BB58 @ =gMapDataTopSpecial
_0807BB20:
	adds r3, r1, r0
	lsls r0, r6, #3
	ldr r1, _0807BB5C @ =0x00007004
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
	ldr r0, _0807BB60 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807BB54
	ldr r1, _0807BB64 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807BB54:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BB58: .4byte gMapDataTopSpecial
_0807BB5C: .4byte 0x00007004
_0807BB60: .4byte gRoomControls
_0807BB64: .4byte gUpdateVisibleTiles
	.syntax divided
