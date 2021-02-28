    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08017550
	ldr r0, _080175D8 @ =gUnk_020342F8
	subs r1, #1
	bl ReadBit
	cmp r0, #0
	bne _08017550
	bl DeleteThisEntity
_08017550:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08017566
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08017566
	adds r0, r4, #0
	bl sub_0806EC78
_08017566:
	adds r0, r4, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08017584
	ldr r2, _080175DC @ =gNPCFunctions
	ldrb r1, [r4, #9]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08017584:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080175D2
	ldr r2, _080175DC @ =gNPCFunctions
	ldrb r1, [r4, #9]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _080175A4
	adds r0, r4, #0
	bl _call_via_r1
_080175A4:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080175CC
	ldr r2, _080175E0 @ =gUnk_02031EC0
	lsls r0, r1, #4
	subs r0, #0x10
	adds r2, r0, r2
	ldr r3, _080175E4 @ =gRoomControls
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	strh r0, [r2, #6]
_080175CC:
	adds r0, r4, #0
	bl DrawEntity
_080175D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080175D8: .4byte gUnk_020342F8
_080175DC: .4byte gNPCFunctions
_080175E0: .4byte gUnk_02031EC0
_080175E4: .4byte gRoomControls
    .syntax divided