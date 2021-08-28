	.syntax unified
	push {lr}
	ldr r2, _0805BC88 @ =gUnk_08108CCC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805BC88: .4byte gUnk_08108CCC
	.syntax divided
