
    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034B58
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
	b _08034B9A
_08034B58:
	movs r0, #0xe
	bl CreateProjectile
	adds r5, r0, #0
	cmp r5, #0
	beq _08034B9A
	ldrb r0, [r4, #0xa]
	subs r0, #2
	strb r0, [r5, #0xa]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034B78
	ldrb r1, [r4, #0xe]
	movs r0, #0xa8
	subs r0, r0, r1
	b _08034B7C
_08034B78:
	ldrb r0, [r4, #0xe]
	adds r0, #0x58
_08034B7C:
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	ldr r1, _08034B9C @ =gUnk_080CED84
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_08034B9A:
	pop {r4, r5, pc}
	.align 2, 0
_08034B9C: .4byte gUnk_080CED84
    .syntax divided
