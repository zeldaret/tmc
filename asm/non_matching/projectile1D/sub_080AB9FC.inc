	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	movs r1, #0x2e
	ldrsh r3, [r5, r1]
	ldr r2, _080ABA4C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r3, r3, r1
	asrs r3, r3, #4
	movs r6, #0x3f
	ands r3, r6
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r3, r1
	ldr r1, _080ABA50 @ =gUnk_080B4488
	lsrs r4, r4, #3
	lsls r4, r4, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r3, r3, r1
	ldr r7, _080ABA54 @ =0x00002004
	adds r0, r0, r7
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x1f
	bls _080ABA58
	cmp r0, #0x3f
	bhi _080ABA58
	movs r0, #1
	b _080ABA5A
	.align 2, 0
_080ABA4C: .4byte gRoomControls
_080ABA50: .4byte gUnk_080B4488
_080ABA54: .4byte 0x00002004
_080ABA58:
	movs r0, #0
_080ABA5A:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
