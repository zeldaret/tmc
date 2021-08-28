	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrh r1, [r5, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r0, [r5, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r5, #0x38]
	ldrh r2, [r5, #0x3c]
	lsrs r2, r2, #4
	ands r2, r3
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	strh r2, [r5, #0x3a]
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	adds r4, r5, #0
	adds r4, #0x34
	ldrb r1, [r4]
	bl GetTileType
	strh r0, [r5, #0x3c]
	ldrb r0, [r4]
	bl GetLayerByIndex
	ldr r2, _0805CC38 @ =0x00005004
	adds r1, r0, r2
	str r1, [r5, #0x28]
	movs r2, #0x3a
	ldrsh r1, [r5, r2]
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	pop {r4, r5, pc}
	.align 2, 0
_0805CC38: .4byte 0x00005004
	.syntax divided
