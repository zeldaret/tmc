	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl EntityHasDuplicateID
	cmp r0, #0
	beq _0805B3C4
	bl DeleteThisEntity
_0805B3C4:
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	ldr r1, _0805B438 @ =gUnk_08108C28
	adds r5, r0, r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805B41E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0805B3F6
	ldr r1, _0805B43C @ =sub_0805B4B4
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_0805B3F6:
	ldr r0, _0805B440 @ =gRoomControls
	ldrh r1, [r0, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r1, r0, r1
	cmp r1, #0
	bge _0805B406
	movs r1, #0
_0805B406:
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	str r0, [r4, #0x20]
	ldr r1, _0805B444 @ =gUnk_08108C54
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0805B41E:
	ldr r0, _0805B440 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805B436
	ldr r0, _0805B444 @ =gUnk_08108C54
	ldrb r1, [r5, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805B436:
	pop {r4, r5, pc}
	.align 2, 0
_0805B438: .4byte gUnk_08108C28
_0805B43C: .4byte sub_0805B4B4
_0805B440: .4byte gRoomControls
_0805B444: .4byte gUnk_08108C54
	.syntax divided
