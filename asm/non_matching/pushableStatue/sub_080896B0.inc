	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r0, _08089750 @ =gPlayerState
	ldrb r1, [r0, #5]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x12
	bne _08089768
	ldr r6, _08089754 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08089768
	ldrb r3, [r6, #0x14]
	movs r2, #6
	ands r2, r3
	lsls r2, r2, #1
	ldr r0, _08089758 @ =gUnk_080B4468
	adds r2, r2, r0
	ldr r0, _0808975C @ =gUnk_080B4488
	lsrs r3, r3, #1
	lsls r3, r3, #1
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	ldr r5, _08089760 @ =gRoomControls
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	movs r7, #2
	ldrsh r2, [r2, r7]
	adds r0, r0, r2
	ldrh r2, [r5, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0
	ldrsh r7, [r3, r0]
	subs r1, r1, r7
	lsls r4, r1, #0x10
	lsrs r0, r4, #0x10
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080B1AE0
	adds r1, r0, #0
	subs r0, #0x26
	cmp r0, #1
	bls _08089768
	cmp r1, #0x29
	beq _08089768
	ldrb r0, [r5]
	bl GetLayerByIndex
	asrs r1, r4, #0x10
	ldr r2, _08089764 @ =0x00002004
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r2, [r2]
	subs r1, r1, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, #0
	bne _08089768
	cmp r0, #0
	bne _08089768
	movs r0, #1
	b _0808976A
	.align 2, 0
_08089750: .4byte gPlayerState
_08089754: .4byte gPlayerEntity
_08089758: .4byte gUnk_080B4468
_0808975C: .4byte gUnk_080B4488
_08089760: .4byte gRoomControls
_08089764: .4byte 0x00002004
_08089768:
	movs r0, #0
_0808976A:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
