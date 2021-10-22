	.syntax unified
	.text

	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08061B54
	cmp r0, #1
	bne _08061B54
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08061AFC
	ldr r2, [r4, #0x68]
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r2, r2, r0
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08061B4C
	strb r0, [r4, #0xe]
_08061B4C:
	ldrh r0, [r2]
	adds r1, r4, #0
	bl TextboxNoOverlap
_08061B54:
	pop {r4, pc}
	.align 2, 0

	.syntax divided
