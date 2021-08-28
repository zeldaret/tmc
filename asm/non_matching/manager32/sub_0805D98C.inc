	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r3, _0805D9D4 @ =gInput
	ldrh r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805D9A2
	ldr r0, [r2, #0x20]
	subs r0, #1
	str r0, [r2, #0x20]
_0805D9A2:
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0805D9B4
	ldr r0, [r2, #0x20]
	adds r0, #1
	str r0, [r2, #0x20]
_0805D9B4:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0805D9C2
	ldr r0, [r2, #0x28]
	subs r0, #1
	str r0, [r2, #0x28]
_0805D9C2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805D9D0
	ldr r0, [r2, #0x28]
	adds r0, #1
	str r0, [r2, #0x28]
_0805D9D0:
	pop {pc}
	.align 2, 0
_0805D9D4: .4byte gInput
	.syntax divided
