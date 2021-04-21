
    .syntax unified

    .text

	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r3, r0, #0x18
	lsrs r4, r3, #0x18
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r4, r1
	blo _080B0B0C
	lsrs r0, r3, #0x19
	cmp r0, r1
	blo _080B0B18
	movs r0, #0xf
	strb r0, [r2, #0x1b]
	b _080B0B26
_080B0B0C:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080B0B18
	movs r0, #0xf0
	strb r0, [r2, #0x1b]
	b _080B0B26
_080B0B18:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	b _080B0B36
_080B0B26:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	strb r0, [r2, #0xa]
	cmp r0, #0xf
	bls _080B0B38
	movs r0, #0xf
_080B0B36:
	strb r0, [r2, #0xa]
_080B0B38:
	ldrb r1, [r2, #0xa]
	ldrb r0, [r2, #6]
	muls r0, r1, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r2, #0x19]
	ldrb r1, [r2, #0x1b]
	ldrb r0, [r2, #0x1c]
	ands r0, r1
	strb r0, [r2, #0x1b]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .syntax divided
