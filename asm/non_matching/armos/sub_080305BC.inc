	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0
	cmp r0, #8
	bne _080305D0
	movs r3, #1
_080305D0:
	ldrh r0, [r4, #0x32]
	ands r2, r0
	cmp r2, #8
	bne _080305DC
	movs r0, #2
	orrs r3, r0
_080305DC:
	cmp r3, #3
	bne _080305E4
	movs r0, #1
	b _0803064C
_080305E4:
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803061E
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08030608
	adds r0, r4, #0
	bl ProcessMovement
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030608:
	cmp r2, #8
	ble _08030610
	movs r0, #0x10
	b _08030612
_08030610:
	movs r0, #0
_08030612:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803064A
_0803061E:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08030638
	adds r0, r4, #0
	bl ProcessMovement
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030638:
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	ble _08030646
	movs r0, #8
	b _08030648
_08030646:
	movs r0, #0x18
_08030648:
	strb r0, [r4, #0x15]
_0803064A:
	movs r0, #0
_0803064C:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
