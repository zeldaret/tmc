	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _0807A518 @ =gPlayerEntity
	ldrb r0, [r6, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _0807A574
	cmp r0, #1
	bgt _0807A51C
	cmp r0, #0
	beq _0807A526
	b _0807A5B4
	.align 2, 0
_0807A518: .4byte gPlayerEntity
_0807A51C:
	cmp r0, #2
	beq _0807A554
	cmp r0, #3
	beq _0807A580
	b _0807A5B4
_0807A526:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r5, _0807A550 @ =gRoomControls
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r4, #0x3f
	ands r0, r4
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r3, [r6, #0x48]
	ldrb r2, [r3, #5]
	subs r1, r1, r2
	movs r2, #1
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	b _0807A5AA
	.align 2, 0
_0807A550: .4byte gRoomControls
_0807A554:
	movs r5, #0x2e
	ldrsh r0, [r6, r5]
	ldr r4, _0807A570 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	ldr r2, [r6, #0x48]
	movs r5, #0x32
	ldrsh r1, [r6, r5]
	ldrb r5, [r2, #5]
	adds r1, r1, r5
	b _0807A59A
	.align 2, 0
_0807A570: .4byte gRoomControls
_0807A574:
	ldr r2, [r6, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldrb r5, [r2, #2]
	adds r0, r0, r5
	b _0807A58A
_0807A580:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x48]
	ldrb r1, [r2, #2]
	subs r0, r0, r1
_0807A58A:
	ldr r4, _0807A5B0 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r6, r5]
_0807A59A:
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
_0807A5AA:
	lsls r1, r1, #6
	orrs r0, r1
	b _0807A5B6
	.align 2, 0
_0807A5B0: .4byte gRoomControls
_0807A5B4:
	movs r0, #0
_0807A5B6:
	pop {r4, r5, r6, pc}
	.syntax divided
