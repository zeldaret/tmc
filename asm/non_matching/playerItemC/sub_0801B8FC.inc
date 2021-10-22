	.syntax unified
	push {lr}
	ldr r1, _0801B90C @ =gPlayerState
	ldr r2, [r1, #0x2c]
	cmp r2, r0
	beq _0801B910
	bl DeleteThisEntity
	b _0801B934
	.align 2, 0
_0801B90C: .4byte gPlayerState
_0801B910:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801B91E
	str r0, [r1, #0x2c]
	bl DeleteThisEntity
	b _0801B934
_0801B91E:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0x21
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0801B938
_0801B934:
	pop {pc}
	.align 2, 0
	.syntax divided
