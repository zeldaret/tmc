	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x54]
	ldr r1, _080AD2AC @ =gPlayerEntity
	movs r0, #0
	str r0, [r1, #0x74]
	adds r0, r3, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r5, r1, #0
	ldrb r1, [r4, #8]
	cmp r0, r1
	bne _080AD320
	adds r0, r3, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _080AD320
	cmp r4, r3
	beq _080AD2B0
	movs r0, #2
	strb r0, [r4, #0xd]
	b _080AD2C2
	.align 2, 0
_080AD2AC: .4byte gPlayerEntity
_080AD2B0:
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
_080AD2C2:
	ldr r0, [r4, #0x48]
	str r0, [r3, #0x48]
	ldrb r1, [r3, #0x16]
	lsrs r1, r1, #4
	ldr r2, _080AD318 @ =gUnk_081320CC
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0x24]
	ldr r0, _080AD31C @ =gUnk_081320D4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x20]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	strh r0, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0x32]
	strh r0, [r3, #0x32]
	ldrh r0, [r5, #0x2e]
	strh r0, [r3, #0x2e]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_0801766C
	b _080AD328
	.align 2, 0
_080AD318: .4byte gUnk_081320CC
_080AD31C: .4byte gUnk_081320D4
_080AD320:
	bl PlayerDropHeldObject
	bl DeleteThisEntity
_080AD328:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
