	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080645EA
	cmp r5, #1
	bgt _08064584
	cmp r5, #0
	beq _0806458A
	b _0806463C
_08064584:
	cmp r5, #2
	beq _0806462C
	b _0806463C
_0806458A:
	ldrb r1, [r4, #9]
	movs r0, #0x16
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080645D0 @ =gUnk_0810F874
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806463C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _080645D4
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _080645E0
	.align 2, 0
_080645D0: .4byte gUnk_0810F874
_080645D4:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_080645E0:
	movs r0, #0
	str r0, [r4, #0x68]
	adds r0, r4, #0
	bl sub_0807DD50
_080645EA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0806463C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r2]
	ldr r1, _08064628 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0806463C
	bl _call_via_r0
	b _0806463C
	.align 2, 0
_08064628: .4byte gPlayerEntity
_0806462C:
	ldr r0, _08064640 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806463C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806463C:
	pop {r4, r5, pc}
	.align 2, 0
_08064640: .4byte gTextBox
	.syntax divided
