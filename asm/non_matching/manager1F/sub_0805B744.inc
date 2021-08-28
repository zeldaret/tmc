	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B766
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805B774
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0805B778
	b _0805B774
_0805B766:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0805B774
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0805B778
_0805B774:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
