	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D118
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	adds r0, r4, #0
	bl DeleteManager
_0805D118:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
