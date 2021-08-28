	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805DBB0 @ =gUnk_08108D8C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805DBF0
	pop {r4, pc}
	.align 2, 0
_0805DBB0: .4byte gUnk_08108D8C
	.syntax divided
