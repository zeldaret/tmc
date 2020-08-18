
	.syntax unified

	.text

	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x78
	ldrb r0, [r2]
	cmp r0, #0
	beq _08032316
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032334
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _08032334
_08032316:
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08032334
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq _08032334
	movs r0, #6
	strb r0, [r2]
_08032334:
	pop {pc}
	.align 2, 0
    .syntax divided
