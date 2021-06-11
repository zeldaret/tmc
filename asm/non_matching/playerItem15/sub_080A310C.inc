	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A312A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A3200
	bl DeleteThisEntity
	b _080A3200
_080A312A:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A31FC
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A315C
	adds r0, r4, #0
	bl sub_0800451C
_080A315C:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A31F0 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A31F4 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080A31AE
	ldr r1, _080A31F8 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080A31AE
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31AE:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A31C6
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31C6:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _080A31D6
	bl DeleteThisEntity
_080A31D6:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r3, [r0]
	movs r0, #0x15
	movs r1, #1
	movs r2, #0
	bl CreatePlayerItem
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080A3200
	str r4, [r0, #0x50]
	b _080A3200
	.align 2, 0
_080A31F0: .4byte gRoomControls
_080A31F4: .4byte gPlayerEntity
_080A31F8: .4byte gUnk_08003E44
_080A31FC:
	bl DeleteThisEntity
_080A3200:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
