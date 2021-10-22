	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r0, [r4, #0x34]
	ldr r1, _080AC1C0 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080AC1F8
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	bl Random
	adds r5, r0, #0
	movs r0, #7
	ands r5, r0
	ldr r0, _080AC1C4 @ =gUnk_0812A982
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	ldr r1, _080AC1C8 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC1D0
	ldr r0, _080AC1CC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r6, [r4, #0xb]
	b _080AC1F2
	.align 2, 0
_080AC1C0: .4byte 0xFFFF8000
_080AC1C4: .4byte gUnk_0812A982
_080AC1C8: .4byte gPlayerEntity
_080AC1CC: .4byte gUnk_0812A98A
_080AC1D0:
	cmp r0, #2
	bne _080AC1E4
	ldr r0, _080AC1E0 @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	movs r0, #1
	b _080AC1F0
	.align 2, 0
_080AC1E0: .4byte gUnk_0812A98A
_080AC1E4:
	ldr r0, _080AC1FC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r0, #2
_080AC1F0:
	strb r0, [r4, #0xb]
_080AC1F2:
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080AC1F8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AC1FC: .4byte gUnk_0812A98A
	.syntax divided
