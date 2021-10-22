
	.syntax unified

	.text


	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r5, [r4, #0x2e]
	ldrh r6, [r4, #0x32]
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _0802306C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08023052
	adds r0, r4, #0
	bl sub_0802390C
_08023052:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldr r1, _08023068 @ =gUnk_080CBC38
	adds r0, r4, #0
	bl EnemyFunctionHandler
	b _08023090
	.align 2, 0
_08023068: .4byte gUnk_080CBC38
_0802306C:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08023088
	cmp r1, #8
	beq _08023080
	adds r0, r4, #0
	bl sub_080235BC
	b _08023090
_08023080:
	adds r0, r4, #0
	bl sub_08023730
	b _08023090
_08023088:
	adds r0, r4, #0
	bl DeleteEntity
	b _080230CA
_08023090:
	ldr r0, [r4, #0x50]
	adds r2, r0, #0
	adds r2, #0x7c
	adds r0, #0x7d
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080230CA
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080230CA
	ldrb r2, [r2]
	subs r2, #1
	movs r0, #0xf
	ands r2, r0
	adds r2, #0x78
	adds r2, r1, r2
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	adds r1, #8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #4
	ldrh r0, [r4, #0x32]
	subs r0, r0, r6
	adds r0, #8
	ands r0, r3
	orrs r1, r0
	strb r1, [r2]
_080230CA:
	pop {r4, r5, r6, pc}

	.syntax divided
