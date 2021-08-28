	.syntax unified
	push {r4, lr}
	adds r4, r1, #0
	ldrh r1, [r0, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r0, #0x3a]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r0, #0xb]
	adds r0, r4, #0
	bl SetTileType
	pop {r4, pc}
	.syntax divided
