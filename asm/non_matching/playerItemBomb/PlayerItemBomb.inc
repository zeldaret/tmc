	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801B1E0 @ =gUnk_080B77C8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r2, [r4, #0xc]
	cmp r2, #3
	beq _0801B24E
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0801B1E4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B1BC
	subs r0, r1, #1
	strb r0, [r4, #0xe]
_0801B1BC:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _0801B24E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	str r1, [r4, #0x68]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0801B24E
	.align 2, 0
_0801B1E0: .4byte gUnk_080B77C8
_0801B1E4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801B24E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0801B248
	cmp r2, #2
	bne _0801B204
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0801B204
	ldr r0, _0801B244 @ =gPlayerState
	strb r1, [r0, #5]
_0801B204:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3c
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0805EC60
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r0, r4, #0
	bl sub_0801B418
	b _0801B24E
	.align 2, 0
_0801B244: .4byte gPlayerState
_0801B248:
	adds r0, r4, #0
	bl sub_0801B3A4
_0801B24E:
	pop {r4, pc}
	.syntax divided
