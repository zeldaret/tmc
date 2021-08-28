	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D382
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
_0805D382:
	pop {r4, pc}
	.syntax divided
