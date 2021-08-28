	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080593CC
	cmp r0, #0
	beq _080593C8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080593CA
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	ldr r2, _080593C4 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r3, #0x3a
	ldrsh r1, [r4, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0xff
	movs r3, #0xa
	bl sub_080806BC
	b _080593CA
	.align 2, 0
_080593C4: .4byte gRoomControls
_080593C8:
	strb r0, [r4, #0xe]
_080593CA:
	pop {r4, pc}
	.syntax divided
