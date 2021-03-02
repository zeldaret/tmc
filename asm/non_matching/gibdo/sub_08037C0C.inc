

	.syntax unified

	.text


	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C1E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C1E:
	adds r0, r3, #0
	adds r0, #0x84
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C2E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C2E:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08037C3A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C3A:
	pop {pc}

    .syntax divided
