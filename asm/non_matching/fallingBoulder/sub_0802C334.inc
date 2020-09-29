
	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x7c
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802C36A
	ldr r0, _0802C3C4 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldr r2, _0802C3C8 @ =gPlayerEntity
	cmp r2, #0
	bne _0802C34E
	b _0802C4AA
_0802C34E:
	movs r5, #0x32
	ldrsh r0, [r2, r5]
	subs r0, r0, r1
	cmp r0, #0x38
	bhi _0802C35A
	b _0802C4AA
_0802C35A:
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0802C36A:
	adds r0, r4, #0
	bl GetNextFrame
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802C3C4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r0, #6
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802C3CC
	movs r0, #0xa6
	lsls r0, r0, #1
	bl EnqueueSFX
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xc
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0802C4B0
	b _0802C48C
	.align 2, 0
_0802C3C4: .4byte gRoomControls
_0802C3C8: .4byte gPlayerEntity
_0802C3CC:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _0802C442
	subs r0, r1, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0802C3EA
	cmp r0, #8
	beq _0802C3F4
	b _0802C442
_0802C3EA:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _0802C442
_0802C3F4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802C442
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802C442
	movs r6, #0
	movs r5, #1
_0802C408:
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0802C420
	ldrh r0, [r2, #0x2e]
	adds r0, #0xc
	subs r0, r0, r6
	strh r0, [r2, #0x2e]
_0802C420:
	adds r6, #0x18
	subs r5, #1
	cmp r5, #0
	bge _0802C408
	adds r0, r4, #0
	bl sub_0802C62C
	bl Random
	movs r1, #0xff
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	b _0802C4AA
_0802C442:
	ldr r0, _0802C45C @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r5, r1, r0
	cmp r5, #4
	ble _0802C460
	adds r0, r4, #0
	bl sub_080AEFB4
	b _0802C48C
	.align 2, 0
_0802C45C: .4byte gRoomControls
_0802C460:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	subs r0, r0, r5
	cmp r0, #0x38
	ble _0802C48C
	adds r0, r4, #0
	bl sub_0802C62C
	bl Random
	movs r1, #0x7f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0802C48C
	strb r0, [r4, #0xc]
_0802C48C:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_0802C4AA:
	pop {r4, r5, r6, r7, pc}

	.syntax divided
