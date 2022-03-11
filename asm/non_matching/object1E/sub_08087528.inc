	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08087590 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0x1b]
	lsrs r0, r1, #6
	subs r0, #1
	lsls r0, r0, #6
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08087594
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bne _08087588
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_08087588:
	adds r0, r4, #0
	bl sub_08087640
	b _080875DC
	.align 2, 0
_08087590: .4byte gPlayerEntity
_08087594:
	ldr r0, _080875B4 @ =gArea
	ldrb r0, [r0, #1]
	movs r1, #4
	cmp r0, #0x10
	bne _080875A2
	movs r1, #0xb5
	lsls r1, r1, #1
_080875A2:
	adds r0, r4, #0
	bl ChangeObjPalette
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080875B8
	cmp r0, #3
	bne _080875CE
	b _080875C0
	.align 2, 0
_080875B4: .4byte gArea
_080875B8:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080875C0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x40
	bne _080875DC
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	b _080875DC
_080875CE:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x40
	bne _080875DC
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080875DC:
	adds r0, r4, #0
	movs r1, #3
	bl SetDefaultPriority
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #2
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.syntax divided
