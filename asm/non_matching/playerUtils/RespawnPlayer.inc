	.syntax unified
	push {r4, r5, lr}
	ldr r4, _08079498 @ =gPlayerEntity
	movs r1, #0
	movs r0, #0x19
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	bl sub_08078EE4
	ldr r2, _0807949C @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08079514
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _080794E4
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	b _08079514
	.align 2, 0
_08079498: .4byte gPlayerEntity
_0807949C: .4byte gPlayerState
_080794A0:
	ldr r2, _080794DC @ =gPlayerEntity
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	adds r1, r2, #0
	adds r1, #0x38
	strb r0, [r1]
	ldr r3, _080794E0 @ =gRoomControls
	ldr r0, [r4]
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	adds r0, #8
	strh r0, [r2, #0x2e]
	ldr r0, [r4]
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	adds r0, #8
	strh r0, [r2, #0x32]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	b _08079514
	.align 2, 0
_080794DC: .4byte gPlayerEntity
_080794E0: .4byte gRoomControls
_080794E4:
	movs r5, #0
	ldr r1, [r2, #0x40]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08079514
	adds r4, r2, #0
	adds r4, #0x40
_080794F4:
	ldr r1, [r4]
	ldrh r0, [r4]
	lsrs r1, r1, #0x1e
	bl sub_080002E0
	cmp r0, #0xf
	bne _080794A0
	adds r4, #4
	adds r5, #1
	cmp r5, #0xf
	bhi _08079514
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080794F4
_08079514:
	ldr r0, _0807951C @ =gPlayerEntity
	bl UpdateSpriteForCollisionLayer
	pop {r4, r5, pc}
	.align 2, 0
_0807951C: .4byte gPlayerEntity
	.syntax divided
