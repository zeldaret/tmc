
	.syntax unified

	.text


	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	adds r1, r0, #2
	movs r0, #0x1f
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _08024A12
	strb r1, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl InitializeAnimation
_08024A12:
	pop {pc}

	.syntax divided
