	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080304DE
	adds r0, r4, #0
	bl sub_08030580
	b _080304F0
_080304DE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080304F0
	strb r2, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl EnqueueSFX
_080304F0:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
