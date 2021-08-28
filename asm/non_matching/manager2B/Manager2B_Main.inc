	.syntax unified
	push {lr}
	ldr r2, _0805D028 @ =gUnk_08108D30
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D028: .4byte gUnk_08108D30
	.syntax divided
