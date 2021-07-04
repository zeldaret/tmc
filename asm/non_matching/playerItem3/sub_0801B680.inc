	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0801B804
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B6DC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B6DC
	ldr r3, _0801B6C4 @ =gPlayerState
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801B6DC
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #0x10
	ble _0801B6C8
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, #0x40
	b _0801B6D0
	.align 2, 0
_0801B6C4: .4byte gPlayerState
_0801B6C8:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #0x40
_0801B6D0:
	strh r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	strb r0, [r4, #0x15]
_0801B6DC:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r5, #0
	adds r0, r4, #0
	bl sub_0801B864
	cmp r0, #0
	beq _0801B6FE
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #0xc
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0801B6FE:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801B780 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0801B784 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _0801B73C
	cmp r5, #0
	bne _0801B790
	ldr r1, _0801B788 @ =gUnk_08003E44
	adds r0, r4, #0
	bl sub_080040E2
	adds r5, r0, #0
_0801B73C:
	cmp r5, #0
	bne _0801B790
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0801B754
	ldrh r0, [r4, #0x24]
	subs r0, #0x10
	strh r0, [r4, #0x24]
_0801B754:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0801B75C
	movs r5, #1
_0801B75C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B76C
	movs r5, #1
_0801B76C:
	cmp r5, #0
	beq _0801B7A4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B78C
	movs r0, #0x1e
	b _0801B792
	.align 2, 0
_0801B780: .4byte gRoomControls
_0801B784: .4byte gPlayerEntity
_0801B788: .4byte gUnk_08003E44
_0801B78C:
	movs r0, #0xc
	b _0801B792
_0801B790:
	movs r0, #1
_0801B792:
	strb r0, [r4, #0xe]
	cmp r5, #0
	beq _0801B7A4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0801B7A4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
