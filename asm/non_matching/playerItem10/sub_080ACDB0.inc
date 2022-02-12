	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080ACDE8
	ldr r2, _080ACDE0 @ =gPlayerEntity
	ldr r1, _080ACDE4 @ =gUnk_08126EE4
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r2, #0x32]
	adds r0, r0, r2
	b _080ACEB4
	.align 2, 0
_080ACDE0: .4byte gPlayerEntity
_080ACDE4: .4byte gUnk_08126EE4
_080ACDE8:
	ldrb r2, [r4, #0x14]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080ACE48
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x32]
	subs r1, #3
	strh r1, [r4, #0x32]
	movs r1, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _080ACE20
	movs r0, #0x2e
	ldrsh r7, [r3, r0]
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	ldr r1, _080ACE1C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
	b _080ACE30
	.align 2, 0
_080ACE1C: .4byte gUnk_0812AAE8
_080ACE20:
	movs r0, #0x2e
	ldrsh r6, [r3, r0]
	movs r0, #0x2e
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE44 @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
_080ACE30:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bhi _080ACE90
	ldrh r0, [r3, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	b _080ACEB6
	.align 2, 0
_080ACE44: .4byte gUnk_0812AAE8
_080ACE48:
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	movs r0, #4
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080ACE70
	movs r0, #0x32
	ldrsh r6, [r3, r0]
	movs r0, #0x32
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE6C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
	b _080ACE84
	.align 2, 0
_080ACE6C: .4byte gUnk_0812AAE8
_080ACE70:
	movs r0, #0x32
	ldrsh r7, [r3, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	ldr r1, _080ACEAC @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
_080ACE84:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bls _080ACEB0
_080ACE90:
	subs r0, r0, r1
	lsls r1, r0, #8
	strh r1, [r4, #0x24]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080ACEA4
	strh r1, [r4, #0x24]
_080ACEA4:
	adds r0, r4, #0
	bl ProcessMovement1
	b _080ACEB6
	.align 2, 0
_080ACEAC: .4byte gUnk_0812AAE8
_080ACEB0:
	ldrh r0, [r3, #0x32]
	adds r0, r0, r5
_080ACEB4:
	strh r0, [r4, #0x32]
_080ACEB6:
	ldr r0, _080ACEC8 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080ACEC8: .4byte gPlayerEntity
	.syntax divided
