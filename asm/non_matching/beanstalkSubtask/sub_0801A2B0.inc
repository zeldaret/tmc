	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _0801A31C @ =gUnk_080B4488
	ldr r2, _0801A320 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _0801A324 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A36C
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A36C
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	bl sub_080B1B54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0x52
	beq _0801A36C
	cmp r0, #0x52
	bgt _0801A328
	cmp r0, #0x26
	blt _0801A32C
	cmp r0, #0x27
	ble _0801A36C
	cmp r0, #0x29
	beq _0801A36C
	b _0801A32C
	.align 2, 0
_0801A31C: .4byte gUnk_080B4488
_0801A320: .4byte gPlayerEntity
_0801A324: .4byte gPlayerState
_0801A328:
	cmp r1, #0x74
	beq _0801A36C
_0801A32C:
	ldr r0, _0801A364 @ =0x00002004
	adds r3, r5, r0
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0x28
	beq _0801A36C
	movs r1, #0x3f
	ands r1, r4
	ldr r0, _0801A368 @ =gRoomControls
	lsls r1, r1, #4
	ldrh r2, [r0, #6]
	adds r1, r1, r2
	lsrs r2, r4, #6
	lsls r2, r2, #4
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	adds r3, r6, #0
	bl IsTileCollision
	cmp r0, #0
	bne _0801A36C
	movs r0, #1
	b _0801A36E
	.align 2, 0
_0801A364: .4byte 0x00002004
_0801A368: .4byte gRoomControls
_0801A36C:
	movs r0, #0
_0801A36E:
	pop {r4, r5, r6, pc}
	.syntax divided
