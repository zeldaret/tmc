	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805E090 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E08E
	ldr r1, [r1, #0x18]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0805E08E:
	pop {pc}
	.align 2, 0
_0805E090: .4byte gFadeControl
	.syntax divided
