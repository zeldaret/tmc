	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805BD94
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD76
	adds r0, r4, #0
	bl sub_0805BE94
_0805BD76:
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x20]
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805BDB0
_0805BD94:
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl GetTileType
	cmp r0, #0x76
	bne _0805BDB0
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	bl DeleteThisEntity
_0805BDB0:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
