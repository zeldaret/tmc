	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r1, #0x3a]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	bl SetDirtTile
	pop {pc}
	.syntax divided
