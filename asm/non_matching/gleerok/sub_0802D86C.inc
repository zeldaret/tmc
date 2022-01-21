	.syntax unified

	.text
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D878
	b _0802DB7E
_0802D878:
	lsls r0, r0, #2
	ldr r1, _0802D884 @ =_0802D888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D884: .4byte _0802D888
_0802D888: @ jump table
	.4byte _0802DB64 @ case 0
	.4byte _0802D8A4 @ case 1
	.4byte _0802D8CE @ case 2
	.4byte _0802DA54 @ case 3
	.4byte _0802D94C @ case 4
	.4byte _0802D9A2 @ case 5
	.4byte _0802D9F8 @ case 6
_0802D8A4:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D8CE
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D8BE
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802D8C6
_0802D8BE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802D8CC
_0802D8C6:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802D8CC:
	strb r0, [r4, #0x10]
_0802D8CE:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D8DE
	b _0802DB7E
_0802D8DE:
	ldr r0, [r4, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D918
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802D906
	adds r0, r4, #0
	bl UnloadOBJPalette
	adds r0, r4, #0
	movs r1, #0xc9
	bl LoadObjPalette
	b _0802D918
_0802D906:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl UnloadOBJPalette
	adds r0, r4, #0
	movs r1, #0xca
	bl LoadObjPalette
_0802D918:
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D924
	b _0802DB7E
_0802D924:
	ldr r1, _0802D944 @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #8
	movs r3, #8
	bl EntityInRectRadius
	cmp r0, #0
	bne _0802D936
	b _0802DB7E
_0802D936:
	ldr r0, _0802D948 @ =gPlayerState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfc
	strb r1, [r0]
	b _0802DB7E
	.align 2, 0
_0802D944: .4byte gPlayerEntity
_0802D948: .4byte gPlayerState
_0802D94C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D95E
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _0802DB7E
_0802D95E:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl GravityUpdate
	adds r2, r0, #0
	cmp r2, #0
	beq _0802D970
	b _0802DB7E
_0802D970:
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	movs r1, #1
	strb r1, [r0]
	strb r2, [r4, #0xe]
_0802D97A:
	ldrb r3, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #0
	bl CreateObjectWithParent
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0802D97A
	movs r0, #0xa8
	lsls r0, r0, #1
	bl SoundReq
_0802D99C:
	bl DeleteThisEntity
	b _0802DB7E
_0802D9A2:
	ldr r0, _0802D9F4 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D9B8
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802D9B8
	b _0802DB7E
_0802D9B8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802D9CE
	b _0802DB7E
_0802D9CE:
	movs r0, #0x24
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802D9F4: .4byte gRoomTransition
_0802D9F8:
	ldr r0, _0802DA50 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DA0E
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802DA0E
	b _0802DB7E
_0802DA0E:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802DA24
	b _0802DB7E
_0802DA24:
	movs r0, #0x24
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
	ldr r2, [r1]
	ldr r0, [r4, #0x54]
	str r0, [r2, #0x38]
	adds r0, #0x84
	ldr r1, [r1]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802DA50: .4byte gRoomTransition
_0802DA54:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DA96
	subs r0, r1, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802DA96
	adds r5, r4, #0
	adds r5, #0x75
	ldrb r0, [r5]
	adds r0, #2
	strb r0, [r5]
	ldr r7, _0802DAD4 @ =gUnk_080CD884
	ldrb r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r6]
	cmp r0, #0
	beq _0802DA96
	adds r0, r4, #0
	bl UnloadOBJPalette
	ldrb r0, [r5]
	adds r0, #1
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r0, r4, #0
	bl LoadObjPalette
_0802DA96:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802DAD8
	ldrb r2, [r6]
	cmp r2, #0
	bne _0802DAD8
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _0802DB20
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x50]
	movs r0, #4
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x50]
	strb r2, [r0, #0xb]
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	strb r2, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	bl SoundReq
	b _0802DB20
	.align 2, 0
_0802DAD4: .4byte gUnk_080CD884
_0802DAD8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldrb r1, [r4, #0xe]
	adds r3, r0, #0
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _0802DB20
	adds r0, r1, #0
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DB08
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bls _0802DB1A
	movs r0, #0x28
	b _0802DB18
_0802DB08:
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _0802DB1A
	movs r0, #0x30
_0802DB18:
	strb r0, [r4, #0x1e]
_0802DB1A:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
_0802DB20:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802DB7E
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl GravityUpdate
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _0802DB7E
	movs r0, #0x24
	movs r1, #4
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DB7E
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	b _0802D99C
_0802DB64:
	ldr r1, _0802DB80 @ =gUnk_080CD810
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802DB7E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802DB80: .4byte gUnk_080CD810

	.syntax divided
