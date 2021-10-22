	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #0xf
	ands r5, r1
	adds r0, r5, #0
	eors r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08064F26
	movs r1, #0x2a
	cmp r5, #3
	beq _08064F0C
	movs r1, #0x29
_08064F0C:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08064F26
	cmp r5, #2
	bne _08064F26
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x18]
_08064F26:
	pop {r4, r5, pc}
	.syntax divided
