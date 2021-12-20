	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #0x14]
	ldrb r1, [r2, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806F9E6
	movs r0, #0x1c
	ands r0, r1
	lsrs r3, r0, #2
	movs r1, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F9C4
	subs r0, r3, r4
	adds r0, #1
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806F9E6
_0806F9C4:
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	movs r1, #0x7e
	ands r0, r1
	strb r0, [r2, #0x14]
	adds r4, r0, #0
	cmp r4, #4
	bhi _0806F9DE
	ldrb r1, [r2, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0806F9E4
_0806F9DE:
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0806F9E4:
	strb r0, [r2, #0x18]
_0806F9E6:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	.syntax divided
