	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0801B804
	ldr r1, _0801B5F8 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0801B5A8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _0801B5A8
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	ldr r0, _0801B5FC @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _0801B5B8
_0801B5A8:
	ldr r1, _0801B5F8 @ =gPlayerState
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	movs r0, #0
	str r0, [r1, #0x2c]
_0801B5B4:
	bl DeleteThisEntity
_0801B5B8:
	ldr r7, _0801B5FC @ =gPlayerEntity
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B600
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0xc
	bne _0801B5D8
	movs r2, #6
_0801B5D8:
	lsrs r0, r1, #4
	adds r1, r0, r2
	ldrb r0, [r6, #0x1e]
	cmp r0, r1
	beq _0801B5EE
	strb r1, [r6, #0x1e]
	ldrb r1, [r6, #0x1e]
	ldrh r2, [r6, #0x12]
	adds r0, r6, #0
	bl sub_080042D0
_0801B5EE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08078E84
	b _0801B674
	.align 2, 0
_0801B5F8: .4byte gPlayerState
_0801B5FC: .4byte gPlayerEntity
_0801B600:
	movs r5, #0
	movs r0, #2
	strb r0, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0xd5
	strh r0, [r1]
	ldrb r0, [r6, #0x10]
	movs r4, #0x80
	orrs r0, r4
	strb r0, [r6, #0x10]
	subs r1, #0x24
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x3b
	strb r0, [r2]
	movs r0, #0xa6
	strh r0, [r6, #0x12]
	ldrb r1, [r6, #0x18]
	subs r0, #0xe7
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r6, #0x18]
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ldr r2, _0801B678 @ =gUnk_080B7826
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	adds r1, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _0801B67C @ =gPlayerState
	str r5, [r0, #0x2c]
	ldrb r1, [r0, #4]
	orrs r4, r1
	strb r4, [r0, #4]
_0801B674:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801B678: .4byte gUnk_080B7826
_0801B67C: .4byte gPlayerState
	.syntax divided
