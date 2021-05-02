
    .syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _080347D8 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	ldr r0, _080347DC @ =gRoomControls
	ldrh r4, [r0, #6]
	subs r0, r3, #4
	movs r5, #0x2e
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bls _080347E0
	adds r0, r4, #0
	adds r0, #0xe0
	cmp r0, r1
	blo _080347F8
	movs r0, #8
	b _080347F0
	.align 2, 0
_080347D8: .4byte gPlayerEntity
_080347DC: .4byte gRoomControls
_080347E0:
	adds r0, r3, #4
	cmp r0, r1
	bhs _080347F8
	adds r0, r4, #0
	adds r0, #0x90
	cmp r0, r1
	bhi _080347F8
	movs r0, #0x18
_080347F0:
	strb r0, [r2, #0x15]
	adds r0, r2, #0
	bl sub_0806F69C
_080347F8:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
