	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805D292
	bl DeleteThisEntity
_0805D292:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D2A6
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_0805D2A6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0805D2B4
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805D2B4:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0
	.syntax divided
