
    .syntax unified
	push {r4, lr}
	adds r1, r0, #0
	adds r3, r1, #0
	adds r3, #0x7d
	ldrb r2, [r3]
	movs r0, #0x60
	ands r0, r2
	cmp r0, #0x40
	beq _08034A52
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08034A56
	adds r4, r1, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08034A3E
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r3]
_08034A3E:
	ldrb r1, [r4]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08034A7E
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _08034A7E
_08034A52:
	movs r0, #1
	b _08034A80
_08034A56:
	adds r4, r1, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08034A6A
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r3]
_08034A6A:
	ldrb r1, [r4]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08034A7E
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	beq _08034A52
_08034A7E:
	movs r0, #0
_08034A80:
	pop {r4, pc}
	.align 2, 0
    .syntax divided
