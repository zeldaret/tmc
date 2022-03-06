	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r3, _080774FC @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r5, _08077500 @ =gUnk_0811BE1E
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r4, _08077504 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	asrs r6, r2, #4
	movs r2, #0x3f
	ands r6, r2
	movs r7, #0x32
	ldrsh r0, [r3, r7]
	adds r1, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r6, r0
	adds r4, r3, #0
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_080B1B44
	cmp r0, #0x16
	bhi _080774F6
	cmp r0, #0xe
	bhi _08077508
_080774F6:
	movs r0, #0
	b _0807751A
	.align 2, 0
_080774FC: .4byte gPlayerEntity
_08077500: .4byte gUnk_0811BE1E
_08077504: .4byte gRoomControls
_08077508:
	adds r0, r6, #0
	ldrb r1, [r4]
	bl sub_080B1AE0
	cmp r0, #0x56
	bne _08077518
	movs r0, #0x56
	b _0807751A
_08077518:
	movs r0, #1
_0807751A:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
