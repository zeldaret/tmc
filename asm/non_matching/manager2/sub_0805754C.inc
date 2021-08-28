	.syntax unified
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _080575BC @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #3
	adds r1, r1, r0
	ldr r4, _080575C0 @ =gScreen
	movs r6, #0x3f
	adds r0, r1, #0
	ands r0, r6
	strh r0, [r4, #0x30]
	adds r0, r1, #0
	cmp r1, #0
	bge _08057570
	adds r0, #0x3f
_08057570:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r5, _080575C4 @ =gMapDataTopSpecial
	adds r1, r0, r5
	str r1, [r4, #0x34]
	ldr r0, [r2, #0x38]
	cmp r0, r1
	beq _08057586
	str r1, [r2, #0x38]
	movs r0, #1
	strh r0, [r4, #0x32]
_08057586:
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	ands r0, r6
	strh r0, [r4, #0x18]
	adds r0, r1, #0
	cmp r0, #0
	bge _080575A0
	adds r0, #0x3f
_080575A0:
	asrs r0, r0, #6
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r5, r3
	adds r1, r0, r1
	str r1, [r4, #0x1c]
	ldr r0, [r2, #0x3c]
	cmp r0, r1
	beq _080575BA
	str r1, [r2, #0x3c]
	movs r0, #1
	strh r0, [r4, #0x1a]
_080575BA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080575BC: .4byte gRoomControls
_080575C0: .4byte gScreen
_080575C4: .4byte gMapDataTopSpecial
	.syntax divided
