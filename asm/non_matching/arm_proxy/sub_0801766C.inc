    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017682
_0801767E:
	movs r0, #1
	b _080176DE
_08017682:
	ldr r2, _080176C0 @ =gUnk_03003C70
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	cmp r1, r2
	bls _080176DC
_0801768E:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _080176D6
	str r4, [r2, #8]
	strb r0, [r2, #0xc]
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _080176C4 @ =gUnk_02018EA0
	ldr r1, [r3]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _080176C8
_080176AA:
	ldr r1, [r1, #4]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080176AA
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r0, #4]
	str r2, [r1]
	b _0801767E
	.align 2, 0
_080176C0: .4byte gUnk_03003C70
_080176C4: .4byte gUnk_02018EA0
_080176C8:
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r0, #4]
	str r2, [r1]
	str r2, [r3]
	b _0801767E
_080176D6:
	adds r2, #0x10
	cmp r1, r2
	bhi _0801768E
_080176DC:
	movs r0, #0
_080176DE:
	pop {r4}
	pop {r1}
	bx r1
    .syntax divided
