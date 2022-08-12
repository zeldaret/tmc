	.syntax unified
	push {r4, r5, r6, lr}
	ldr r5, _08079344 @ =gPlayerEntity
	adds r3, r5, #0
	adds r3, #0x42
	ldrb r0, [r3]
	cmp r0, #0
	beq _080793E0
	ldrb r2, [r5, #0xc]
	cmp r2, #0xb
	beq _08079338
	ldr r0, _08079348 @ =gPlayerState
	ldrb r1, [r0, #0x1e]
	adds r6, r0, #0
	cmp r1, #0
	bne _08079338
	ldrb r0, [r6, #5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08079338
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08079338
	ldrb r0, [r6, #0x12]
	cmp r0, #0xff
	beq _08079338
	ldrb r1, [r6, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079338
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	cmp r0, #0
	bgt _08079338
	cmp r2, #3
	beq _08079338
	ldr r1, [r6, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _0807934C
_08079338:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _080793E0
	.align 2, 0
_08079344: .4byte gPlayerEntity
_08079348: .4byte gPlayerState
_0807934C:
	cmp r2, #0x1d
	bne _0807935E
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0807935E
	strb r1, [r3]
	b _080793E0
_0807935E:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0
	ble _08079372
	subs r0, r3, #1
	b _08079374
_08079372:
	adds r0, r3, #1
_08079374:
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080793E0
	adds r4, r6, #0
	ldrb r0, [r4, #7]
	movs r1, #0xdf
	ands r1, r0
	strb r1, [r4, #7]
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080793CA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080793CA
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080793CA
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _080793CA
	bl ResetActiveItems
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080793C4
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r4, #8]
	b _080793CA
_080793C4:
	movs r0, #0x83
	lsls r0, r0, #3
	strh r0, [r6, #8]
_080793CA:
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r5, #0
	adds r4, #0x3e
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_080027EA
	ldrb r0, [r4]
	bl sub_0807A5B8
_080793E0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
