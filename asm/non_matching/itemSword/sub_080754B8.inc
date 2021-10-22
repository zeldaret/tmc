	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, _080754D4 @ =gPlayerState
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080754D8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
	b _0807557E
	.align 2, 0
_080754D4: .4byte gPlayerState
_080754D8:
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _08075576
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080754F2
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
_080754F2:
	ldr r0, _0807552C @ =gPlayerEntity
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075538
	bl sub_0807B014
	adds r5, r0, #0
	cmp r5, #0
	beq _08075538
	movs r0, #8
	movs r1, #0xf
	movs r2, #2
	bl FindEntityByID
	cmp r0, #0
	bne _08075538
	adds r0, r4, #0
	movs r1, #0xf
	bl CreatePlayerBomb
	cmp r5, #0xf
	bne _08075530
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #5
	b _08075536
	.align 2, 0
_0807552C: .4byte gPlayerEntity
_08075530:
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #8
_08075536:
	strb r0, [r1]
_08075538:
	ldrb r1, [r4, #0xe]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807557E
	ldr r1, _08075568 @ =gPlayerState
	ldr r0, [r1, #0x30]
	ands r0, r2
	cmp r0, #0
	bne _0807555C
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807556C
_0807555C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807557E
	.align 2, 0
_08075568: .4byte gPlayerState
_0807556C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075580
	b _0807557E
_08075576:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807557E:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
