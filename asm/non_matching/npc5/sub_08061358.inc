	.syntax unified
	.text

	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xd]
	cmp r5, #1
	beq _0806139C
	cmp r5, #1
	bgt _0806136C
	cmp r5, #0
	beq _08061376
	b _08061460
_0806136C:
	cmp r5, #2
	beq _080613D0
	cmp r5, #3
	beq _0806141E
	b _08061460
_08061376:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08061460
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08060E70
	b _08061460
_0806139C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061460
	bl Random
	adds r6, r0, #0
	ands r5, r6
	cmp r5, #0
	beq _080613FA
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r3, _080613CC @ =gUnk_0810AC5D
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	lsrs r1, r6, #4
	movs r2, #3
	ands r1, r2
	adds r0, r0, r1
	adds r0, r0, r3
	b _0806143A
	.align 2, 0
_080613CC: .4byte gUnk_0810AC5D
_080613D0:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08061460
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	bl Random
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08061412
_080613FA:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x18
	ands r6, r0
	adds r0, r6, #0
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08060E70
	b _08061460
_08061412:
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08060E70
	b _08061460
_0806141E:
	adds r0, r4, #0
	bl sub_08061170
	cmp r0, #0
	bne _08061448
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r2, _08061444 @ =gUnk_0810AC5D
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	lsrs r1, r6, #4
	ands r1, r5
	adds r0, r0, r1
	adds r0, r0, r2
_0806143A:
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _08061460
	.align 2, 0
_08061444: .4byte gUnk_0810AC5D
_08061448:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08061460
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08060E70
_08061460:
	pop {r4, r5, r6, pc}
	.align 2, 0

	.syntax divided
