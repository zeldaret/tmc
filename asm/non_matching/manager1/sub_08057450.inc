	.syntax unified
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r4, _08057504 @ =gScreen
	movs r0, #0x10
	strh r0, [r4, #0x2e]
	ldr r0, _08057508 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	asrs r1, r1, #2
	movs r2, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x30]
	cmp r1, #0
	bge _08057474
	adds r1, #0x3f
_08057474:
	asrs r0, r1, #6
	lsls r0, r0, #9
	ldr r1, _0805750C @ =gBG3Buffer
	adds r1, r0, r1
	str r1, [r4, #0x34]
	ldr r0, [r3, #0x34]
	cmp r0, r1
	beq _0805748A
	str r1, [r3, #0x34]
	movs r0, #1
	strh r0, [r4, #0x32]
_0805748A:
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	ldr r5, _08057510 @ =gScreenTransition
	cmp r0, #0
	bne _080574BE
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080574BE
	adds r2, r3, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08057514 @ =gUnk_08107C30
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_080574BE:
	ldr r0, [r5]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08057502
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08057518 @ =gUnk_085B4180
	adds r1, r1, r2
	movs r5, #0
	adds r6, r0, #0
	adds r4, r1, #0
	adds r4, #0xe
_080574DC:
	adds r0, r5, #0
	adds r0, #0x87
	ldrh r1, [r4]
	bl sub_0801D79C
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r1, [r4, #0xa]
	bl sub_0801D79C
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	bls _080574DC
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r6]
_08057502:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057504: .4byte gScreen
_08057508: .4byte gRoomControls
_0805750C: .4byte gBG3Buffer
_08057510: .4byte gScreenTransition
_08057514: .4byte gUnk_08107C30
_08057518: .4byte gUnk_085B4180
	.syntax divided
