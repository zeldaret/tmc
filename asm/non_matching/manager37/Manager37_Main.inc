	.syntax unified
	push {lr}
	ldr r2, _0805DE4C @ =gUnk_08108DBC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DE4C: .4byte gUnk_08108DBC
	.syntax divided