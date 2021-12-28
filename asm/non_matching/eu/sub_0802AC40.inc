.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl LinearMoveUpdate
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802AC26
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	bne _0802AC44
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	b _0802AC42
_0802AC26:
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802AC44
	movs r0, #1
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
_0802AC42:
	strb r0, [r2]
_0802AC44:
	pop {r4, r5, pc}
	.align 2, 0
.syntax divided
