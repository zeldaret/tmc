	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080AB180
	bl DeleteThisEntity
_080AB180:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AB1AA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r4, #0x1e]
	ldrb r1, [r2]
	subs r0, #0xd
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AB1C8 @ =gUnk_080FD460
	str r0, [r4, #0x48]
_080AB1AA:
	ldr r5, [r6, #0x50]
	adds r0, r4, #0
	adds r0, #0x7c
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r1, [r0]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	beq _080AB1CC
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _080AB1D2
	.align 2, 0
_080AB1C8: .4byte gUnk_080FD460
_080AB1CC:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_080AB1D2:
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AB208
	movs r0, #0x1f
	ands r0, r1
	ldr r1, _080AB204 @ =gUnk_0812A4A8
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA90
	b _080AB216
	.align 2, 0
_080AB204: .4byte gUnk_0812A4A8
_080AB208:
	movs r3, #0xa
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
_080AB216:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrb r2, [r4, #0xa]
	muls r0, r2, r0
	adds r3, r2, #0
	cmp r0, #0
	bge _080AB22C
	adds r0, #3
_080AB22C:
	asrs r0, r0, #2
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r3, r0
	cmp r0, #0
	bge _080AB246
	adds r0, #3
_080AB246:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r3, #0x36
	ldrsh r0, [r6, r3]
	movs r5, #0x36
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r2, r0
	cmp r0, #0
	bge _080AB260
	adds r0, #3
_080AB260:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
