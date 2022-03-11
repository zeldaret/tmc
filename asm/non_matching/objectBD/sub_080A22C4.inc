	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080A22FC
	cmp r5, #1
	beq _080A231C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A233E
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	strb r0, [r4, #0x1e]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080A233E
	b _080A233A
_080A22FC:
	adds r0, r4, #0
	bl sub_080A2340
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	ldrb r0, [r4, #0x1e]
	strb r0, [r4, #0xd]
	bl Random
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #0x1e
	strh r0, [r4, #0x24]
	b _080A233E
_080A231C:
	ldrh r0, [r4, #0x24]
	subs r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A233E
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #0x1e
	strh r0, [r4, #0x24]
	movs r0, #2
	b _080A233C
_080A233A:
	movs r0, #1
_080A233C:
	strb r0, [r4, #0xc]
_080A233E:
	pop {r4, r5, pc}
	.syntax divided
