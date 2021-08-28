	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805DCAE
	bl DeleteThisEntity
_0805DCAE:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805DCC2
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_0805DCC2:
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}
	.syntax divided
