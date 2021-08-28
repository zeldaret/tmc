	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
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
	ldrb r2, [r4, #0xb]
	movs r0, #0x76
	bl SetTileType
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	bl DeleteThisEntity
	pop {r4, pc}
	.align 2, 0
	.syntax divided
