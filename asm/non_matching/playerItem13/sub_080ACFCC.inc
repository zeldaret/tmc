	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrb r2, [r1, #8]
	cmp r0, r2
	beq _080ACFE8
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r2, [r1, #9]
	cmp r0, r2
	bne _080AD034
_080ACFE8:
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	beq _080ACFF8
	bl sub_08079184
	bl DeleteThisEntity
	b _080AD03C
_080ACFF8:
	ldr r0, _080AD02C @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD00E
	ldr r0, _080AD030 @ =gPlayerEntity
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080AD03C
_080AD00E:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r2, [r4, #0x20]
	b _080AD03C
	.align 2, 0
_080AD02C: .4byte gPlayerState
_080AD030: .4byte gPlayerEntity
_080AD034:
	bl sub_08079184
	bl DeleteThisEntity
_080AD03C:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
