.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #0x5e
	beq _08054786
	cmp r4, #0x5e
	bhi _08054772
	cmp r4, #0x5c
	beq _080547A6
	cmp r4, #0x5c
	bhi _08054782
	cmp r4, #0x3f
	beq _08054794
	b _080547DA
_08054772:
	cmp r4, #0xfc
	blo _080547DA
	cmp r4, #0xfe
	bls _080547A6
	cmp r4, #0xff
	bne _080547DA
	movs r0, #1
	b _08054788
_08054782:
	movs r0, #0x65
	b _08054788
_08054786:
	movs r0, #9
_08054788:
	bl GetInventoryValue
	cmp r0, #0
	bne _080547DA
_08054790:
	movs r0, #0
	b _0805486C
_08054794:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	cmp r5, #0
	bne _080547DA
	movs r5, #1
	b _080547DA
_080547A6:
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	ldr r0, _080547FC @ =gRoomVars
	ldrb r0, [r0, #5]
	cmp r0, #3
	bhi _08054790
	cmp r4, #0x5c
	beq _080547DA
	adds r5, r4, #0
	subs r5, #0xfc
	bl Random
	movs r1, #0x3f
	ands r1, r0
	ldr r2, _08054800 @ =gUnk_080FE1DD
	lsls r0, r5, #6
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	movs r4, #0x5c
	cmp r5, #0
	bne _080547DA
	movs r4, #0
_080547DA:
	cmp r4, #0
	beq _0805486A
	cmp r4, #0xff
	beq _08054842
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldr r0, _08054804 @ =gPlayerEntity
	cmp r6, r0
	bne _08054808
	movs r0, #1
	b _0805480A
	.align 2, 0
_080547FC: .4byte gRoomVars
_08054800: .4byte gUnk_080FE1DD
_08054804: .4byte gPlayerEntity
_08054808:
	movs r0, #0
_0805480A:
	strb r0, [r2, #0xe]
	ldrb r0, [r6, #8]
	cmp r0, #6
	bne _08054838
	ldrb r0, [r6, #9]
	cmp r0, #0x63
	bne _0805481C
	str r2, [r6, #0x54]
	b _08054838
_0805481C:
	cmp r0, #0x1e
	bne _08054838
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0xc0
	strh r0, [r2, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_08054838:
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	b _0805486A
_08054842:
	movs r0, #7
	movs r1, #0
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldrh r0, [r6, #0x2e]
	strh r0, [r2, #0x2e]
	ldrh r0, [r6, #0x32]
	strh r0, [r2, #0x32]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_0805486A:
	adds r0, r4, #0
_0805486C:
	pop {r4, r5, r6, pc}
	.align 2, 0
.syntax divided
