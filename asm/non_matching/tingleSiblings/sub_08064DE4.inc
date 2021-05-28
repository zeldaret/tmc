	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08064E1A
	cmp r0, #1
	bgt _08064DF8
	cmp r0, #0
	beq _08064DFE
	b _08064E6A
_08064DF8:
	cmp r0, #2
	beq _08064E56
	b _08064E6A
_08064DFE:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0807DD50
	b _08064E6A
_08064E1A:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08064E4C
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _08064E48 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
	b _08064E6A
	.align 2, 0
_08064E48: .4byte gPlayerEntity
_08064E4C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _08064E6A
_08064E56:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08064E6A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
_08064E6A:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #0xf
	ands r5, r1
	adds r0, r5, #0
	eors r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08064EA0
	movs r1, #0x29
	cmp r5, #3
	bne _08064E86
	movs r1, #0x2a
_08064E86:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08064EA0
	cmp r5, #2
	bne _08064EA0
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x18]
_08064EA0:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
