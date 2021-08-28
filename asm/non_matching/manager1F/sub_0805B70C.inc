	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B71E
	movs r0, #1
	strb r0, [r4, #0xb]
_0805B71E:
	movs r0, #1
	strb r0, [r4, #0xc]
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
	strh r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_0805B778
	pop {r4, pc}
	.align 2, 0
	.syntax divided
