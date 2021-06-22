.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	cmp r5, #0
	bne _080A984A
	bl DeleteThisEntity
_080A984A:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A9856
	bl DeleteThisEntity
	b _080A989A
_080A9856:
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl GetSpriteSubEntryOffsetDataPointer
	adds r3, r0, #0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A9884
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	b _080A989A
_080A9884:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_080A989A:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A98F8
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A98B0
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080A98F8
_080A98B0:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A98F8
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r2, #0x40
	movs r0, #0x40
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #2
	strb r1, [r4, #0x15]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldr r0, _080A98FC @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080AA3E0
_080A98F8:
	pop {r4, r5, pc}
	.align 2, 0
_080A98FC: .4byte gUnk_080FD150
.syntax divided
