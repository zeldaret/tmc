	.syntax unified
	push {lr}
	ldr r2, _0805DFFC @ =gUnk_08108DD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DFFC: .4byte gUnk_08108DD8
	.syntax divided